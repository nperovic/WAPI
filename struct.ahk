/************************************************************************
 * @description Structure for v2.1-alpha.9+
 * @file Struct.ahk
 * @author Nikola Perovic
 * @link https://github.com/nperovic/WAPI
 * @date 2024.05.06
 * @version 1.0.0
 ;***********************************************************************/
#Requires AutoHotkey v2.1-alpha.11
#Include <WinAPI>

class typedef
{
	static Call(sc, obj?)
	{
		if IsSet(obj)
			return typedef.Set(sc(), obj)
		else if !sc.Prototype.HasMethod("Set")
			sc.Prototype.Set := ObjBindMethod(this, "Set")
		return sc()
	}

	static Set(sc, objOrValue)
	{
		local prop, value

		if (Type(sc) = "Class")
			sc := sc()

		if IsObject(objOrValue)
		{
			for prop, value in objOrValue.OwnProps()
				if sc.HasOwnProp(prop)
					sc.%prop% := value
		}
		else
		{
			for prop, _ in sc.Base.OwnProps()
				if (SubStr(prop, 1, 2) != "__")
					sc.%prop% := objOrValue
		}
		return sc
	}
}

class _Struct
{
	__New(obj?) {
		if !(obj??0)
			return
		
		for p, v in obj.OwnProps()
			if this.Base.HasProp(p)
				this.%p% := v
	}

	__value {
		set {
			switch Type(value) {
			case "VarRef": %value% := this
			case "Object": 
			{
				for p, v in value.OwnProps()
					if this.Base.HasProp(p)
						this.%p% := v
			}
			default: 
			{
				try return ObjSetDataPtr(this, ObjGetDataPtr(value))
				throw TypeError('Expected a VarRef or ' this.Base.__Class ' but got a ' type(value), -1)
			}}
		}
	}
 
    ToString()
	{
		out := ""
		o   := PrintStruct(%this.Base.__Class%, 0)

		loop parse o, "`n" {
			if !RegExMatch(A_LoopField, "iS)^\d+\h+(?<type>\w+)\h+(?<n>.+)", &m)
				continue

			if InStr(m["n"], ".") {
				_this := this
				for p in StrSplit(m["n"])
					_this := _this.%p%
			}
			out .= m["n"] ":`t" (_this ?? this.%m["n"]%) "`n"
		}

        return Trim(out, "`n")
    }

	; GetPropOffset(prop)
	; {
	; 	propDesc := this.Base.Prototype.GetOwnPropDesc(prop)
	; 	if (propDesc.HasProp("Offset"))
	; 		return propDesc.Offset
	; }

	Ptr  => ObjGetDataPtr(this)
	Size => ObjGetDataSize(this)
}

; class tagDRAWITEMSTRUCT {
; 	UINT      CtlType;
; 	UINT      CtlID;
; 	UINT      itemID;
; 	UINT      itemAction;
; 	UINT      itemState;
; 	HWND      hwndItem;
; 	HDC       hDC;
; 	RECT      rcItem;
; 	ULONG_PTR itemData;
; }

class BaseStruct {
    ptr  => ObjGetDataPtr(this)
    size => ObjGetDataSize(this)
}
 
class HDITEMW extends BaseStruct {  
    mask      : u32
    cxy       : i32
    pszText   : this.LPWSTR
    hbm       : uptr
    cchTextMax: i32 := 260
    fmt       : i32
    lParam    : iptr
    iImage    : i32
    iOrder    : i32
    type      : u32
    pvFilter  : uptr
    state     : u32

    class CSTR extends BaseStruct {
        value: CString(260)
    }

    class LPWSTR extends BaseStruct {
        ptr: uptr

        __New(text?) {
            this.str := HDITEMW.CSTR()
            this.ptr := this.str.ptr
			if (text??0)
				this.str.value := text
        }

        __value {
            get => this.str.value
            set => this.str.value := value
        }
    }
}

class NMHDR  extends _Struct {
    hwndFrom: uptr
    idFrom  : uptr
    code    : i32
}

class NMCUSTOMDRAW extends _Struct  {
    hdr        : NMHDR
    dwDrawStage: u32
    hdc        : uptr
    rc         : RECT
    dwItemSpec : uptr
    uItemState : u32
    lItemlParam: iptr
}
 
class NMLVCUSTOMDRAW extends BaseStruct {
    nmcd       : NMCUSTOMDRAW
    clrText    : u32
    clrTextBk  : u32
    iSubItem   : i32
    dwItemType : u32
    clrFace    : u32
    iIconEffect: i32
    iIconPhase : i32
    iPartId    : i32
    iStateId   : i32
    rcText     : RECT
    uAlign     : u32
}

class HD_HITTESTINFO extends BaseStruct {
    pt   : POINT
    flags: u32
    iItem: i32
}
 
class lldiv_t {
    quot: i64
    rem : i64
    static Call(Dividend, Divisor) => DllCall("ucrtbase\lldiv", "int64", Dividend, "int64", Divisor, lldiv_t)
}

class MENUITEMINFOW extends _Struct {
    cbSize         : u32 := ObjGetDataSize(this)
    fMask          : u32
    fType          : u32
    fState         : u32
    wID            : u32
    hSubMenu       : uptr
    hbmpChecked    : uptr
    hbmpUnchecked  : uptr
    dwItemData     : uptr
    dwTypeData     : uptr
    cch            : u32
    hbmpItem       : uptr
}

class TEXTMETRICW extends _Struct{
    tmHeight          : i32
    tmAscent          : i32
    tmDescent         : i32
    tmInternalLeading : i32
    tmExternalLeading : i32
    tmAveCharWidth    : i32
    tmMaxCharWidth    : i32
    tmWeight          : i32
    tmOverhang        : i32
    tmDigitizedAspectX: i32
    tmDigitizedAspectY: i32
    tmFirstChar       : u16
    tmLastChar        : u16
    tmDefaultChar     : u16
    tmBreakChar       : u16
    tmItalic          : u8
    tmUnderlined      : u8
    tmStruckOut       : u8
    tmPitchAndFamily  : u8
    tmCharSet         : u8
} 

class tagNMHDR extends _Struct {
	hwndFrom: uptr
	idFrom  : uptr
	code    : i32
}

class BOOL extends _Struct  {
    value : u8  ; This property name has no special meaning.
    __value {
        get => this.value
        set => this.value := !!value
    }
}

class tagPAINTSTRUCT {
    hdc        : iptr
    fErase     : BOOL
    rcPaint    : RECT
    fRestore   : BOOL 
    fIncUpdate : BOOL 
    rgbReserved: i32 
}

class tagNMCUSTOMDRAWINFO extends _Struct {
	hdr        : tagNMHDR
	dwDrawStage: u32
	hdc        : uptr
	rc         : RECT
	dwItemSpec : uptr
	uItemState : u32
	lItemlParam: iptr
}


; class MSLLHOOKSTRUCT extends _Struct  {
;     pt         : POINT
;     mouseData  : i32
;     flags      : u32
;     time       : u32
;     dwExtraInfo: uptr
;     ; ptr => ObjGetDataPtr(this)
;     ; size => ObjGetDataSize(this)
; }

class GUITHREADINFO extends _Struct {
	cbSize       : u32 := ObjGetDataSize(this)
	flags        : u32
	hwndActive   : uptr
	hwndFocus    : uptr
	hwndCapture  : uptr
	hwndMenuOwner: uptr
	hwndMoveSize : uptr
	hwndCaret    : uptr
	rcCaret      : RECT
}

class tagMSG extends _Struct
{
	hwnd    : uptr
	message : u32
	wParam  : uptr
	lParam  : iptr
	time    : u32
	pt      : POINT
	lPrivate: u32
}

class RECT extends _Struct
{
	Left  : i32
	Top   : i32
	Right : i32
	Bottom: i32

	; To get "xN yN wN hN"
	GetXYWHStr() => ("x" this.Left " y" this.Top " w" (this.Right-this.left) " h" (this.Bottom-this.Top))
	
	; To get an array that can be used in `WinMove`, `ControlMove`, etc.
	GetXYWHArr() => [this.Left, this.Top, this.Right-this.left, this.Bottom-this.Top]
}

class WINDOWINFO extends _Struct
{
	cbSize         : u32 := this.Size
	rcWindow       : RECT
	rcClient       : RECT
	dwStyle        : u32
	dwExStyle      : u32
	dwWindowStatus : u32
	cxWindowBorders: u32
	cyWindowBorders: u32
	atomWindowType : u16
	wCreatorVersion: u16
}

class WINCOMPATTRDATA extends _Struct
{
	attribute: u32
	pData    : uptr
	dataSize : u32 := 16
}

class accent extends _Struct
{
	value: u32
}

class _MARGINS extends _Struct
{
	cxLeftWidth   : i32
	cxRightWidth  : i32
	cyTopHeight   : i32
	cyBottomHeight: i32
}

class Point extends _Struct {
	x: i32
	y: i32
}

class tagMSLLHOOKSTRUCT extends _Struct {
    pt         : POINT
    mouseData  : i32
    flags      : i32
    time       : u32
    dwExtraInfo: uptr
}
