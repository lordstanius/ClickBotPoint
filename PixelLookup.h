//---------------------------------------------------------------------------

#ifndef PixelLookupH
#define PixelLookupH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
struct CRect
{
	int x;
	int y;
	int width;
	int height;
    CRect() { }
	CRect(int X, int Y, int W, int H): x(X), y(Y), width(W), height(H) { }
};


class PixelLookup : public TThread
{
private:
	void __fastcall ShutDown();
	void __fastcall Init();
	//void LoadBuffer(TColor* buffer, TPoint p, int size, HDC hdc);
	bool IsClicked();
	//void FillBuffer(TListView* list, TColor** cb);
	void Initialize(TListView* list, CRect& rect);
	void Click(TPoint clickPoint);
	bool IsPixelMatched(CRect r, TPoint clickPoint);

	CRect _rect1;
	CRect _rect2;
	TColor _searchColor;
	//TColor* colorBuffer1;
	//TColor* colorBuffer2;
protected:
	void __fastcall Execute();
public:
	__fastcall PixelLookup(bool CreateSuspended);
	__fastcall void GetClickPoint();
	static void DrawRectangle(HDC hdc, CRect r, TColor color);
	static bool SaveImage(wchar_t* fileName, int width, int height, unsigned char* pBuffer, DWORD dwBmpSize);
	static void FlipBmpBuffer(unsigned char* buffer, int width, int height);
};
//---------------------------------------------------------------------------
#endif
