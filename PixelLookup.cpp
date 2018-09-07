//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PixelLookup.h"
#include "VirtualCursor1.h"
#include "VirtualCursor2.h"
#include "Main.h"
#pragma package(smart_init)

//#define _DEBUG

__fastcall PixelLookup::PixelLookup(bool CreateSuspended) : TThread(CreateSuspended)
{
	_searchColor = frmMain->btnSearchColor->Color;
}
//---------------------------------------------------------------------------
void __fastcall PixelLookup::Execute()
{
	bool done = false;
	while (!Terminated && !done)
	{
		done = IsClicked();
		Sleep(1);
	}

	if (done)
		Synchronize(&ShutDown);
}
//---------------------------------------------------------------------------

bool PixelLookup::IsClicked()
{
	Synchronize(&Init);

	if (IsPixelMatched(_rect1, frmMain->clickPoint1))
	{
		Click(frmMain->clickPoint1);
		return true;
	}
	
	if (IsPixelMatched(_rect2, frmMain->clickPoint2))
	{
		Click(frmMain->clickPoint2);
		if (IsPixelMatched(_rect1, frmMain->clickPoint1))
			Click(frmMain->clickPoint1);
		
		return true;
	}

	return false;
}

bool PixelLookup::IsPixelMatched(CRect r, TPoint clickPoint)
{
	RECT rect;
	HWND hwnd = WindowFromPoint(Point(r.x, r.y));
	GetWindowRect(hwnd, &rect);
	HDC hdc = GetWindowDC(hwnd);

	r.x -= rect.left;
	r.y -= rect.top;

	TColor pixelColor = (TColor)GetPixel(hdc, r.x, r.y);
	ReleaseDC(hwnd, hdc);
	SendMessage(hwnd, WM_PAINT, 0, 0); // repaint source window (it might get scrambled)
	
	return pixelColor == _searchColor;
}

void PixelLookup::Click(TPoint clickPoint)
{
	int x = clickPoint.x;
	int y = clickPoint.y;

	GetCursorPos(&_oldCursorPoint); // save cursor pos before click
	HWND hwnd = WindowFromPoint(clickPoint);
	SendMessage(hwnd, WA_ACTIVE, 0, 0); // activate target window first

	ReleaseCapture(); // release capture from current window
	SetCursorPos(x, y);

	mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0); // simulate click
	mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
}

void PixelLookup::DrawRectangle(HDC hdc, CRect r, TColor color)
{
	LOGPEN pen = {PS_SOLID, {1, 0}, color};
	HPEN hpen = CreatePenIndirect(&pen);
	HPEN oldpen = (HPEN)SelectObject(hdc, hpen);
	HBRUSH hbrush = (HBRUSH)SelectObject(hdc, GetStockObject(NULL_BRUSH));
	Rectangle(hdc, r.x - 1, r.y - 1, r.x + r.width + 1, r.y + r.height + 1);
	SelectObject(hdc, hbrush);
	SelectObject(hdc, oldpen);
	DeleteObject(hpen);
}

void __fastcall PixelLookup::Init()
{
#ifdef _DEBUG
	log.Write(L"Initializing first window.");
#endif
	Initialize(frmMain->listView1, _rect1);

#ifdef _DEBUG
	log.Write(L"Initializing second window.");
#endif
	Initialize(frmMain->listView2, _rect2);
}

void PixelLookup::Initialize(TListView *list, CRect &r)
{
	int itemCount = list->Items->Count;

	if (itemCount == 0)
		return;

	TListItem *item;

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

void __fastcall PixelLookup::ShutDown()
{
	frmMain->WindowState = wsNormal;
	frmMain->btnOperation->Caption = "OUT";
	frmMain->btnOperation->Color = clRed;
	frmMain->btnOperation->Tag = 0;
	frmMain->BringToFront();

	SetCursorPos(_oldCursorPoint.x, _oldCursorPoint.y); // restore cursor pos
}
