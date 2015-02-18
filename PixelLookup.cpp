//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PixelLookup.h"
#include "VirtualCursor1.h"
#include "VirtualCursor2.h"
#include "Main.h"
#pragma package(smart_init)


//#define _DEBUG

//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall PixelLookup::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------
__fastcall PixelLookup::PixelLookup(bool CreateSuspended): TThread(CreateSuspended)
{
	_searchColor = frmMain->btnSearchColor->Color;
}
//---------------------------------------------------------------------------
void __fastcall PixelLookup::Execute()
{
	//log.WriteTimestamp();

	Synchronize(&Init);

	while (!Terminated && DoWork())
		Sleep(1);

	Synchronize(&ShutDown);
	/*
	if (colorBuffer1 != NULL)
		delete [] colorBuffer1;
	if (colorBuffer2 != NULL)
		delete [] colorBuffer2;*/
}
//---------------------------------------------------------------------------

bool PixelLookup::DoWork()
{
/*
	bool isClicked1 = DoClick(frmMain->listView1, frmMain->clickPoint1, colorBuffer1, frmMain->btnCursor1Color->Color);
	bool isClicked2 = DoClick(frmMain->listView2, frmMain->clickPoint2, colorBuffer2, frmMain->btnCursor2Color->Color);
	*/
	bool isClicked1 = DoClick(_rect1, frmMain->clickPoint1);
	bool isClicked2 = DoClick(_rect2, frmMain->clickPoint2);

	if (isClicked2 && !isClicked1)
		//DoClick(frmMain->listView1, frmMain->clickPoint1, colorBuffer1, frmMain->btnCursor1Color->Color);
		DoClick(_rect1, frmMain->clickPoint1);

	return !(isClicked1 || isClicked2);
}

//bool PixelLookup::DoClick(TListView* list, TPoint clickPoint, TColor* cb, TColor color)
bool PixelLookup::DoClick(CRect r, TPoint clickPoint)
{
	RECT rect;
	HWND hwnd = WindowFromPoint(Point(r.x, r.y));
	GetWindowRect(hwnd, &rect);
	HDC hdc = GetWindowDC(hwnd);

	r.x -= rect.left;
	r.y -= rect.top;

	TColor pixelColor = (TColor)GetPixel(hdc, r.x, r.y);
	ReleaseDC(hwnd, hdc);
	if (pixelColor == _searchColor)
		return Click(clickPoint);
	return false;
}

void PixelLookup::DrawRectangle(HDC hdc, CRect r, TColor color)
{
	LOGPEN pen = {PS_SOLID, {1,0}, color};
	HPEN hpen = CreatePenIndirect(&pen);
	HPEN oldpen = (HPEN)SelectObject(hdc, hpen);
	HBRUSH hbrush = (HBRUSH)SelectObject(hdc, GetStockObject(NULL_BRUSH));
	Rectangle(hdc, r.x-1, r.y-1, r.x + r.width+1, r.y + r.height+1);
	SelectObject(hdc, hbrush);
	SelectObject(hdc, oldpen);
	DeleteObject(hpen);
}


void __fastcall PixelLookup::Init()
{
    Initialize(frmMain->listView1, _rect1);
	Initialize(frmMain->listView2, _rect2);
}


void PixelLookup::Initialize(TListView* list, CRect& r)
{
	int itemCount = list->Items->Count;

	if (itemCount == 0)
		return;

	TListItem* item;

	for (int i = 0; i < itemCount; ++i)
	{
		item = list->Items->Item[i];

		if (item->Checked)
		{
			r.x = StrToInt(item->SubItems->Strings[0]);
			r.y = StrToInt(item->SubItems->Strings[1]);
		}
	}
}

bool PixelLookup::SaveImage(wchar_t* fileName, int width, int height, unsigned char* pBuffer, DWORD dwBmpSize)
{
		BITMAPFILEHEADER bmfh;
		BITMAPINFOHEADER info;
		memset ( &bmfh, 0, sizeof (BITMAPFILEHEADER ) );
		memset ( &info, 0, sizeof (BITMAPINFOHEADER ) );
		bmfh.bfType = 0x4d42;       // 0x4d42 = 'BM'
		bmfh.bfReserved1 = 0;
		bmfh.bfReserved2 = 0;
		bmfh.bfSize = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER) + dwBmpSize;
		bmfh.bfOffBits = 0x36;

		info.biSize = sizeof(BITMAPINFOHEADER);
		info.biWidth = width;
		info.biHeight = height;
		info.biPlanes = 1;
		info.biBitCount = 32;
		info.biCompression = BI_RGB;
		info.biSizeImage = 0;
		info.biXPelsPerMeter = 0x0ec4;
		info.biYPelsPerMeter = 0x0ec4;
		info.biClrUsed = 0;
		info.biClrImportant = 0;

		HANDLE file = CreateFile(fileName, GENERIC_WRITE, FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL );
		if ( INVALID_HANDLE_VALUE == file)
			return false;

		//Now we write the file header and info header:

		unsigned long bwritten;
		if ( WriteFile ( file, &bmfh, sizeof ( BITMAPFILEHEADER ), &bwritten, NULL ) == false )
		{
			CloseHandle ( file );
			return false;
		}

		if ( WriteFile ( file, &info,sizeof ( BITMAPINFOHEADER ), &bwritten, NULL ) == false )
		{
			CloseHandle ( file );
			return false;
		}

		//and finally the image data:
		if ( WriteFile ( file, pBuffer, dwBmpSize, &bwritten, NULL ) == false )
		{
			CloseHandle ( file );
			return false;
		}

		//Now we can close our function with
		CloseHandle ( file );
		return true;
}


void PixelLookup::FlipBmpBuffer(unsigned char* buffer, int width, int height)
{
	unsigned int* p = (unsigned int*)buffer;
	//unsigned int* tmp = new unsigned int[width*height];

	for (int x = 0; x < width; ++x)
	{
		for (int y = 0; y < height/2; ++y)
		{
			unsigned int n = x + y*width;
			unsigned int f = x + (height - y - 1)*width;
			unsigned int t = p[n];
			p[n] = p[f];
			p[f] = t;
		}
	}
}


bool PixelLookup::Click(TPoint clickPoint)
{
	HWND hwnd = WindowFromPoint(clickPoint);

	if (hwnd == NULL)
		return false;

	RECT windowRect;
	GetWindowRect(hwnd, &windowRect);

	int x = clickPoint.x - windowRect.left;
	int y = clickPoint.y - windowRect.top;

	SendMessage(hwnd, WM_LBUTTONDOWN, 0, x | y << 16);
	SendMessage(hwnd, WM_LBUTTONUP, 0, x | y << 16);

	return true;
}


void __fastcall PixelLookup::ShutDown()
{
	frmMain->btnOperation->Caption = "OUT";
	frmMain->btnOperation->Color = clRed;
	frmMain->btnOperation->Tag = 0;

	// disable
	//frmMain->btnOperation->Font->Color = clGray;
	//frmMain->btnOperation->Color = clSilver;
	//frmMain->btnOperation->Enabled = false;
}

