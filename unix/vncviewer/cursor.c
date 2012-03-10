/*
 *  Copyright (C) 2012 D. R. Commander.  All Rights Reserved.
 *  Copyright (C) 2001,2002 Constantin Kaplinsky.  All Rights Reserved.
 *
 *  This is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This software is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this software; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301,
 *  USA.
 */

/*
 * cursor.c - code to support cursor shape updates (XCursor and
 * RichCursor preudo-encodings).
 */

#include <assert.h>
#include <vncviewer.h>
#include <X11/Xcursor/Xcursor.h>

static void FreeX11Cursor(void);

/* Copied from Xvnc/lib/font/util/utilbitmap.c */
static unsigned char _reverse_byte[0x100] = {
	0x00, 0x80, 0x40, 0xc0, 0x20, 0xa0, 0x60, 0xe0,
	0x10, 0x90, 0x50, 0xd0, 0x30, 0xb0, 0x70, 0xf0,
	0x08, 0x88, 0x48, 0xc8, 0x28, 0xa8, 0x68, 0xe8,
	0x18, 0x98, 0x58, 0xd8, 0x38, 0xb8, 0x78, 0xf8,
	0x04, 0x84, 0x44, 0xc4, 0x24, 0xa4, 0x64, 0xe4,
	0x14, 0x94, 0x54, 0xd4, 0x34, 0xb4, 0x74, 0xf4,
	0x0c, 0x8c, 0x4c, 0xcc, 0x2c, 0xac, 0x6c, 0xec,
	0x1c, 0x9c, 0x5c, 0xdc, 0x3c, 0xbc, 0x7c, 0xfc,
	0x02, 0x82, 0x42, 0xc2, 0x22, 0xa2, 0x62, 0xe2,
	0x12, 0x92, 0x52, 0xd2, 0x32, 0xb2, 0x72, 0xf2,
	0x0a, 0x8a, 0x4a, 0xca, 0x2a, 0xaa, 0x6a, 0xea,
	0x1a, 0x9a, 0x5a, 0xda, 0x3a, 0xba, 0x7a, 0xfa,
	0x06, 0x86, 0x46, 0xc6, 0x26, 0xa6, 0x66, 0xe6,
	0x16, 0x96, 0x56, 0xd6, 0x36, 0xb6, 0x76, 0xf6,
	0x0e, 0x8e, 0x4e, 0xce, 0x2e, 0xae, 0x6e, 0xee,
	0x1e, 0x9e, 0x5e, 0xde, 0x3e, 0xbe, 0x7e, 0xfe,
	0x01, 0x81, 0x41, 0xc1, 0x21, 0xa1, 0x61, 0xe1,
	0x11, 0x91, 0x51, 0xd1, 0x31, 0xb1, 0x71, 0xf1,
	0x09, 0x89, 0x49, 0xc9, 0x29, 0xa9, 0x69, 0xe9,
	0x19, 0x99, 0x59, 0xd9, 0x39, 0xb9, 0x79, 0xf9,
	0x05, 0x85, 0x45, 0xc5, 0x25, 0xa5, 0x65, 0xe5,
	0x15, 0x95, 0x55, 0xd5, 0x35, 0xb5, 0x75, 0xf5,
	0x0d, 0x8d, 0x4d, 0xcd, 0x2d, 0xad, 0x6d, 0xed,
	0x1d, 0x9d, 0x5d, 0xdd, 0x3d, 0xbd, 0x7d, 0xfd,
	0x03, 0x83, 0x43, 0xc3, 0x23, 0xa3, 0x63, 0xe3,
	0x13, 0x93, 0x53, 0xd3, 0x33, 0xb3, 0x73, 0xf3,
	0x0b, 0x8b, 0x4b, 0xcb, 0x2b, 0xab, 0x6b, 0xeb,
	0x1b, 0x9b, 0x5b, 0xdb, 0x3b, 0xbb, 0x7b, 0xfb,
	0x07, 0x87, 0x47, 0xc7, 0x27, 0xa7, 0x67, 0xe7,
	0x17, 0x97, 0x57, 0xd7, 0x37, 0xb7, 0x77, 0xf7,
	0x0f, 0x8f, 0x4f, 0xcf, 0x2f, 0xaf, 0x6f, 0xef,
	0x1f, 0x9f, 0x5f, 0xdf, 0x3f, 0xbf, 0x7f, 0xff
};

/* Data kept for HandleXCursor() function. */
static Bool prevXCursorSet = False;
static Cursor prevXCursor;


static Bool HandleXCursor(int xhot, int yhot, int width, int height)
{
  rfbXCursorColors colors;
  size_t bytesPerRow, bytesData;
  char *buf = NULL;
  XColor bg, fg;
  Drawable dr;
  unsigned int wret = 0, hret = 0;
  Pixmap source, mask;
  Cursor cursor;
  int i;

  bytesPerRow = (width + 7) / 8;
  bytesData = bytesPerRow * height;
  dr = DefaultRootWindow(dpy);

  if (width * height) {
    if (!ReadFromRFBServer((char *)&colors, sz_rfbXCursorColors))
      return False;

    buf = (char *)malloc(bytesData * 2);
    if (buf == NULL)
      return False;

    if (!ReadFromRFBServer(buf, bytesData * 2)) {
      free(buf);
      return False;
    }

    XQueryBestCursor(dpy, dr, width, height, &wret, &hret);
  }

  if (width * height == 0 || wret < width || hret < height) {
    /* Free resources */
    if (buf != NULL)
      free(buf);
    FreeX11Cursor();
    return True;
  }

  bg.red   = (unsigned short)colors.backRed   << 8 | colors.backRed;
  bg.green = (unsigned short)colors.backGreen << 8 | colors.backGreen;
  bg.blue  = (unsigned short)colors.backBlue  << 8 | colors.backBlue;
  fg.red   = (unsigned short)colors.foreRed   << 8 | colors.foreRed;
  fg.green = (unsigned short)colors.foreGreen << 8 | colors.foreGreen;
  fg.blue  = (unsigned short)colors.foreBlue  << 8 | colors.foreBlue;

  for (i = 0; i < bytesData * 2; i++)
    buf[i] = (char)_reverse_byte[(int)buf[i] & 0xFF];

  source = XCreateBitmapFromData(dpy, dr, buf, width, height);
  mask = XCreateBitmapFromData(dpy, dr, &buf[bytesData], width, height);
  cursor = XCreatePixmapCursor(dpy, source, mask, &fg, &bg, xhot, yhot);
  XFreePixmap(dpy, source);
  XFreePixmap(dpy, mask);
  free(buf);

  XDefineCursor(dpy, desktopWin, cursor);
  FreeX11Cursor();
  prevXCursor = cursor;
  prevXCursorSet = True;

  return True;
}


static Bool HandleRichCursor(int xhot, int yhot, int width, int height)
{
  int bytesPerPixel;
  size_t bytesPerRow, bytesMaskData;
  XcursorImage *source;
  Cursor cursor;
  CARD8 *rcSource = NULL, *rcMask = NULL, *m, *src;
  XcursorPixel *dst, red, green, blue;
  int x, y, b;
  char *buf = NULL;

  if (xhot < 0 || xhot >= width)
    return False;
  if (yhot < 0 || yhot >= height)
    return False;

  bytesPerPixel = myFormat.bitsPerPixel / 8;
  bytesPerRow = (width + 7) / 8;
  bytesMaskData = bytesPerRow * height;

  /* Allocate memory for pixel data and temporary mask data. */
  rcSource = (CARD8*)malloc(width * height * bytesPerPixel);
  if (rcSource == NULL)
    goto bailout;

  if (!ReadFromRFBServer((char *)rcSource, width * height * bytesPerPixel))
    goto bailout;

  /* Read and decode mask data. */
  buf = (char*)malloc(bytesMaskData);
  if (buf == NULL)
    goto bailout;

  if (!ReadFromRFBServer(buf, bytesMaskData))
    goto bailout;

  rcMask = (CARD8*)malloc(width * height);
  if (rcMask == NULL)
    goto bailout;

  m = rcMask;
  for (y = 0; y < height; y++) {
    for (x = 0; x < width / 8; x++) {
      for (b = 7; b >= 0; b--) {
	*m++ = buf[y * bytesPerRow + x] >> b & 1;
      }
    }
    for (b = 7; b > 7 - width % 8; b--) {
      *m++ = buf[y * bytesPerRow + x] >> b & 1;
    }
  }

  free(buf);  buf = NULL;

  source = XcursorImageCreate(width, height);
  if (!source)
    goto bailout;
  source->xhot = xhot;
  source->yhot = yhot;

  dst = source->pixels;

  #define RICH_DECODE_ARGB(bpp) {                                        \
    CARD##bpp *src = (CARD##bpp *)rcSource;                              \
    int rShift = 16 + 9 - ffs(myFormat.redMax + 1);                      \
    int gShift = 8 + 9 - ffs(myFormat.greenMax + 1);                     \
    int bShift = 9 - ffs(myFormat.blueMax + 1);                          \
                                                                         \
    for (y = 0; y < height; y++) {                                       \
      for (x = 0; x < width; x++) {                                      \
	/* Server tries to be nice and send us our native format, but */ \
	/* Xcursor needs ARGB */                                         \
	red = ((*src >> myFormat.redShift) & myFormat.redMax);           \
	green = ((*src >> myFormat.greenShift) & myFormat.greenMax);     \
	blue = ((*src >> myFormat.blueShift) & myFormat.blueMax);        \
	*dst = (*m ? 0xff : 0) << 24;                                    \
	*dst |= (red << rShift) | (green << gShift) | (blue << bShift);  \
	src++;  dst++;  m++;                                             \
      }                                                                  \
    }                                                                    \
  }

  src = rcSource;  m = rcMask;
  switch (bytesPerPixel) {
  case 1:
    RICH_DECODE_ARGB(8)
    break;
  case 2:
    RICH_DECODE_ARGB(16)
    break;
  case 4:
    RICH_DECODE_ARGB(32)
    break;
  default:
    return False;
  }

  cursor = XcursorImageLoadCursor(dpy, source);
  XDefineCursor(dpy, desktopWin, cursor);
  XFreeCursor(dpy, cursor);
  XcursorImageDestroy(source);

  bailout:
  if (rcMask) free(rcMask);
  if (buf) free(buf);
  if (rcSource) free(rcSource);
  return True;
}


/*********************************************************************
 * HandleCursorShape(). Support for XCursor and RichCursor shape
 * updates.
 ********************************************************************/

Bool HandleCursorShape(int xhot, int yhot, int width, int height, CARD32 enc)
{
  if (width * height == 0)
    return True;

  /* Read and decode cursor pixel data, depending on the encoding type. */
  if (enc == rfbEncodingXCursor) {
    HandleXCursor(xhot, yhot, width, height);
    return True;
  }
  else if (enc == rfbEncodingRichCursor) {
    HandleRichCursor(xhot, yhot, width, height);
    return True;
  }

  return False;
}

/*********************************************************************
 * HandleCursorPos(). Support for the PointerPos pseudo-encoding used
 * to transmit changes in pointer position from server to clients.
 * PointerPos encoding is used together with cursor shape updates.
 ********************************************************************/

Bool HandleCursorPos(int x, int y)
{
  if (appData.fullScreen)
    XWarpPointer(dpy, None, desktopWin, 0, 0, 0, 0, x, y);
    
  return True; 
}


static void FreeX11Cursor(void)
{
  if (prevXCursorSet) {
    XFreeCursor(dpy, prevXCursor);
    prevXCursorSet = False;
  }
}
