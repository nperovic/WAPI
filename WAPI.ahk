/**
 * Collection of WinAPI functions. (Includes: User32/ Kernel32/ Shell32/ Shlwapi/ UxTheme/ Gdi32/ Gdiplus)
 * @link nperovic [GitHub](https://github.com/nperovic/WAPI)
 * @link Sourced from thqby's [WinAPI library](https://github.com/thqby/ahk2_lib/tree/master/WinAPI) 
 * */
class WAPI
{
	;#region __User32

	/** @example DllCall("User32\ActivateKeyboardLayout", "ptr", hkl, "uint", Flags, "ptr") */
	static ActivateKeyboardLayout(hkl, Flags) => DllCall("User32\ActivateKeyboardLayout", "ptr", hkl, "uint", Flags, "ptr")

	/** @example DllCall("User32\AddClipboardFormatListener", "ptr", hwnd, "int") */
	static AddClipboardFormatListener(hwnd) => DllCall("User32\AddClipboardFormatListener", "ptr", hwnd, "int")

	/** @example DllCall("User32\AdjustWindowRect", "ptr", lpRect, "uint", dwStyle, "int", bMenu, "int") */
	static AdjustWindowRect(lpRect, dwStyle, bMenu) => DllCall("User32\AdjustWindowRect", "ptr", lpRect, "uint", dwStyle, "int", bMenu, "int")

	/** @example DllCall("User32\AdjustWindowRectEx", "ptr", lpRect, "uint", dwStyle, "int", bMenu, "uint", dwExStyle, "int") */
	static AdjustWindowRectEx(lpRect, dwStyle, bMenu, dwExStyle) => DllCall("User32\AdjustWindowRectEx", "ptr", lpRect, "uint", dwStyle, "int", bMenu, "uint", dwExStyle, "int")

	/** @example DllCall("User32\AllowSetForegroundWindow", "uint", dwProcessId, "int") */
	static AllowSetForegroundWindow(dwProcessId) => DllCall("User32\AllowSetForegroundWindow", "uint", dwProcessId, "int")

	/** @example DllCall("User32\AnimateWindow", "ptr", hwnd, "uint", dwTime, "uint", dwFlags, "int") */
	static AnimateWindow(hwnd, dwTime, dwFlags) => DllCall("User32\AnimateWindow", "ptr", hwnd, "uint", dwTime, "uint", dwFlags, "int")

	/** @example DllCall("User32\AnyPopup", "int") */
	static AnyPopup() => DllCall("User32\AnyPopup", "int")

	/** @example DllCall("User32\AppendMenu", "ptr", hMenu, "uint", uFlags, "uptr", uIDNewItem, "ptr", StrPtr(lpNewItem), "int") */
	static AppendMenu(hMenu, uFlags, uIDNewItem, lpNewItem) => DllCall("User32\AppendMenu", "ptr", hMenu, "uint", uFlags, "uptr", uIDNewItem, "ptr", StrPtr(lpNewItem), "int")

	/** @example DllCall("User32\ArrangeIconicWindows", "ptr", hwnd, "uint") */
	static ArrangeIconicWindows(hwnd) => DllCall("User32\ArrangeIconicWindows", "ptr", hwnd, "uint")

	/** @example DllCall("User32\AttachThreadInput", "uint", idAttach, "uint", idAttachTo, "int", fAttach, "int") */
	static AttachThreadInput(idAttach, idAttachTo, fAttach) => DllCall("User32\AttachThreadInput", "uint", idAttach, "uint", idAttachTo, "int", fAttach, "int")

	/** @example DllCall("User32\BeginDeferWindowPos", "int", nNumWindows, "ptr") */
	static BeginDeferWindowPos(nNumWindows) => DllCall("User32\BeginDeferWindowPos", "int", nNumWindows, "ptr")

	/** @example DllCall("User32\BeginPaint", "ptr", hwnd, "ptr", lpPaint, "ptr") */
	static BeginPaint(hwnd, lpPaint) => DllCall("User32\BeginPaint", "ptr", hwnd, "ptr", lpPaint, "uptr")

	/** @example DllCall("User32\BlockInput_", "int", fBlockIt, "int") */
	static BlockInput_(fBlockIt) => DllCall("User32\BlockInput_", "int", fBlockIt, "int")

	/** @example DllCall("User32\BringWindowToTop", "ptr", hwnd, "int") */
	static BringWindowToTop(hwnd) => DllCall("User32\BringWindowToTop", "ptr", hwnd, "int")

	/** @example DllCall("User32\BroadcastSystemMessage", "uint", dwFlags, "ptr", lpdwRecipients, "uint", uiMessage, "uptr", wParam, "uptr", lParam, "int") */
	static BroadcastSystemMessage(dwFlags, lpdwRecipients, uiMessage, wParam, lParam) => DllCall("User32\BroadcastSystemMessage", "uint", dwFlags, "ptr", lpdwRecipients, "uint", uiMessage, "uptr", wParam, "uptr", lParam, "int")

	/** @example DllCall("User32\BroadcastSystemMessageEx", "uint", dwFlags, "ptr", lpdwRecipients, "uint", uiMessage, "uptr", wParam, "uptr", lParam, "ptr", pBSMInfo, "int") */
	static BroadcastSystemMessageEx(dwFlags, lpdwRecipients, uiMessage, wParam, lParam, pBSMInfo) => DllCall("User32\BroadcastSystemMessageEx", "uint", dwFlags, "ptr", lpdwRecipients, "uint", uiMessage, "uptr", wParam, "uptr", lParam, "ptr", pBSMInfo, "int")

	/** @example DllCall("User32\CalculatePopupWindowPosition", "ptr", anchorPoint, "ptr", windowSize, "uint", flags, "ptr", excludeRect, "ptr", popupWindowPosition, "int") */
	static CalculatePopupWindowPosition(anchorPoint, windowSize, flags, excludeRect, popupWindowPosition) => DllCall("User32\CalculatePopupWindowPosition", "ptr", anchorPoint, "ptr", windowSize, "uint", flags, "ptr", excludeRect, "ptr", popupWindowPosition, "int")

	/** @example DllCall("User32\CallMsgFilter", "ptr", lpMsg, "int", nCode, "int") */
	static CallMsgFilter(lpMsg, nCode) => DllCall("User32\CallMsgFilter", "ptr", lpMsg, "int", nCode, "int")

	/** @example DllCall("User32\CallNextHookEx", "ptr", hhk, "int", nCode, "uptr", wParam, "uptr", lParam, "ptr") */
	static CallNextHookEx(hhk, nCode, wParam, lParam) => DllCall("User32\CallNextHookEx", "ptr", hhk, "int", nCode, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\CallWindowProc", "ptr", lpPrevWndFunc, "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr") */
	static CallWindowProc(lpPrevWndFunc, hWnd, uMsg, wParam, lParam) => DllCall("CallWindowProc", "Ptr", lpPrevWndFunc, "Ptr", hwnd, "UInt", uMsg, "Ptr", wParam, "Ptr", lParam)

	/** @example DllCall("User32\CascadeWindows", "ptr", hwndParent, "uint", wHow, "ptr", lpRect, "uint", cKids, "ptr", lpKids, "ushort") */
	static CascadeWindows(hwndParent, wHow, lpRect, cKids, lpKids) => DllCall("User32\CascadeWindows", "ptr", hwndParent, "uint", wHow, "ptr", lpRect, "uint", cKids, "ptr", lpKids, "ushort")

	/** @example DllCall("User32\ChangeClipboardChain", "ptr", hWndRemove, "ptr", hWndNewNext, "int") */
	static ChangeClipboardChain(hWndRemove, hWndNewNext) => DllCall("User32\ChangeClipboardChain", "ptr", hWndRemove, "ptr", hWndNewNext, "int")

	/** @example DllCall("User32\ChangeDisplaySettings", "ptr", lpDevMode, "uint", dwflags, "int") */
	static ChangeDisplaySettings(lpDevMode, dwflags) => DllCall("User32\ChangeDisplaySettings", "ptr", lpDevMode, "uint", dwflags, "int")

	/** @example DllCall("User32\ChangeDisplaySettingsEx", "ptr", StrPtr(lpszDeviceName), "ptr", lpDevMode, "ptr", hwnd, "uint", dwflags, "ptr", lParam, "int") */
	static ChangeDisplaySettingsEx(lpszDeviceName, lpDevMode, hwnd, dwflags, lParam) => DllCall("User32\ChangeDisplaySettingsEx", "ptr", StrPtr(lpszDeviceName), "ptr", lpDevMode, "ptr", hwnd, "uint", dwflags, "ptr", lParam, "int")

	/** @example DllCall("User32\ChangeWindowMessageFilter", "uint", message, "uint", dwFlag, "int") */
	static ChangeWindowMessageFilter(message, dwFlag) => DllCall("User32\ChangeWindowMessageFilter", "uint", message, "uint", dwFlag, "int")

	/** @example DllCall("User32\ChangeWindowMessageFilterEx", "ptr", hWnd, "uint", message, "uint", action, "ptr", pChangeFilterStruct, "int") */
	static ChangeWindowMessageFilterEx(hWnd, message, action, pChangeFilterStruct) => DllCall("User32\ChangeWindowMessageFilterEx", "ptr", hWnd, "uint", message, "uint", action, "ptr", pChangeFilterStruct, "int")

	/** @example DllCall("User32\CharLower", "ptr", StrPtr(lpsz), "str") */
	static CharLower(lpsz) => DllCall("User32\CharLower", "ptr", StrPtr(lpsz), "str")

	/** @example DllCall("User32\CharLowerBuff", "ptr", StrPtr(lpsz), "uint", cchLength, "uint") */
	static CharLowerBuff(lpsz, cchLength) => DllCall("User32\CharLowerBuff", "ptr", StrPtr(lpsz), "uint", cchLength, "uint")

	/** @example DllCall("User32\CharNext", "ptr", StrPtr(lpsz), "str") */
	static CharNext(lpsz) => DllCall("User32\CharNext", "ptr", StrPtr(lpsz), "str")

	/** @example DllCall("User32\CharNextExA", "ushort", CodePage, "astr", lpCurrentChar, "uint", dwFlags, "astr") */
	static CharNextExA(CodePage, lpCurrentChar, dwFlags) => DllCall("User32\CharNextExA", "ushort", CodePage, "astr", lpCurrentChar, "uint", dwFlags, "astr")

	/** @example DllCall("User32\CharPrev", "ptr", StrPtr(lpszStart), "ptr", StrPtr(lpszCurrent), "str") */
	static CharPrev(lpszStart, lpszCurrent) => DllCall("User32\CharPrev", "ptr", StrPtr(lpszStart), "ptr", StrPtr(lpszCurrent), "str")

	/** @example DllCall("User32\CharPrevExA", "ushort", CodePage, "astr", lpStart, "astr", lpCurrentChar, "uint", dwFlags, "astr") */
	static CharPrevExA(CodePage, lpStart, lpCurrentChar, dwFlags) => DllCall("User32\CharPrevExA", "ushort", CodePage, "astr", lpStart, "astr", lpCurrentChar, "uint", dwFlags, "astr")

	/** @example DllCall("User32\CharToOem", "ptr", StrPtr(lpszSrc), "astr", lpszDst, "int") */
	static CharToOem(lpszSrc, lpszDst) => DllCall("User32\CharToOem", "ptr", StrPtr(lpszSrc), "astr", lpszDst, "int")

	/** @example DllCall("User32\CharToOemBuff", "ptr", StrPtr(lpszSrc), "astr", lpszDst, "uint", cchDstLength, "int") */
	static CharToOemBuff(lpszSrc, lpszDst, cchDstLength) => DllCall("User32\CharToOemBuff", "ptr", StrPtr(lpszSrc), "astr", lpszDst, "uint", cchDstLength, "int")

	/** @example DllCall("User32\CharUpper", "ptr", StrPtr(lpsz), "str") */
	static CharUpper(lpsz) => DllCall("User32\CharUpper", "ptr", StrPtr(lpsz), "str")

	/** @example DllCall("User32\CharUpperBuff", "ptr", StrPtr(lpsz), "uint", cchLength, "uint") */
	static CharUpperBuff(lpsz, cchLength) => DllCall("User32\CharUpperBuff", "ptr", StrPtr(lpsz), "uint", cchLength, "uint")

	/** @example DllCall("User32\CheckDlgButton", "ptr", hDlg, "int", nIDButton, "uint", uCheck, "int") */
	static CheckDlgButton(hDlg, nIDButton, uCheck) => DllCall("User32\CheckDlgButton", "ptr", hDlg, "int", nIDButton, "uint", uCheck, "int")

	/** @example DllCall("User32\CheckMenuItem", "ptr", hmenu, "uint", uIDCheckItem, "uint", uCheck, "uint") */
	static CheckMenuItem(hmenu, uIDCheckItem, uCheck) => DllCall("User32\CheckMenuItem", "ptr", hmenu, "uint", uIDCheckItem, "uint", uCheck, "uint")

	/** @example DllCall("User32\CheckMenuRadioItem", "ptr", hmenu, "uint", idFirst, "uint", idLast, "uint", idCheck, "uint", uFlags, "int") */
	static CheckMenuRadioItem(hmenu, idFirst, idLast, idCheck, uFlags) => DllCall("User32\CheckMenuRadioItem", "ptr", hmenu, "uint", idFirst, "uint", idLast, "uint", idCheck, "uint", uFlags, "int")

	/** @example DllCall("User32\CheckRadioButton", "ptr", hDlg, "int", nIDFirstButton, "int", nIDLastButton, "int", nIDCheckButton, "int") */
	static CheckRadioButton(hDlg, nIDFirstButton, nIDLastButton, nIDCheckButton) => DllCall("User32\CheckRadioButton", "ptr", hDlg, "int", nIDFirstButton, "int", nIDLastButton, "int", nIDCheckButton, "int")

	/** @example DllCall("User32\ChildWindowFromPoint", "ptr", hWndParent, "uint64", Point, "ptr") */
	static ChildWindowFromPoint(hWndParent, Point) => DllCall("User32\ChildWindowFromPoint", "ptr", hWndParent, "uint64", Point, "ptr")

	/** @example DllCall("User32\ChildWindowFromPointEx", "ptr", hwndParent, "uint64", pt, "uint", uFlags, "ptr") */
	static ChildWindowFromPointEx(hwndParent, pt, uFlags) => DllCall("User32\ChildWindowFromPointEx", "ptr", hwndParent, "uint64", pt, "uint", uFlags, "ptr")

	/** @example DllCall("User32\ClientToScreen", "ptr", hWnd, "ptr", lpPoint, "int") */
	static ClientToScreen(hWnd, lpPoint) => DllCall("User32\ClientToScreen", "ptr", hWnd, "ptr", lpPoint, "int")

	/** @example DllCall("User32\ClipCursor", "ptr", lpRect, "int") */
	static ClipCursor(lpRect) => DllCall("User32\ClipCursor", "ptr", lpRect, "int")

	/** @example DllCall("User32\CloseClipboard", "int") */
	static CloseClipboard() => DllCall("User32\CloseClipboard", "int")

	/** @example DllCall("User32\CloseDesktop", "ptr", hDesktop, "int") */
	static CloseDesktop(hDesktop) => DllCall("User32\CloseDesktop", "ptr", hDesktop, "int")

	/** @example DllCall("User32\CloseGestureInfoHandle", "ptr", hGestureInfo, "int") */
	static CloseGestureInfoHandle(hGestureInfo) => DllCall("User32\CloseGestureInfoHandle", "ptr", hGestureInfo, "int")

	/** @example DllCall("User32\CloseTouchInputHandle", "ptr", hTouchInput, "int") */
	static CloseTouchInputHandle(hTouchInput) => DllCall("User32\CloseTouchInputHandle", "ptr", hTouchInput, "int")

	/** @example DllCall("User32\CloseWindow", "ptr", hwnd, "int") */
	static CloseWindow(hwnd) => DllCall("User32\CloseWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\CloseWindowStation", "ptr", hWinSta, "int") */
	static CloseWindowStation(hWinSta) => DllCall("User32\CloseWindowStation", "ptr", hWinSta, "int")

	/** @example DllCall("User32\CopyAcceleratorTable", "ptr", hAccelSrc, "ptr", lpAccelDst, "int", cAccelEntries, "int") */
	static CopyAcceleratorTable(hAccelSrc, lpAccelDst, cAccelEntries) => DllCall("User32\CopyAcceleratorTable", "ptr", hAccelSrc, "ptr", lpAccelDst, "int", cAccelEntries, "int")

	/** @example DllCall("User32\CopyIcon", "ptr", hIcon, "ptr") */
	static CopyIcon(hIcon) => DllCall("User32\CopyIcon", "ptr", hIcon, "ptr")

	/** @example DllCall("User32\CopyImage", "ptr", hImage, "uint", uType, "int", cxDesired, "int", cyDesired, "uint", fuFlags, "ptr") */
	static CopyImage(hImage, uType, cxDesired, cyDesired, fuFlags) => DllCall("User32\CopyImage", "ptr", hImage, "uint", uType, "int", cxDesired, "int", cyDesired, "uint", fuFlags, "ptr")

	/** @example DllCall("User32\CopyRect", "ptr", lprcDst, "ptr", lprcSrc, "int") */
	static CopyRect(lprcDst, lprcSrc) => DllCall("User32\CopyRect", "ptr", lprcDst, "ptr", lprcSrc, "int")

	/** @example DllCall("User32\CountClipboardFormats", "int") */
	static CountClipboardFormats() => DllCall("User32\CountClipboardFormats", "int")

	/** @example DllCall("User32\CreateAcceleratorTable", "ptr", lpaccl, "int", cEntries, "ptr") */
	static CreateAcceleratorTable(lpaccl, cEntries) => DllCall("User32\CreateAcceleratorTable", "ptr", lpaccl, "int", cEntries, "ptr")

	/** @example DllCall("User32\CreateCaret", "ptr", hWnd, "ptr", hBitmap, "int", nWidth, "int", nHeight, "int") */
	static CreateCaret(hWnd, hBitmap, nWidth, nHeight) => DllCall("User32\CreateCaret", "ptr", hWnd, "ptr", hBitmap, "int", nWidth, "int", nHeight, "int")

	/** @example DllCall("User32\CreateCursor", "ptr", hInst, "int", xHotSpot, "int", yHotSpot, "int", nWidth, "int", nHeight, "ptr", pvANDPlane, "ptr", pvXORPlane, "ptr") */
	static CreateCursor(hInst, xHotSpot, yHotSpot, nWidth, nHeight, pvANDPlane, pvXORPlane) => DllCall("User32\CreateCursor", "ptr", hInst, "int", xHotSpot, "int", yHotSpot, "int", nWidth, "int", nHeight, "ptr", pvANDPlane, "ptr", pvXORPlane, "ptr")

	/** @example DllCall("User32\CreateDesktop", "ptr", StrPtr(lpszDesktop), "ptr", StrPtr(lpszDevice), "ptr", pDevmode, "uint", dwFlags, "uint", dwDesiredAccess, "ptr", lpsa, "ptr") */
	static CreateDesktop(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa) => DllCall("User32\CreateDesktop", "ptr", StrPtr(lpszDesktop), "ptr", StrPtr(lpszDevice), "ptr", pDevmode, "uint", dwFlags, "uint", dwDesiredAccess, "ptr", lpsa, "ptr")

	/** @example DllCall("User32\CreateDesktopEx", "ptr", StrPtr(lpszDesktop), "ptr", StrPtr(lpszDevice), "ptr", pDevmode, "uint", dwFlags, "uint", dwDesiredAccess, "ptr", lpsa, "uint", ulHeapSize, "ptr", pvoid, "ptr") */
	static CreateDesktopEx(lpszDesktop, lpszDevice, pDevmode, dwFlags, dwDesiredAccess, lpsa, ulHeapSize, pvoid) => DllCall("User32\CreateDesktopEx", "ptr", StrPtr(lpszDesktop), "ptr", StrPtr(lpszDevice), "ptr", pDevmode, "uint", dwFlags, "uint", dwDesiredAccess, "ptr", lpsa, "uint", ulHeapSize, "ptr", pvoid, "ptr")

	/** @example DllCall("User32\CreateDialogIndirectParam", "ptr", hInstance, "ptr", lpTemplate, "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", lParamInit, "ptr") */
	static CreateDialogIndirectParam(hInstance, lpTemplate, hWndParent, lpDialogFunc, lParamInit) => DllCall("User32\CreateDialogIndirectParam", "ptr", hInstance, "ptr", lpTemplate, "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", lParamInit, "ptr")

	/** @example DllCall("User32\CreateDialogParam", "ptr", hInstance, "ptr", StrPtr(lpTemplateName), "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", dwInitParam, "ptr") */
	static CreateDialogParam(hInstance, lpTemplateName, hWndParent, lpDialogFunc, dwInitParam) => DllCall("User32\CreateDialogParam", "ptr", hInstance, "ptr", StrPtr(lpTemplateName), "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", dwInitParam, "ptr")

	/** @example DllCall("User32\CreateIcon", "ptr", hInstance, "int", nWidth, "int", nHeight, "uchar", cPlanes, "uchar", cBitsPixel, "uchar*", &lpbANDbits, "uchar*", &lpbXORbits, "ptr") */
	static CreateIcon(hInstance, nWidth, nHeight, cPlanes, cBitsPixel, &lpbANDbits, &lpbXORbits) => DllCall("User32\CreateIcon", "ptr", hInstance, "int", nWidth, "int", nHeight, "uchar", cPlanes, "uchar", cBitsPixel, "uchar*", &lpbANDbits, "uchar*", &lpbXORbits, "ptr")

	/** @example DllCall("User32\CreateIconFromResource", "ptr", presbits, "uint", dwResSize, "int", fIcon, "uint", dwVer, "ptr") */
	static CreateIconFromResource(presbits, dwResSize, fIcon, dwVer) => DllCall("User32\CreateIconFromResource", "ptr", presbits, "uint", dwResSize, "int", fIcon, "uint", dwVer, "ptr")

	/** @example DllCall("User32\CreateIconFromResourceEx", "ptr", pbIconBits, "uint", cbIconBits, "int", fIcon, "uint", dwVersion, "int", cxDesired, "int", cyDesired, "uint", uFlags, "ptr") */
	static CreateIconFromResourceEx(pbIconBits, cbIconBits, fIcon, dwVersion, cxDesired, cyDesired, uFlags) => DllCall("User32\CreateIconFromResourceEx", "ptr", pbIconBits, "uint", cbIconBits, "int", fIcon, "uint", dwVersion, "int", cxDesired, "int", cyDesired, "uint", uFlags, "ptr")

	/** @example DllCall("User32\CreateIconIndirect", "ptr", piconinfo, "ptr") */
	static CreateIconIndirect(piconinfo) => DllCall("User32\CreateIconIndirect", "ptr", piconinfo, "ptr")

	/** @example DllCall("User32\CreateMDIWindow", "ptr", StrPtr(lpClassName), "ptr", StrPtr(lpWindowName), "uint", dwStyle, "int", X, "int", Y, "int", nWidth, "int", nHeight, "ptr", hWndParent, "ptr", hInstance, "uptr", lParam, "ptr") */
	static CreateMDIWindow(lpClassName, lpWindowName, dwStyle, X, Y, nWidth, nHeight, hWndParent, hInstance, lParam) => DllCall("User32\CreateMDIWindow", "ptr", StrPtr(lpClassName), "ptr", StrPtr(lpWindowName), "uint", dwStyle, "int", X, "int", Y, "int", nWidth, "int", nHeight, "ptr", hWndParent, "ptr", hInstance, "uptr", lParam, "ptr")

	/** @example DllCall("User32\CreateMenu", "ptr") */
	static CreateMenu() => DllCall("User32\CreateMenu", "ptr")

	/** @example DllCall("User32\CreatePopupMenu", "ptr") */
	static CreatePopupMenu() => DllCall("User32\CreatePopupMenu", "ptr")

	/** @example DllCall("User32\CreateWindowEx", "uint", dwExStyle, "ptr", StrPtr(lpClassName), "ptr", StrPtr(lpWindowName), "uint", dwStyle, "int", x, "int", y, "int", nWidth, "int", nHeight, "ptr", hWndParent, "ptr", hMenu, "ptr", hInstance, "ptr", lpParam, "ptr") */
	static CreateWindowEx(dwExStyle, lpClassName, lpWindowName, dwStyle, x, y, nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam) => DllCall("User32\CreateWindowEx", "uint", dwExStyle, "ptr", StrPtr(lpClassName), "ptr", StrPtr(lpWindowName), "uint", dwStyle, "int", x, "int", y, "int", nWidth, "int", nHeight, "ptr", hWndParent, "ptr", hMenu, "ptr", hInstance, "ptr", lpParam, "ptr")

	/** @example DllCall("User32\CreateWindowStation", "ptr", StrPtr(lpwinsta), "uint", dwFlags, "uint", dwDesiredAccess, "ptr", lpsa, "ptr") */
	static CreateWindowStation(lpwinsta, dwFlags, dwDesiredAccess, lpsa) => DllCall("User32\CreateWindowStation", "ptr", StrPtr(lpwinsta), "uint", dwFlags, "uint", dwDesiredAccess, "ptr", lpsa, "ptr")

	/** @example DllCall("User32\DdeAbandonTransaction", "uint", idInst, "ptr", hConv, "uint", idTransaction, "int") */
	static DdeAbandonTransaction(idInst, hConv, idTransaction) => DllCall("User32\DdeAbandonTransaction", "uint", idInst, "ptr", hConv, "uint", idTransaction, "int")

	/** @example DllCall("User32\DdeAccessData", "ptr", hData, "ptr", pcbDataSize, "ptr") */
	static DdeAccessData(hData, pcbDataSize) => DllCall("User32\DdeAccessData", "ptr", hData, "ptr", pcbDataSize, "ptr")

	/** @example DllCall("User32\DdeAddData", "ptr", hData, "ptr", pSrc, "uint", cb, "uint", cbOff, "ptr") */
	static DdeAddData(hData, pSrc, cb, cbOff) => DllCall("User32\DdeAddData", "ptr", hData, "ptr", pSrc, "uint", cb, "uint", cbOff, "ptr")

	/** @example DllCall("User32\DdeClientTransaction", "ptr", pData, "uint", cbData, "ptr", hConv, "ptr", hszItem, "uint", wFmt, "uint", wType, "uint", dwTimeout, "ptr", pdwResult, "ptr") */
	static DdeClientTransaction(pData, cbData, hConv, hszItem, wFmt, wType, dwTimeout, pdwResult) => DllCall("User32\DdeClientTransaction", "ptr", pData, "uint", cbData, "ptr", hConv, "ptr", hszItem, "uint", wFmt, "uint", wType, "uint", dwTimeout, "ptr", pdwResult, "ptr")

	/** @example DllCall("User32\DdeCmpStringHandles", "ptr", hsz1, "ptr", hsz2, "int") */
	static DdeCmpStringHandles(hsz1, hsz2) => DllCall("User32\DdeCmpStringHandles", "ptr", hsz1, "ptr", hsz2, "int")

	/** @example DllCall("User32\DdeConnect", "uint", idInst, "ptr", hszService, "ptr", hszTopic, "ptr", pCC, "ptr") */
	static DdeConnect(idInst, hszService, hszTopic, pCC) => DllCall("User32\DdeConnect", "uint", idInst, "ptr", hszService, "ptr", hszTopic, "ptr", pCC, "ptr")

	/** @example DllCall("User32\DdeConnectList", "uint", idInst, "ptr", hszService, "ptr", hszTopic, "ptr", hConvList, "ptr", pCC, "ptr") */
	static DdeConnectList(idInst, hszService, hszTopic, hConvList, pCC) => DllCall("User32\DdeConnectList", "uint", idInst, "ptr", hszService, "ptr", hszTopic, "ptr", hConvList, "ptr", pCC, "ptr")

	/** @example DllCall("User32\DdeCreateDataHandle", "uint", idInst, "ptr", pSrc, "uint", cb, "uint", cbOff, "ptr", hszItem, "uint", wFmt, "uint", afCmd, "ptr") */
	static DdeCreateDataHandle(idInst, pSrc, cb, cbOff, hszItem, wFmt, afCmd) => DllCall("User32\DdeCreateDataHandle", "uint", idInst, "ptr", pSrc, "uint", cb, "uint", cbOff, "ptr", hszItem, "uint", wFmt, "uint", afCmd, "ptr")

	/** @example DllCall("User32\DdeCreateStringHandle", "uint", idInst, "ptr", StrPtr(psz), "int", iCodePage, "ptr") */
	static DdeCreateStringHandle(idInst, psz, iCodePage) => DllCall("User32\DdeCreateStringHandle", "uint", idInst, "ptr", StrPtr(psz), "int", iCodePage, "ptr")

	/** @example DllCall("User32\DdeDisconnect", "ptr", hConv, "int") */
	static DdeDisconnect(hConv) => DllCall("User32\DdeDisconnect", "ptr", hConv, "int")

	/** @example DllCall("User32\DdeDisconnectList", "ptr", hConvList, "int") */
	static DdeDisconnectList(hConvList) => DllCall("User32\DdeDisconnectList", "ptr", hConvList, "int")

	/** @example DllCall("User32\DdeEnableCallback", "uint", idInst, "ptr", hConv, "uint", wCmd, "int") */
	static DdeEnableCallback(idInst, hConv, wCmd) => DllCall("User32\DdeEnableCallback", "uint", idInst, "ptr", hConv, "uint", wCmd, "int")

	/** @example DllCall("User32\DdeFreeDataHandle", "ptr", hData, "int") */
	static DdeFreeDataHandle(hData) => DllCall("User32\DdeFreeDataHandle", "ptr", hData, "int")

	/** @example DllCall("User32\DdeFreeStringHandle", "uint", idInst, "ptr", hsz, "int") */
	static DdeFreeStringHandle(idInst, hsz) => DllCall("User32\DdeFreeStringHandle", "uint", idInst, "ptr", hsz, "int")

	/** @example DllCall("User32\DdeGetData", "ptr", hData, "ptr", pDst, "uint", cbMax, "uint", cbOff, "uint") */
	static DdeGetData(hData, pDst, cbMax, cbOff) => DllCall("User32\DdeGetData", "ptr", hData, "ptr", pDst, "uint", cbMax, "uint", cbOff, "uint")

	/** @example DllCall("User32\DdeGetLastError", "uint", idInst, "uint") */
	static DdeGetLastError(idInst) => DllCall("User32\DdeGetLastError", "uint", idInst, "uint")

	/** @example DllCall("User32\DdeImpersonateClient", "ptr", hConv, "int") */
	static DdeImpersonateClient(hConv) => DllCall("User32\DdeImpersonateClient", "ptr", hConv, "int")

	/** @example DllCall("User32\DdeInitialize", "ptr", pidInst, "ptr", pfnCallback, "uint", afCmd, "uint", ulRes, "uint") */
	static DdeInitialize(pidInst, pfnCallback, afCmd, ulRes) => DllCall("User32\DdeInitialize", "ptr", pidInst, "ptr", pfnCallback, "uint", afCmd, "uint", ulRes, "uint")

	/** @example DllCall("User32\DdeKeepStringHandle", "uint", idInst, "ptr", hsz, "int") */
	static DdeKeepStringHandle(idInst, hsz) => DllCall("User32\DdeKeepStringHandle", "uint", idInst, "ptr", hsz, "int")

	/** @example DllCall("User32\DdeNameService", "uint", idInst, "ptr", hsz1, "ptr", hsz2, "uint", afCmd, "ptr") */
	static DdeNameService(idInst, hsz1, hsz2, afCmd) => DllCall("User32\DdeNameService", "uint", idInst, "ptr", hsz1, "ptr", hsz2, "uint", afCmd, "ptr")

	/** @example DllCall("User32\DdePostAdvise", "uint", idInst, "ptr", hszTopic, "ptr", hszItem, "int") */
	static DdePostAdvise(idInst, hszTopic, hszItem) => DllCall("User32\DdePostAdvise", "uint", idInst, "ptr", hszTopic, "ptr", hszItem, "int")

	/** @example DllCall("User32\DdeQueryConvInfo", "ptr", hConv, "uint", idTransaction, "ptr", pConvInfo, "uint") */
	static DdeQueryConvInfo(hConv, idTransaction, pConvInfo) => DllCall("User32\DdeQueryConvInfo", "ptr", hConv, "uint", idTransaction, "ptr", pConvInfo, "uint")

	/** @example DllCall("User32\DdeQueryNextServer", "ptr", hConvList, "ptr", hConvPrev, "ptr") */
	static DdeQueryNextServer(hConvList, hConvPrev) => DllCall("User32\DdeQueryNextServer", "ptr", hConvList, "ptr", hConvPrev, "ptr")

	/** @example DllCall("User32\DdeQueryString", "uint", idInst, "ptr", hsz, "ptr", StrPtr(psz), "uint", cchMax, "int", iCodePage, "uint") */
	static DdeQueryString(idInst, hsz, psz, cchMax, iCodePage) => DllCall("User32\DdeQueryString", "uint", idInst, "ptr", hsz, "ptr", StrPtr(psz), "uint", cchMax, "int", iCodePage, "uint")

	/** @example DllCall("User32\DdeReconnect", "ptr", hConv, "ptr") */
	static DdeReconnect(hConv) => DllCall("User32\DdeReconnect", "ptr", hConv, "ptr")

	/** @example DllCall("User32\DdeSetQualityOfService", "ptr", hwndClient, "ptr", pqosNew, "ptr", pqosPrev, "int") */
	static DdeSetQualityOfService(hwndClient, pqosNew, pqosPrev) => DllCall("User32\DdeSetQualityOfService", "ptr", hwndClient, "ptr", pqosNew, "ptr", pqosPrev, "int")

	/** @example DllCall("User32\DdeSetUserHandle", "ptr", hConv, "uint", id, "uptr", hUser, "int") */
	static DdeSetUserHandle(hConv, id, hUser) => DllCall("User32\DdeSetUserHandle", "ptr", hConv, "uint", id, "uptr", hUser, "int")

	/** @example DllCall("User32\DdeUnaccessData", "ptr", hData, "int") */
	static DdeUnaccessData(hData) => DllCall("User32\DdeUnaccessData", "ptr", hData, "int")

	/** @example DllCall("User32\DdeUninitialize", "uint", idInst, "int") */
	static DdeUninitialize(idInst) => DllCall("User32\DdeUninitialize", "uint", idInst, "int")

	/** @example DllCall("User32\DefDlgProc", "ptr", hDlg, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr") */
	static DefDlgProc(hDlg, Msg, wParam, lParam) => DllCall("User32\DefDlgProc", "ptr", hDlg, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\DefFrameProc", "ptr", hWnd, "ptr", hWndMDIClient, "uint", uMsg, "uptr", wParam, "uptr", lParam, "ptr") */
	static DefFrameProc(hWnd, hWndMDIClient, uMsg, wParam, lParam) => DllCall("User32\DefFrameProc", "ptr", hWnd, "ptr", hWndMDIClient, "uint", uMsg, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\DefMDIChildProc", "ptr", hWnd, "uint", uMsg, "uptr", wParam, "uptr", lParam, "ptr") */
	static DefMDIChildProc(hWnd, uMsg, wParam, lParam) => DllCall("User32\DefMDIChildProc", "ptr", hWnd, "uint", uMsg, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\DefRawInputProc", "ptr", paRawInput, "int", nInput, "uint", cbSizeHeader, "ptr") */
	static DefRawInputProc(paRawInput, nInput, cbSizeHeader) => DllCall("User32\DefRawInputProc", "ptr", paRawInput, "int", nInput, "uint", cbSizeHeader, "ptr")

	/** @example DllCall("User32\DefWindowProc", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr") */
	static DefWindowProc(hWnd, Msg, wParam, lParam) => DllCall("User32\DefWindowProc", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\DeferWindowPos", "ptr", hWinPosInfo, "ptr", hWnd, "ptr", hWndInsertAfter, "int", x, "int", y, "int", cx, "int", cy, "uint", uFlags, "ptr") */
	static DeferWindowPos(hWinPosInfo, hWnd, hWndInsertAfter, x, y, cx, cy, uFlags) => DllCall("User32\DeferWindowPos", "ptr", hWinPosInfo, "ptr", hWnd, "ptr", hWndInsertAfter, "int", x, "int", y, "int", cx, "int", cy, "uint", uFlags, "ptr")

	/** @example DllCall("User32\DeleteMenu", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "int") */
	static DeleteMenu(hMenu, uPosition, uFlags) => DllCall("User32\DeleteMenu", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "int")

	/** @example DllCall("User32\DeregisterShellHookWindow", "ptr", hwnd, "int") */
	static DeregisterShellHookWindow(hwnd) => DllCall("User32\DeregisterShellHookWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\DestroyAcceleratorTable", "ptr", hAccel, "int") */
	static DestroyAcceleratorTable(hAccel) => DllCall("User32\DestroyAcceleratorTable", "ptr", hAccel, "int")

	/** @example DllCall("User32\DestroyCaret", "int") */
	static DestroyCaret() => DllCall("User32\DestroyCaret", "int")

	/** @example DllCall("User32\DestroyCursor", "ptr", hCursor, "int") */
	static DestroyCursor(hCursor) => DllCall("User32\DestroyCursor", "ptr", hCursor, "int")

	/** @example DllCall("User32\DestroyIcon", "ptr", hIcon, "int") */
	static DestroyIcon(hIcon) => DllCall("User32\DestroyIcon", "ptr", hIcon, "int")

	/** @example DllCall("User32\DestroyMenu", "ptr", hMenu, "int") */
	static DestroyMenu(hMenu) => DllCall("User32\DestroyMenu", "ptr", hMenu, "int")

	/** @example DllCall("User32\DestroyWindow", "ptr", hwnd, "int") */
	static DestroyWindow(hwnd) => DllCall("User32\DestroyWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\DialogBoxIndirectParam", "ptr", hInstance, "ptr", hDialogTemplate, "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", dwInitParam, "ptr") */
	static DialogBoxIndirectParam(hInstance, hDialogTemplate, hWndParent, lpDialogFunc, dwInitParam) => DllCall("User32\DialogBoxIndirectParam", "ptr", hInstance, "ptr", hDialogTemplate, "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", dwInitParam, "ptr")

	/** @example DllCall("User32\DialogBoxParam", "ptr", hInstance, "ptr", StrPtr(lpTemplateName), "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", dwInitParam, "ptr") */
	static DialogBoxParam(hInstance, lpTemplateName, hWndParent, lpDialogFunc, dwInitParam) => DllCall("User32\DialogBoxParam", "ptr", hInstance, "ptr", StrPtr(lpTemplateName), "ptr", hWndParent, "ptr", lpDialogFunc, "uptr", dwInitParam, "ptr")

	/** @example DllCall("User32\DispatchMessage", "ptr", lpmsg, "ptr") */
	static DispatchMessage(lpmsg) => DllCall("User32\DispatchMessage", "ptr", lpmsg, "ptr")

	/** @example DllCall("User32\DlgDirList", "ptr", hDlg, "ptr", StrPtr(lpPathSpec), "int", nIDListBox, "int", nIDStaticPath, "uint", uFileType, "int") */
	static DlgDirList(hDlg, lpPathSpec, nIDListBox, nIDStaticPath, uFileType) => DllCall("User32\DlgDirList", "ptr", hDlg, "ptr", StrPtr(lpPathSpec), "int", nIDListBox, "int", nIDStaticPath, "uint", uFileType, "int")

	/** @example DllCall("User32\DlgDirListComboBox", "ptr", hDlg, "ptr", StrPtr(lpPathSpec), "int", nIDComboBox, "int", nIDStaticPath, "uint", uFiletype, "int") */
	static DlgDirListComboBox(hDlg, lpPathSpec, nIDComboBox, nIDStaticPath, uFiletype) => DllCall("User32\DlgDirListComboBox", "ptr", hDlg, "ptr", StrPtr(lpPathSpec), "int", nIDComboBox, "int", nIDStaticPath, "uint", uFiletype, "int")

	/** @example DllCall("User32\DlgDirSelectComboBoxEx", "ptr", hDlg, "ptr", StrPtr(lpString), "int", nCount, "int", nIDComboBox, "int") */
	static DlgDirSelectComboBoxEx(hDlg, lpString, nCount, nIDComboBox) => DllCall("User32\DlgDirSelectComboBoxEx", "ptr", hDlg, "ptr", StrPtr(lpString), "int", nCount, "int", nIDComboBox, "int")

	/** @example DllCall("User32\DlgDirSelectEx", "ptr", hDlg, "ptr", StrPtr(lpString), "int", nCount, "int", nIDListBox, "int") */
	static DlgDirSelectEx(hDlg, lpString, nCount, nIDListBox) => DllCall("User32\DlgDirSelectEx", "ptr", hDlg, "ptr", StrPtr(lpString), "int", nCount, "int", nIDListBox, "int")

	/** @example DllCall("User32\DragDetect", "ptr", hwnd, "uint64", pt, "int") */
	static DragDetect(hwnd, pt) => DllCall("User32\DragDetect", "ptr", hwnd, "uint64", pt, "int")

	/** @example DllCall("User32\DrawAnimatedRects", "ptr", hwnd, "int", idAni, "ptr", lprcFrom, "ptr", lprcTo, "int") */
	static DrawAnimatedRects(hwnd, idAni, lprcFrom, lprcTo) => DllCall("User32\DrawAnimatedRects", "ptr", hwnd, "int", idAni, "ptr", lprcFrom, "ptr", lprcTo, "int")

	/** @example DllCall("User32\DrawCaption", "ptr", hwnd, "ptr", hdc, "ptr", lprc, "uint", uFlags, "int") */
	static DrawCaption(hwnd, hdc, lprc, uFlags) => DllCall("User32\DrawCaption", "ptr", hwnd, "ptr", hdc, "ptr", lprc, "uint", uFlags, "int")

	/** @example DllCall("User32\DrawEdge", "ptr", hdc, "ptr", qrc, "uint", edge, "uint", grfFlags, "int") */
	static DrawEdge(hdc, qrc, edge, grfFlags) => DllCall("User32\DrawEdge", "ptr", hdc, "ptr", qrc, "uint", edge, "uint", grfFlags, "int")

	/** @example DllCall("User32\DrawFocusRect", "ptr", hDC, "ptr", lprc, "int") */
	static DrawFocusRect(hDC, lprc) => DllCall("User32\DrawFocusRect", "ptr", hDC, "ptr", lprc, "int")

	/** @example DllCall("User32\DrawFrameControl", "ptr", hdc, "ptr", lprc, "uint", uType, "uint", uState, "int") */
	static DrawFrameControl(hdc, lprc, uType, uState) => DllCall("User32\DrawFrameControl", "ptr", hdc, "ptr", lprc, "uint", uType, "uint", uState, "int")

	/** @example DllCall("User32\DrawIcon", "ptr", hDC, "int", X, "int", Y, "ptr", hIcon, "int") */
	static DrawIcon(hDC, X, Y, hIcon) => DllCall("User32\DrawIcon", "ptr", hDC, "int", X, "int", Y, "ptr", hIcon, "int")

	/** @example DllCall("User32\DrawIconEx", "ptr", hdc, "int", xLeft, "int", yTop, "ptr", hIcon, "int", cxWidth, "int", cyWidth, "uint", istepIfAniCur, "ptr", hbrFlickerFreeDraw, "uint", diFlags, "int") */
	static DrawIconEx(hdc, xLeft, yTop, hIcon, cxWidth, cyWidth, istepIfAniCur, hbrFlickerFreeDraw, diFlags) => DllCall("User32\DrawIconEx", "ptr", hdc, "int", xLeft, "int", yTop, "ptr", hIcon, "int", cxWidth, "int", cyWidth, "uint", istepIfAniCur, "ptr", hbrFlickerFreeDraw, "uint", diFlags, "int")

	/** @example DllCall("User32\DrawMenuBar", "ptr", hwnd, "int") */
	static DrawMenuBar(hwnd) => DllCall("User32\DrawMenuBar", "ptr", hwnd, "int")

	/** @example DllCall("User32\DrawState", "ptr", hdc, "ptr", hbr, "ptr", lpOutputFunc, "uptr", lData, "uptr", wData, "int", x, "int", y, "int", cx, "int", cy, "uint", fuFlags, "int") */
	static DrawState(hdc, hbr, lpOutputFunc, lData, wData, x, y, cx, cy, fuFlags) => DllCall("User32\DrawState", "ptr", hdc, "ptr", hbr, "ptr", lpOutputFunc, "uptr", lData, "uptr", wData, "int", x, "int", y, "int", cx, "int", cy, "uint", fuFlags, "int")

	/** @example DllCall("User32\DrawText", "ptr", hDC, "ptr", StrPtr(lpchText), "int", nCount, "ptr", lpRect, "uint", uFormat, "int") */
	static DrawText(hDC, lpchText, nCount, lpRect, uFormat) => DllCall("User32\DrawText", "ptr", hDC, "ptr", StrPtr(lpchText), "int", nCount, "ptr", lpRect, "uint", uFormat, "int")

	/** @example DllCall("User32\DrawTextEx", "ptr", hdc, "ptr", StrPtr(lpchText), "int", cchText, "ptr", lprc, "uint", dwDTFormat, "ptr", lpDTParams, "int") */
	static DrawTextEx(hdc, lpchText, cchText, lprc, dwDTFormat, lpDTParams) => DllCall("User32\DrawTextEx", "ptr", hdc, "ptr", StrPtr(lpchText), "int", cchText, "ptr", lprc, "uint", dwDTFormat, "ptr", lpDTParams, "int")

	/** @example DllCall("User32\EmptyClipboard", "int") */
	static EmptyClipboard() => DllCall("User32\EmptyClipboard", "int")

	/** @example DllCall("User32\EnableMenuItem", "ptr", hMenu, "uint", uIDEnableItem, "uint", uEnable, "int") */
	static EnableMenuItem(hMenu, uIDEnableItem, uEnable) => DllCall("User32\EnableMenuItem", "ptr", hMenu, "uint", uIDEnableItem, "uint", uEnable, "int")

	/** @example DllCall("User32\EnableScrollBar", "ptr", hWnd, "uint", wSBflags, "uint", wArrows, "int") */
	static EnableScrollBar(hWnd, wSBflags, wArrows) => DllCall("User32\EnableScrollBar", "ptr", hWnd, "uint", wSBflags, "uint", wArrows, "int")

	/** @example DllCall("User32\EnableWindow", "ptr", hWnd, "int", bEnable, "int") */
	static EnableWindow(hWnd, bEnable) => DllCall("User32\EnableWindow", "ptr", hWnd, "int", bEnable, "int")

	/** @example DllCall("User32\EndDeferWindowPos", "ptr", hWinPosInfo, "int") */
	static EndDeferWindowPos(hWinPosInfo) => DllCall("User32\EndDeferWindowPos", "ptr", hWinPosInfo, "int")

	/** @example DllCall("User32\EndDialog", "ptr", hDlg, "ptr", nResult, "int") */
	static EndDialog(hDlg, nResult) => DllCall("User32\EndDialog", "ptr", hDlg, "ptr", nResult, "int")

	/** @example DllCall("User32\EndMenu", "int") */
	static EndMenu() => DllCall("User32\EndMenu", "int")

	/** @example DllCall("User32\EndPaint", "ptr", hWnd, "ptr", lpPaint, "int") */
	static EndPaint(hWnd, lpPaint) => DllCall("User32\EndPaint", "ptr", hWnd, "ptr", lpPaint, "ptr")

	/** @example DllCall("User32\EndTask", "ptr", hWnd, "int", fShutDown, "int", fForce, "int") */
	static EndTask(hWnd, fShutDown, fForce) => DllCall("User32\EndTask", "ptr", hWnd, "int", fShutDown, "int", fForce, "int")

	/** @example DllCall("User32\EnumChildWindows", "ptr", hWndParent, "ptr", lpEnumFunc, "uptr", lParam, "int") */
	static EnumChildWindows(hWndParent, lpEnumFunc, lParam) => DllCall("User32\EnumChildWindows", "ptr", hWndParent, "ptr", lpEnumFunc, "uptr", lParam, "int")

	/** @example DllCall("User32\EnumClipboardFormats", "uint", format, "uint") */
	static EnumClipboardFormats(format) => DllCall("User32\EnumClipboardFormats", "uint", format, "uint")

	/** @example DllCall("User32\EnumDesktopWindows", "ptr", hDesktop, "ptr", lpfn, "uptr", lParam, "int") */
	static EnumDesktopWindows(hDesktop, lpfn, lParam) => DllCall("User32\EnumDesktopWindows", "ptr", hDesktop, "ptr", lpfn, "uptr", lParam, "int")

	/** @example DllCall("User32\EnumDesktops", "ptr", hwinsta, "ptr", lpEnumFunc, "uptr", lParam, "int") */
	static EnumDesktops(hwinsta, lpEnumFunc, lParam) => DllCall("User32\EnumDesktops", "ptr", hwinsta, "ptr", lpEnumFunc, "uptr", lParam, "int")

	/** @example DllCall("User32\EnumDisplayDevices", "ptr", StrPtr(lpDevice), "uint", iDevNum, "ptr", lpDisplayDevice, "uint", dwFlags, "int") */
	static EnumDisplayDevices(lpDevice, iDevNum, lpDisplayDevice, dwFlags) => DllCall("User32\EnumDisplayDevices", "ptr", StrPtr(lpDevice), "uint", iDevNum, "ptr", lpDisplayDevice, "uint", dwFlags, "int")

	/** @example DllCall("User32\EnumDisplayMonitors", "ptr", hdc, "ptr", lprcClip, "ptr", lpfnEnum, "uptr", dwData, "int") */
	static EnumDisplayMonitors(hdc, lprcClip, lpfnEnum, dwData) => DllCall("User32\EnumDisplayMonitors", "ptr", hdc, "ptr", lprcClip, "ptr", lpfnEnum, "uptr", dwData, "int")

	/** @example DllCall("User32\EnumDisplaySettings", "ptr", StrPtr(lpszDeviceName), "uint", iModeNum, "ptr", lpDevMode, "int") */
	static EnumDisplaySettings(lpszDeviceName, iModeNum, lpDevMode) => DllCall("User32\EnumDisplaySettings", "ptr", StrPtr(lpszDeviceName), "uint", iModeNum, "ptr", lpDevMode, "int")

	/** @example DllCall("User32\EnumDisplaySettingsEx", "ptr", StrPtr(lpszDeviceName), "uint", iModeNum, "ptr", lpDevMode, "uint", dwFlags, "int") */
	static EnumDisplaySettingsEx(lpszDeviceName, iModeNum, lpDevMode, dwFlags) => DllCall("User32\EnumDisplaySettingsEx", "ptr", StrPtr(lpszDeviceName), "uint", iModeNum, "ptr", lpDevMode, "uint", dwFlags, "int")

	/** @example DllCall("User32\EnumProps", "ptr", hWnd, "ptr", lpEnumFunc, "int") */
	static EnumProps(hWnd, lpEnumFunc) => DllCall("User32\EnumProps", "ptr", hWnd, "ptr", lpEnumFunc, "int")

	/** @example DllCall("User32\EnumPropsEx", "ptr", hWnd, "ptr", lpEnumFunc, "uptr", lParam, "int") */
	static EnumPropsEx(hWnd, lpEnumFunc, lParam) => DllCall("User32\EnumPropsEx", "ptr", hWnd, "ptr", lpEnumFunc, "uptr", lParam, "int")

	/** @example DllCall("User32\EnumThreadWindows", "uint", dwThreadId, "ptr", lpfn, "uptr", lParam, "int") */
	static EnumThreadWindows(dwThreadId, lpfn, lParam) => DllCall("User32\EnumThreadWindows", "uint", dwThreadId, "ptr", lpfn, "uptr", lParam, "int")

	/** @example DllCall("User32\EnumWindowStations", "ptr", lpEnumFunc, "uptr", lParam, "int") */
	static EnumWindowStations(lpEnumFunc, lParam) => DllCall("User32\EnumWindowStations", "ptr", lpEnumFunc, "uptr", lParam, "int")

	/** @example DllCall("User32\EnumWindows", "ptr", lpEnumFunc, "uptr", lParam, "int") */
	static EnumWindows(lpEnumFunc, lParam) => DllCall("User32\EnumWindows", "ptr", lpEnumFunc, "uptr", lParam, "int")

	/** @example DllCall("User32\EqualRect", "ptr", lprc1, "ptr", lprc2, "int") */
	static EqualRect(lprc1, lprc2) => DllCall("User32\EqualRect", "ptr", lprc1, "ptr", lprc2, "int")

	/** @example DllCall("User32\ExcludeUpdateRgn", "ptr", hDC, "ptr", hWnd, "int") */
	static ExcludeUpdateRgn(hDC, hWnd) => DllCall("User32\ExcludeUpdateRgn", "ptr", hDC, "ptr", hWnd, "int")

	/** @example DllCall("User32\ExitWindowsEx", "uint", uFlags, "uint", dwReason, "int") */
	static ExitWindowsEx(uFlags, dwReason) => DllCall("User32\ExitWindowsEx", "uint", uFlags, "uint", dwReason, "int")

	/** @example DllCall("User32\FillRect", "ptr", hDC, "ptr", lprc, "ptr", hbr, "int") */
	static FillRect(hDC, lprc, hbr) => DllCall("User32\FillRect", "ptr", hDC, "ptr", lprc, "ptr", hbr, "int")

	/** @example DllCall("User32\FindWindow", "ptr", StrPtr(lpClassName), "ptr", StrPtr(lpWindowName), "ptr") */
	static FindWindow(lpClassName, lpWindowName) => DllCall("User32\FindWindow", "ptr", StrPtr(lpClassName), "ptr", StrPtr(lpWindowName), "ptr")

	/** @example DllCall("User32\FindWindowEx", "ptr", hwndParent, "ptr", hwndChildAfter, "ptr", StrPtr(lpszClass), "ptr", StrPtr(lpszWindow), "ptr") */
	static FindWindowEx(hwndParent, hwndChildAfter, lpszClass, lpszWindow) => DllCall("User32\FindWindowEx", "ptr", hwndParent, "ptr", hwndChildAfter, "ptr", StrPtr(lpszClass), "ptr", StrPtr(lpszWindow), "ptr")

	/** @example DllCall("User32\FlashWindow", "ptr", hWnd, "int", bInvert, "int") */
	static FlashWindow(hWnd, bInvert) => DllCall("User32\FlashWindow", "ptr", hWnd, "int", bInvert, "int")

	/** @example DllCall("User32\FlashWindowEx", "ptr", pfwi, "int") */
	static FlashWindowEx(pfwi) => DllCall("User32\FlashWindowEx", "ptr", pfwi, "int")

	/** @example DllCall("User32\FrameRect", "ptr", hDC, "ptr", lprc, "ptr", hbr, "int") */
	static FrameRect(hDC, lprc, hbr) => DllCall("User32\FrameRect", "ptr", hDC, "ptr", lprc, "ptr", hbr, "int")

	/** @example DllCall("User32\FreeDDElParam", "uint", msg, "uptr", lParam, "int") */
	static FreeDDElParam(msg, lParam) => DllCall("User32\FreeDDElParam", "uint", msg, "uptr", lParam, "int")

	/** @example DllCall("User32\GetActiveWindow", "ptr") */
	static GetActiveWindow() => DllCall("User32\GetActiveWindow", "ptr")

	/** @example DllCall("User32\GetAltTabInfo", "ptr", hwnd, "int", iItem, "ptr", pati, "ptr", StrPtr(pszItemText), "uint", cchItemText, "int") */
	static GetAltTabInfo(hwnd, iItem, pati, pszItemText, cchItemText) => DllCall("User32\GetAltTabInfo", "ptr", hwnd, "int", iItem, "ptr", pati, "ptr", StrPtr(pszItemText), "uint", cchItemText, "int")

	/** @example DllCall("User32\GetAncestor", "ptr", hwnd, "uint", gaFlags, "ptr") */
	static GetAncestor(hwnd, gaFlags) => DllCall("User32\GetAncestor", "ptr", hwnd, "uint", gaFlags, "ptr")

	/** @example DllCall("User32\GetAsyncKeyState", "int", vKey, "short") */
	static GetAsyncKeyState(vKey) => DllCall("User32\GetAsyncKeyState", "int", vKey, "short")

	/** @example DllCall("User32\GetCapture", "ptr") */
	static GetCapture() => DllCall("User32\GetCapture", "ptr")

	/** @example DllCall("User32\GetCaretBlinkTime", "uint") */
	static GetCaretBlinkTime() => DllCall("User32\GetCaretBlinkTime", "uint")

	/** @example DllCall("User32\GetCaretPos", "ptr", lpPoint, "int") */
	static GetCaretPos(lpPoint) => DllCall("User32\GetCaretPos", "ptr", lpPoint, "int")

	/** @example DllCall("User32\GetClassInfo", "ptr", hInstance, "ptr", StrPtr(lpClassName), "ptr", lpWndClass, "int") */
	static GetClassInfo(hInstance, lpClassName, lpWndClass) => DllCall("User32\GetClassInfo", "ptr", hInstance, "ptr", StrPtr(lpClassName), "ptr", lpWndClass, "int")

	/** @example DllCall("User32\GetClassInfoEx", "ptr", hinst, "ptr", StrPtr(lpszClass), "ptr", lpwcx, "int") */
	static GetClassInfoEx(hinst, lpszClass, lpwcx) => DllCall("User32\GetClassInfoEx", "ptr", hinst, "ptr", StrPtr(lpszClass), "ptr", lpwcx, "int")

	/** @example DllCall("User32\GetClassLong", "ptr", hWnd, "int", nIndex, "uint") */
	static GetClassLong(hWnd, nIndex) => DllCall("User32\GetClassLong", "ptr", hWnd, "int", nIndex, "uint")

	/** @example DllCall("User32\GetClassName", "ptr", hWnd, "ptr", StrPtr(lpClassName), "int", nMaxCount, "int") */
	static GetClassName(hWnd, lpClassName, nMaxCount) => DllCall("User32\GetClassName", "ptr", hWnd, "ptr", StrPtr(lpClassName), "int", nMaxCount, "int")

	/** @example DllCall("User32\GetClassWord", "ptr", hWnd, "int", nIndex, "ushort") */
	static GetClassWord(hWnd, nIndex) => DllCall("User32\GetClassWord", "ptr", hWnd, "int", nIndex, "ushort")

	/** @example DllCall("User32\GetClientRect", "ptr", hWnd, "ptr", lpRect, "int") */
	static GetClientRect(hWnd, lpRect) => DllCall("User32\GetClientRect", "ptr", hWnd, "ptr", lpRect, "int")

	/** @example DllCall("User32\GetClipCursor", "ptr", lpRect, "int") */
	static GetClipCursor(lpRect) => DllCall("User32\GetClipCursor", "ptr", lpRect, "int")

	/** @example DllCall("User32\GetClipboardData", "uint", uFormat, "ptr") */
	static GetClipboardData(uFormat) => DllCall("User32\GetClipboardData", "uint", uFormat, "ptr")

	/** @example DllCall("User32\GetClipboardFormatName", "uint", format, "ptr", StrPtr(lpszFormatName), "int", cchMaxCount, "int") */
	static GetClipboardFormatName(format, lpszFormatName, cchMaxCount) => DllCall("User32\GetClipboardFormatName", "uint", format, "ptr", StrPtr(lpszFormatName), "int", cchMaxCount, "int")

	/** @example DllCall("User32\GetClipboardOwner", "ptr") */
	static GetClipboardOwner() => DllCall("User32\GetClipboardOwner", "ptr")

	/** @example DllCall("User32\GetClipboardSequenceNumber", "uint") */
	static GetClipboardSequenceNumber() => DllCall("User32\GetClipboardSequenceNumber", "uint")

	/** @example DllCall("User32\GetClipboardViewer", "ptr") */
	static GetClipboardViewer() => DllCall("User32\GetClipboardViewer", "ptr")

	/** @example DllCall("User32\GetComboBoxInfo", "ptr", hwndCombo, "ptr", pcbi, "int") */
	static GetComboBoxInfo(hwndCombo, pcbi) => DllCall("User32\GetComboBoxInfo", "ptr", hwndCombo, "ptr", pcbi, "int")

	/** @example DllCall("User32\GetCursor", "ptr") */
	static GetCursor() => DllCall("User32\GetCursor", "ptr")

	/** @example DllCall("User32\GetCursorInfo", "ptr", pci, "int") */
	static GetCursorInfo(pci) => DllCall("User32\GetCursorInfo", "ptr", pci, "int")

	/** @example DllCall("User32\GetCursorPos", "ptr", lpPoint, "int") */
	static GetCursorPos(lpPoint) => DllCall("User32\GetCursorPos", "ptr", lpPoint, "int")

	/** @example DllCall("User32\GetDC", "ptr", hwnd, "ptr") */
	static GetDC(hwnd := "") {
		if hWnd
			return DllCall("User32\GetDC", "ptr", hwnd, "ptr")
		else
			return DllCall("User32\GetDC", "ptr")
	}

	/** @example DllCall("User32\GetDCEx", "ptr", hWnd, "ptr", hrgnClip, "uint", flags, "ptr") */
	static GetDCEx(hWnd, hrgnClip, flags) => DllCall("User32\GetDCEx", "ptr", hWnd, "ptr", hrgnClip, "uint", flags, "ptr")

	/** @example DllCall("User32\GetDesktopWindow", "ptr") */
	static GetDesktopWindow() => DllCall("User32\GetDesktopWindow", "ptr")

	/** @example DllCall("User32\GetDialogBaseUnits", "int") */
	static GetDialogBaseUnits() => DllCall("User32\GetDialogBaseUnits", "int")

	/** @example DllCall("User32\GetDlgCtrlID", "ptr", hwndCtl, "int") */
	static GetDlgCtrlID(hwndCtl) => DllCall("User32\GetDlgCtrlID", "ptr", hwndCtl, "int")

	/** @example DllCall("User32\GetDlgItem", "ptr", hDlg, "int", nIDDlgItem, "ptr") */
	static GetDlgItem(hDlg, nIDDlgItem) => DllCall("User32\GetDlgItem", "ptr", hDlg, "int", nIDDlgItem, "ptr")

	/** @example DllCall("User32\GetDlgItemInt", "ptr", hDlg, "int", nIDDlgItem, "int*", &lpTranslated, "int", bSigned, "uint") */
	static GetDlgItemInt(hDlg, nIDDlgItem, &lpTranslated, bSigned) => DllCall("User32\GetDlgItemInt", "ptr", hDlg, "int", nIDDlgItem, "int*", &lpTranslated, "int", bSigned, "uint")

	/** @example DllCall("User32\GetDlgItemText", "ptr", hDlg, "int", nIDDlgItem, "ptr", StrPtr(lpString), "int", nMaxCount, "uint") */
	static GetDlgItemText(hDlg, nIDDlgItem, lpString, nMaxCount) => DllCall("User32\GetDlgItemText", "ptr", hDlg, "int", nIDDlgItem, "ptr", StrPtr(lpString), "int", nMaxCount, "uint")

	/** @example DllCall("User32\GetDoubleClickTime", "uint") */
	static GetDoubleClickTime() => DllCall("User32\GetDoubleClickTime", "uint")

	/** @example DllCall("User32\GetFocus", "ptr") */
	static GetFocus() => DllCall("User32\GetFocus", "ptr")

	/** @example DllCall("User32\GetForegroundWindow", "ptr") */
	static GetForegroundWindow() => DllCall("User32\GetForegroundWindow", "ptr")

	; /** @example DllCall("User32\GetGUIThreadInfo", "uint", idThread, "ptr", lpgui, "int") */
	; static GetGUIThreadInfo(idThread := 0, &lpgui?) => (DllCall("User32\GetGUIThreadInfo", "uint", idThread, StructOut(GUITHREADINFO), &_lpgui), lpgui := _lpgui)

	/** @example DllCall("User32\GetGestureConfig", "ptr", hwnd, "uint", dwReserved, "uint", dwFlags, "ptr", pcIDs, "ptr", pGestureConfig, "uint", cbSize, "int") */
	static GetGestureConfig(hwnd, dwReserved, dwFlags, pcIDs, pGestureConfig, cbSize) => DllCall("User32\GetGestureConfig", "ptr", hwnd, "uint", dwReserved, "uint", dwFlags, "ptr", pcIDs, "ptr", pGestureConfig, "uint", cbSize, "int")

	/** @example DllCall("User32\GetGestureExtraArgs", "ptr", hGestureInfo, "uint", cbExtraArgs, "ptr", pExtraArgs, "int") */
	static GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs) => DllCall("User32\GetGestureExtraArgs", "ptr", hGestureInfo, "uint", cbExtraArgs, "ptr", pExtraArgs, "int")

	/** @example DllCall("User32\GetGestureInfo", "ptr", hGestureInfo, "ptr", pGestureInfo, "int") */
	static GetGestureInfo(hGestureInfo, pGestureInfo) => DllCall("User32\GetGestureInfo", "ptr", hGestureInfo, "ptr", pGestureInfo, "int")

	/** @example DllCall("User32\GetGuiResources", "ptr", hProcess, "uint", uiFlags, "uint") */
	static GetGuiResources(hProcess, uiFlags) => DllCall("User32\GetGuiResources", "ptr", hProcess, "uint", uiFlags, "uint")

	/** @example DllCall("User32\GetIconInfo", "ptr", hIcon, "ptr", piconinfo, "int") */
	static GetIconInfo(hIcon, piconinfo) => DllCall("User32\GetIconInfo", "ptr", hIcon, "ptr", piconinfo, "int")

	/** @example DllCall("User32\GetIconInfoEx", "ptr", hIcon, "ptr", piconinfoex, "int") */
	static GetIconInfoEx(hIcon, piconinfoex) => DllCall("User32\GetIconInfoEx", "ptr", hIcon, "ptr", piconinfoex, "int")

	/** @example DllCall("User32\GetInputState", "int") */
	static GetInputState() => DllCall("User32\GetInputState", "int")

	/** @example DllCall("User32\GetKBCodePage", "uint") */
	static GetKBCodePage() => DllCall("User32\GetKBCodePage", "uint")

	/** @example DllCall("User32\GetKeyNameText", "int", lParam, "ptr", StrPtr(lpString), "int", cchSize, "int") */
	static GetKeyNameText(lParam, lpString, cchSize) => DllCall("User32\GetKeyNameText", "int", lParam, "ptr", StrPtr(lpString), "int", cchSize, "int")

	/** @example DllCall("User32\GetKeyState_", "int", nVirtKey, "short") */
	static GetKeyState_(nVirtKey) => DllCall("User32\GetKeyState_", "int", nVirtKey, "short")

	/** @example DllCall("User32\GetKeyboardLayout", "uint", idThread, "ptr") */
	static GetKeyboardLayout(idThread) => DllCall("User32\GetKeyboardLayout", "uint", idThread, "ptr")

	/** @example DllCall("User32\GetKeyboardLayoutList", "int", nBuff, "ptr", lpList, "int") */
	static GetKeyboardLayoutList(nBuff, lpList) => DllCall("User32\GetKeyboardLayoutList", "int", nBuff, "ptr", lpList, "int")

	/** @example DllCall("User32\GetKeyboardLayoutName", "ptr", StrPtr(pwszKLID), "int") */
	static GetKeyboardLayoutName(pwszKLID) => DllCall("User32\GetKeyboardLayoutName", "ptr", StrPtr(pwszKLID), "int")

	/** @example DllCall("User32\GetKeyboardState", "ptr", lpKeyState, "int") */
	static GetKeyboardState(lpKeyState) => DllCall("User32\GetKeyboardState", "ptr", lpKeyState, "int")

	/** @example DllCall("User32\GetKeyboardType", "int", nTypeFlag, "int") */
	static GetKeyboardType(nTypeFlag) => DllCall("User32\GetKeyboardType", "int", nTypeFlag, "int")

	/** @example DllCall("User32\GetLastActivePopup", "ptr", hwnd, "ptr") */
	static GetLastActivePopup(hwnd) => DllCall("User32\GetLastActivePopup", "ptr", hwnd, "ptr")

	/** @example DllCall("User32\GetLastInputInfo", "ptr", plii, "int") */
	static GetLastInputInfo(plii) => DllCall("User32\GetLastInputInfo", "ptr", plii, "int")

	/** @example DllCall("User32\GetLayeredWindowAttributes", "ptr", hwnd, "uint*", &pcrKey, "uchar*", &pbAlpha, "uint*", &pdwFlags, "int") */
	static GetLayeredWindowAttributes(hwnd, &pcrKey, &pbAlpha, &pdwFlags) => DllCall("User32\GetLayeredWindowAttributes", "ptr", hwnd, "uint*", &pcrKey, "uchar*", &pbAlpha, "uint*", &pdwFlags, "int")

	/** @example DllCall("User32\GetListBoxInfo", "ptr", hwnd, "uint") */
	static GetListBoxInfo(hwnd) => DllCall("User32\GetListBoxInfo", "ptr", hwnd, "uint")

	/** @example DllCall("User32\GetMenu", "ptr", hwnd, "ptr") */
	static GetMenu(hwnd) => DllCall("User32\GetMenu", "ptr", hwnd, "ptr")

	/** @example DllCall("User32\GetMenuBarInfo", "ptr", hwnd, "int", idObject, "int", idItem, "ptr", pmbi, "int") */
	static GetMenuBarInfo(hwnd, idObject, idItem, pmbi) => DllCall("User32\GetMenuBarInfo", "ptr", hwnd, "int", idObject, "int", idItem, "ptr", pmbi, "int")

	/** @example DllCall("User32\GetMenuCheckMarkDimensions", "int") */
	static GetMenuCheckMarkDimensions() => DllCall("User32\GetMenuCheckMarkDimensions", "int")

	/** @example DllCall("User32\GetMenuContextHelpId", "ptr", hmenu, "uint") */
	static GetMenuContextHelpId(hmenu) => DllCall("User32\GetMenuContextHelpId", "ptr", hmenu, "uint")

	/** @example DllCall("User32\GetMenuDefaultItem", "ptr", hMenu, "uint", fByPos, "uint", gmdiFlags, "uint") */
	static GetMenuDefaultItem(hMenu, fByPos, gmdiFlags) => DllCall("User32\GetMenuDefaultItem", "ptr", hMenu, "uint", fByPos, "uint", gmdiFlags, "uint")

	/** @example DllCall("User32\GetMenuInfo", "ptr", hmenu, "ptr", lpcmi, "int") */
	static GetMenuInfo(hmenu, lpcmi) => DllCall("User32\GetMenuInfo", "ptr", hmenu, "ptr", lpcmi, "int")

	/** @example DllCall("User32\GetMenuItemCount", "ptr", hMenu, "int") */
	static GetMenuItemCount(hMenu) => DllCall("User32\GetMenuItemCount", "ptr", hMenu, "int")

	/** @example DllCall("User32\GetMenuItemID", "ptr", hMenu, "int", nPos, "uint") */
	static GetMenuItemID(hMenu, nPos) => DllCall("User32\GetMenuItemID", "ptr", hMenu, "int", nPos, "uint")

	/** @example DllCall("User32\GetMenuItemInfo", "ptr", hMenu, "uint", uItem, "int", fByPosition, "ptr", lpmii, "int") */
	static GetMenuItemInfo(hMenu, uItem, fByPosition, lpmii) => DllCall("User32\GetMenuItemInfo", "ptr", hMenu, "uint", uItem, "int", fByPosition, "ptr", lpmii, "int")

	/** @example DllCall("User32\GetMenuItemRect", "ptr", hWnd, "ptr", hMenu, "uint", uItem, "ptr", lprcItem, "int") */
	static GetMenuItemRect(hWnd, hMenu, uItem, lprcItem) => DllCall("User32\GetMenuItemRect", "ptr", hWnd, "ptr", hMenu, "uint", uItem, "ptr", lprcItem, "int")

	/** @example DllCall("User32\GetMenuState", "ptr", hMenu, "uint", uId, "uint", uFlags, "uint") */
	static GetMenuState(hMenu, uId, uFlags) => DllCall("User32\GetMenuState", "ptr", hMenu, "uint", uId, "uint", uFlags, "uint")

	/** @example DllCall("User32\GetMenuString", "ptr", hMenu, "uint", uIDItem, "ptr", StrPtr(lpString), "int", nMaxCount, "uint", uFlag, "int") */
	static GetMenuString(hMenu, uIDItem, lpString, nMaxCount, uFlag) => DllCall("User32\GetMenuString", "ptr", hMenu, "uint", uIDItem, "ptr", StrPtr(lpString), "int", nMaxCount, "uint", uFlag, "int")

	/** @example DllCall("User32\GetMessage", "ptr", lpMsg, "ptr", hWnd, "uint", wMsgFilterMin, "uint", wMsgFilterMax, "int") */
	static GetMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax) => DllCall("User32\GetMessage", "ptr", lpMsg, "ptr", hWnd, "uint", wMsgFilterMin, "uint", wMsgFilterMax, "int")

	/** @example DllCall("User32\GetMessageExtraInfo", "uptr") */
	static GetMessageExtraInfo() => DllCall("User32\GetMessageExtraInfo", "uptr")

	/** @example DllCall("User32\GetMessagePos", "uint") */
	static GetMessagePos() => DllCall("User32\GetMessagePos", "uint")

	/** @example DllCall("User32\GetMessageTime", "int") */
	static GetMessageTime() => DllCall("User32\GetMessageTime", "int")

	/** @example DllCall("User32\GetMonitorInfo", "ptr", hMonitor, "ptr", lpmi, "int") */
	static GetMonitorInfo(hMonitor, lpmi) => DllCall("User32\GetMonitorInfo", "ptr", hMonitor, "ptr", lpmi, "int")

	/** @example DllCall("User32\GetMouseMovePointsEx", "uint", cbSize, "ptr", lppt, "ptr", lpptBuf, "int", nBufPoints, "uint", resolution, "int") */
	static GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution) => DllCall("User32\GetMouseMovePointsEx", "uint", cbSize, "ptr", lppt, "ptr", lpptBuf, "int", nBufPoints, "uint", resolution, "int")

	/** @example DllCall("User32\GetNextDlgGroupItem", "ptr", hDlg, "ptr", hCtl, "int", bPrevious, "ptr") */
	static GetNextDlgGroupItem(hDlg, hCtl, bPrevious) => DllCall("User32\GetNextDlgGroupItem", "ptr", hDlg, "ptr", hCtl, "int", bPrevious, "ptr")

	/** @example DllCall("User32\GetNextDlgTabItem", "ptr", hDlg, "ptr", hCtl, "int", bPrevious, "ptr") */
	static GetNextDlgTabItem(hDlg, hCtl, bPrevious) => DllCall("User32\GetNextDlgTabItem", "ptr", hDlg, "ptr", hCtl, "int", bPrevious, "ptr")

	/** @example DllCall("User32\GetOpenClipboardWindow", "ptr") */
	static GetOpenClipboardWindow() => DllCall("User32\GetOpenClipboardWindow", "ptr")

	/** @example DllCall("User32\GetParent", "ptr", hwnd, "ptr") */
	static GetParent(hwnd) => DllCall("User32\GetParent", "ptr", hwnd, "ptr")

	/** @example DllCall("User32\GetPhysicalCursorPos", "ptr", lpPoint, "int") */
	static GetPhysicalCursorPos(lpPoint) => DllCall("User32\GetPhysicalCursorPos", "ptr", lpPoint, "int")

	/** @example DllCall("User32\GetPriorityClipboardFormat", "uint*", &paFormatPriorityList, "int", cFormats, "int") */
	static GetPriorityClipboardFormat(&paFormatPriorityList, cFormats) => DllCall("User32\GetPriorityClipboardFormat", "uint*", &paFormatPriorityList, "int", cFormats, "int")

	/** @example DllCall("User32\GetProcessDefaultLayout", "uint*", &pdwDefaultLayout, "int") */
	static GetProcessDefaultLayout(&pdwDefaultLayout) => DllCall("User32\GetProcessDefaultLayout", "uint*", &pdwDefaultLayout, "int")

	/** @example DllCall("User32\GetProcessWindowStation", "ptr") */
	static GetProcessWindowStation() => DllCall("User32\GetProcessWindowStation", "ptr")

	/** @example DllCall("User32\GetProp", "ptr", hWnd, "ptr", StrPtr(lpString), "ptr") */
	static GetProp(hWnd, lpString) => DllCall("User32\GetProp", "ptr", hWnd, "ptr", StrPtr(lpString), "ptr")

	/** @example DllCall("User32\GetQueueStatus", "uint", flags, "uint") */
	static GetQueueStatus(flags) => DllCall("User32\GetQueueStatus", "uint", flags, "uint")

	/** @example DllCall("User32\GetRawInputBuffer", "ptr", pData, "ptr", pcbSize, "uint", cbSizeHeader, "uint") */
	static GetRawInputBuffer(pData, pcbSize, cbSizeHeader) => DllCall("User32\GetRawInputBuffer", "ptr", pData, "ptr", pcbSize, "uint", cbSizeHeader, "uint")

	/** @example DllCall("User32\GetRawInputData", "ptr", hRawInput, "uint", uiCommand, "ptr", pData, "ptr", pcbSize, "uint", cbSizeHeader, "uint") */
	static GetRawInputData(hRawInput, uiCommand, pData, pcbSize, cbSizeHeader) => DllCall("User32\GetRawInputData", "ptr", hRawInput, "uint", uiCommand, "ptr", pData, "ptr", pcbSize, "uint", cbSizeHeader, "uint")

	/** @example DllCall("User32\GetRawInputDeviceInfo", "ptr", hDevice, "uint", uiCommand, "ptr", pData, "ptr", pcbSize, "uint") */
	static GetRawInputDeviceInfo(hDevice, uiCommand, pData, pcbSize) => DllCall("User32\GetRawInputDeviceInfo", "ptr", hDevice, "uint", uiCommand, "ptr", pData, "ptr", pcbSize, "uint")

	/** @example DllCall("User32\GetRawInputDeviceList", "ptr", pRawInputDeviceList, "ptr", puiNumDevices, "uint", cbSize, "uint") */
	static GetRawInputDeviceList(pRawInputDeviceList, puiNumDevices, cbSize) => DllCall("User32\GetRawInputDeviceList", "ptr", pRawInputDeviceList, "ptr", puiNumDevices, "uint", cbSize, "uint")

	/** @example DllCall("User32\GetRegisteredRawInputDevices", "ptr", pRawInputDevices, "ptr", puiNumDevices, "uint", cbSize, "uint") */
	static GetRegisteredRawInputDevices(pRawInputDevices, puiNumDevices, cbSize) => DllCall("User32\GetRegisteredRawInputDevices", "ptr", pRawInputDevices, "ptr", puiNumDevices, "uint", cbSize, "uint")

	/** @example DllCall("User32\GetScrollBarInfo", "ptr", hwnd, "int", idObject, "ptr", psbi, "int") */
	static GetScrollBarInfo(hwnd, idObject, psbi) => DllCall("User32\GetScrollBarInfo", "ptr", hwnd, "int", idObject, "ptr", psbi, "int")

	/** @example DllCall("User32\GetScrollInfo", "ptr", hwnd, "int", fnBar, "ptr", lpsi, "int") */
	static GetScrollInfo(hwnd, fnBar, lpsi) => DllCall("User32\GetScrollInfo", "ptr", hwnd, "int", fnBar, "ptr", lpsi, "int")

	/** @example DllCall("User32\GetScrollPos", "ptr", hWnd, "int", nBar, "int") */
	static GetScrollPos(hWnd, nBar) => DllCall("User32\GetScrollPos", "ptr", hWnd, "int", nBar, "int")

	/** @example DllCall("User32\GetScrollRange", "ptr", hWnd, "int", nBar, "ptr", lpMinPos, "ptr", lpMaxPos, "int") */
	static GetScrollRange(hWnd, nBar, lpMinPos, lpMaxPos) => DllCall("User32\GetScrollRange", "ptr", hWnd, "int", nBar, "ptr", lpMinPos, "ptr", lpMaxPos, "int")

	/** @example DllCall("User32\GetShellWindow", "ptr") */
	static GetShellWindow() => DllCall("User32\GetShellWindow", "ptr")

	/** @example DllCall("User32\GetSubMenu", "ptr", hMenu, "int", nPos, "ptr") */
	static GetSubMenu(hMenu, nPos) => DllCall("User32\GetSubMenu", "ptr", hMenu, "int", nPos, "ptr")

	/** @example DllCall("User32\GetSysColor", "int", nIndex, "uint") */
	static GetSysColor(nIndex) => DllCall("User32\GetSysColor", "int", nIndex, "uint")

	/** @example DllCall("User32\GetSysColorBrush", "int", nIndex, "ptr") */
	static GetSysColorBrush(nIndex) => DllCall("User32\GetSysColorBrush", "int", nIndex, "ptr")

	/** @example DllCall("User32\GetSystemMenu", "ptr", hWnd, "int", bRevert, "ptr") */
	static GetSystemMenu(hWnd, bRevert) => DllCall("User32\GetSystemMenu", "ptr", hWnd, "int", bRevert, "ptr")

	/** @example DllCall("User32\GetSystemMetrics", "int", nIndex, "int") */
	static GetSystemMetrics(nIndex) => DllCall("User32\GetSystemMetrics", "int", nIndex, "int")

	/** @example DllCall("User32\GetTabbedTextExtent", "ptr", hDC, "ptr", StrPtr(lpString), "int", nCount, "int", nTabPositions, "ptr", lpnTabStopPositions, "uint") */
	static GetTabbedTextExtent(hDC, lpString, nCount, nTabPositions, lpnTabStopPositions) => DllCall("User32\GetTabbedTextExtent", "ptr", hDC, "ptr", StrPtr(lpString), "int", nCount, "int", nTabPositions, "ptr", lpnTabStopPositions, "uint")

	/** @example DllCall("User32\GetThreadDesktop", "uint", dwThreadId, "ptr") */
	static GetThreadDesktop(dwThreadId) => DllCall("User32\GetThreadDesktop", "uint", dwThreadId, "ptr")

	/** @example DllCall("User32\GetTitleBarInfo", "ptr", hwnd, "ptr", pti, "int") */
	static GetTitleBarInfo(hwnd, pti) => DllCall("User32\GetTitleBarInfo", "ptr", hwnd, "ptr", pti, "int")

	/** @example DllCall("User32\GetTopWindow", "ptr", hWnd, "ptr") */
	static GetTopWindow(hWnd) => DllCall("User32\GetTopWindow", "ptr", hWnd, "ptr")

	/** @example DllCall("User32\GetTouchInputInfo", "ptr", hTouchInput, "uint", cInputs, "ptr", pInputs, "int", cbSize, "int") */
	static GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize) => DllCall("User32\GetTouchInputInfo", "ptr", hTouchInput, "uint", cInputs, "ptr", pInputs, "int", cbSize, "int")

	/** @example DllCall("User32\GetUpdateRect", "ptr", hWnd, "ptr", lpRect, "int", bErase, "int") */
	static GetUpdateRect(hWnd, lpRect, bErase) => DllCall("User32\GetUpdateRect", "ptr", hWnd, "ptr", lpRect, "int", bErase, "int")

	/** @example DllCall("User32\GetUpdateRgn", "ptr", hWnd, "ptr", hRgn, "int", bErase, "int") */
	static GetUpdateRgn(hWnd, hRgn := 0, bErase := 1) => DllCall("User32\GetUpdateRgn", "ptr", hWnd, "ptr", hRgn, "int", bErase, "int")

	/** @example DllCall("User32\GetUpdatedClipboardFormats", "ptr", lpuiFormats, "uint", cFormats, "ptr", pcFormatsOut, "int") */
	static GetUpdatedClipboardFormats(lpuiFormats, cFormats, pcFormatsOut) => DllCall("User32\GetUpdatedClipboardFormats", "ptr", lpuiFormats, "uint", cFormats, "ptr", pcFormatsOut, "int")

	/** @example DllCall("User32\GetUserObjectInformation", "ptr", hObj, "int", nIndex, "ptr", pvInfo, "uint", nLength, "ptr", lpnLengthNeeded, "int") */
	static GetUserObjectInformation(hObj, nIndex, pvInfo, nLength, lpnLengthNeeded) => DllCall("User32\GetUserObjectInformation", "ptr", hObj, "int", nIndex, "ptr", pvInfo, "uint", nLength, "ptr", lpnLengthNeeded, "int")

	/** @example DllCall("User32\GetUserObjectSecurity", "ptr", hObj, "ptr", pSIRequested, "ptr", pSD, "uint", nLength, "ptr", lpnLengthNeeded, "int") */
	static GetUserObjectSecurity(hObj, pSIRequested, pSD, nLength, lpnLengthNeeded) => DllCall("User32\GetUserObjectSecurity", "ptr", hObj, "ptr", pSIRequested, "ptr", pSD, "uint", nLength, "ptr", lpnLengthNeeded, "int")

	/** @example DllCall("User32\GetWindow", "ptr", hWnd, "uint", uCmd, "ptr") */
	static GetWindow(hWnd, uCmd) => DllCall("User32\GetWindow", "ptr", hWnd, "uint", uCmd, "ptr")

	/** @example DllCall("User32\GetWindowContextHelpId", "ptr", hwnd, "uint") */
	static GetWindowContextHelpId(hwnd) => DllCall("User32\GetWindowContextHelpId", "ptr", hwnd, "uint")

	/** @example DllCall("User32\GetWindowDC", "ptr", hwnd, "ptr") */
	static GetWindowDC(hwnd) => DllCall("User32\GetWindowDC", "ptr", hwnd, "ptr")

	/** @example DllCall("User32\GetWindowDisplayAffinity", "ptr", hWnd, "uint*", &dwAffinity, "int") */
	static GetWindowDisplayAffinity(hWnd, &dwAffinity) => DllCall("User32\GetWindowDisplayAffinity", "ptr", hWnd, "uint*", &dwAffinity, "int")

	/** @example DllCall("User32\GetWindowInfo", "ptr", hwnd, "ptr", pwi, "int") */
	static GetWindowInfo(hwnd, pwi) => DllCall("User32\GetWindowInfo", "ptr", hwnd, "ptr", pwi, "int")

	/** @example DllCall("User32\GetWindowLong", "ptr", hWnd, "int", nIndex, "int") */
	static GetWindowLong(hWnd, nIndex) => DllCall("User32\GetWindowLong", "ptr", hWnd, "int", nIndex, "int")

	static GetWindowLongPtrW(hWnd, nIndex) => DllCall("User32\GetWindowLongPtr", "ptr", hWnd, "int", nIndex, "ptr")

	/** @example DllCall("User32\GetWindowModuleFileName", "ptr", hwnd, "ptr", StrPtr(lpszFileName), "uint", cchFileNameMax, "uint") */
	static GetWindowModuleFileName(hwnd, lpszFileName, cchFileNameMax) => DllCall("User32\GetWindowModuleFileName", "ptr", hwnd, "ptr", StrPtr(lpszFileName), "uint", cchFileNameMax, "uint")

	/** @example DllCall("User32\GetWindowPlacement", "ptr", hWnd, "ptr", lpwndpl, "int") */
	static GetWindowPlacement(hWnd, lpwndpl) => DllCall("User32\GetWindowPlacement", "ptr", hWnd, "ptr", lpwndpl)

	/** @example DllCall("User32\GetWindowRect", "ptr", hWnd, "ptr", lpRect, "int") */
	static GetWindowRect(hWnd, lpRect) => DllCall("User32\GetWindowRect", "ptr", hWnd, "ptr", lpRect, "uptr")

	/** @example DllCall("User32\GetWindowRgn", "ptr", hWnd, "ptr", hRgn, "int") */
	static GetWindowRgn(hWnd, hRgn) => DllCall("User32\GetWindowRgn", "ptr", hWnd, "ptr", hRgn, "int")

	/** @example DllCall("User32\GetWindowRgnBox", "ptr", hWnd, "ptr", lprc, "int") */
	static GetWindowRgnBox(hWnd, lprc) => DllCall("User32\GetWindowRgnBox", "ptr", hWnd, "ptr", lprc, "int")

	/** @example DllCall("User32\GetWindowText", "ptr", hWnd, "ptr", StrPtr(lpString), "int", nMaxCount, "int") */
	static GetWindowText(hWnd, lpString, nMaxCount := 255) => (DllCall("User32\GetWindowText", "ptr", hWnd, "ptr", lpString, "int", nMaxCount, "int"), lpString)

	/** @example DllCall("User32\GetWindowTextLength", "ptr", hwnd, "int") */
	static GetWindowTextLength(hwnd) => DllCall("User32\GetWindowTextLength", "ptr", hwnd, "int")

	/** @example DllCall("User32\GetWindowThreadProcessId", "ptr", hWnd, "ptr", lpdwProcessId, "uint") */
	static GetWindowThreadProcessId(hWnd, &lpdwProcessId) => DllCall("User32\GetWindowThreadProcessId", "ptr", hWnd, "uptr*", &lpdwProcessId)

	/** @example DllCall("User32\GrayString", "ptr", hDC, "ptr", hBrush, "ptr", lpOutputFunc, "uptr", lpData, "int", nCount, "int", X, "int", Y, "int", nWidth, "int", nHeight, "int") */
	static GrayString(hDC, hBrush, lpOutputFunc, lpData, nCount, X, Y, nWidth, nHeight) => DllCall("User32\GrayString", "ptr", hDC, "ptr", hBrush, "ptr", lpOutputFunc, "uptr", lpData, "int", nCount, "int", X, "int", Y, "int", nWidth, "int", nHeight, "int")

	/** @example DllCall("User32\HideCaret", "ptr", hWnd, "int") */
	static HideCaret(hWnd) => DllCall("User32\HideCaret", "ptr", hWnd, "int")

	/** @example DllCall("User32\HiliteMenuItem", "ptr", hwnd, "ptr", hmenu, "uint", uItemHilite, "uint", uHilite, "int") */
	static HiliteMenuItem(hwnd, hmenu, uItemHilite, uHilite) => DllCall("User32\HiliteMenuItem", "ptr", hwnd, "ptr", hmenu, "uint", uItemHilite, "uint", uHilite, "int")

	/** @example DllCall("User32\ImpersonateDdeClientWindow", "ptr", hWndClient, "ptr", hWndServer, "int") */
	static ImpersonateDdeClientWindow(hWndClient, hWndServer) => DllCall("User32\ImpersonateDdeClientWindow", "ptr", hWndClient, "ptr", hWndServer, "int")

	/** @example DllCall("User32\InSendMessage", "int") */
	static InSendMessage() => DllCall("User32\InSendMessage", "int")

	/** @example DllCall("User32\InSendMessageEx", "ptr", lpReserved, "uint") */
	static InSendMessageEx(lpReserved) => DllCall("User32\InSendMessageEx", "ptr", lpReserved, "uint")

	/** @example DllCall("User32\InflateRect", "ptr", lprc, "int", dx, "int", dy, "int") */
	static InflateRect(lprc, dx, dy) => DllCall("User32\InflateRect", "ptr", lprc, "int", dx, "int", dy, "int")

	/** @example DllCall("User32\InsertMenu", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "uptr", uIDNewItem, "ptr", StrPtr(lpNewItem), "int") */
	static InsertMenu(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem) => DllCall("User32\InsertMenu", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "uptr", uIDNewItem, "ptr", StrPtr(lpNewItem), "int")

	/** @example DllCall("User32\InsertMenuItem", "ptr", hMenu, "uint", uItem, "int", fByPosition, "ptr", lpmii, "int") */
	static InsertMenuItem(hMenu, uItem, fByPosition, lpmii) => DllCall("User32\InsertMenuItem", "ptr", hMenu, "uint", uItem, "int", fByPosition, "ptr", lpmii, "int")

	/** @example DllCall("User32\InternalGetWindowText", "ptr", hWnd, "wstr", lpString, "int", nMaxCount, "int") */
	static InternalGetWindowText(hWnd, lpString, nMaxCount) => DllCall("User32\InternalGetWindowText", "ptr", hWnd, "wstr", lpString, "int", nMaxCount, "int")

	/** @example DllCall("User32\IntersectRect", "ptr", lprcDst, "ptr", lprcSrc1, "ptr", lprcSrc2, "int") */
	static IntersectRect(lprcDst, lprcSrc1, lprcSrc2) => DllCall("User32\IntersectRect", "ptr", lprcDst, "ptr", lprcSrc1, "ptr", lprcSrc2, "int")

	/** @example DllCall("User32\InvalidateRect", "ptr", hWnd, "ptr", lpRect, "int", bErase, "int") */
	static InvalidateRect(hWnd, lpRect, bErase) => DllCall("User32\InvalidateRect", "ptr", hWnd, "ptr", lpRect, "int", bErase, "int")

	/** @example DllCall("User32\InvalidateRgn", "ptr", hWnd, "ptr", hRgn, "int", bErase, "int") */
	static InvalidateRgn(hWnd, hRgn, bErase) => DllCall("User32\InvalidateRgn", "ptr", hWnd, "ptr", hRgn, "int", bErase, "int")

	/** @example DllCall("User32\InvertRect", "ptr", hDC, "ptr", lprc, "int") */
	static InvertRect(hDC, lprc) => DllCall("User32\InvertRect", "ptr", hDC, "ptr", lprc, "int")

	/** @example DllCall("User32\IsCharAlpha", "short", ch, "int") */
	static IsCharAlpha(ch) => DllCall("User32\IsCharAlpha", "short", ch, "int")

	/** @example DllCall("User32\IsCharAlphaNumeric", "short", ch, "int") */
	static IsCharAlphaNumeric(ch) => DllCall("User32\IsCharAlphaNumeric", "short", ch, "int")

	/** @example DllCall("User32\IsCharLower", "short", ch, "int") */
	static IsCharLower(ch) => DllCall("User32\IsCharLower", "short", ch, "int")

	/** @example DllCall("User32\IsCharUpper", "short", ch, "int") */
	static IsCharUpper(ch) => DllCall("User32\IsCharUpper", "short", ch, "int")

	/** @example DllCall("User32\IsChild", "ptr", hWndParent, "ptr", hWnd, "int") */
	static IsChild(hWndParent, hWnd) => DllCall("User32\IsChild", "ptr", hWndParent, "ptr", hWnd, "int")

	/** @example DllCall("User32\IsClipboardFormatAvailable", "uint", format, "int") */
	static IsClipboardFormatAvailable(format) => DllCall("User32\IsClipboardFormatAvailable", "uint", format, "int")

	/** @example DllCall("User32\IsDialogMessage", "ptr", hDlg, "ptr", lpMsg, "int") */
	static IsDialogMessage(hDlg, lpMsg) => DllCall("User32\IsDialogMessage", "ptr", hDlg, "ptr", lpMsg, "int")

	/** @example DllCall("User32\IsDlgButtonChecked", "ptr", hDlg, "int", nIDButton, "uint") */
	static IsDlgButtonChecked(hDlg, nIDButton) => DllCall("User32\IsDlgButtonChecked", "ptr", hDlg, "int", nIDButton, "uint")

	/** @example DllCall("User32\IsGUIThread", "int", bConvert, "int") */
	static IsGUIThread(bConvert) => DllCall("User32\IsGUIThread", "int", bConvert, "int")

	/** @example DllCall("User32\IsHungAppWindow", "ptr", hwnd, "int") */
	static IsHungAppWindow(hwnd) => DllCall("User32\IsHungAppWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\IsIconic", "ptr", hwnd, "int") */
	static IsIconic(hwnd) => DllCall("User32\IsIconic", "ptr", hwnd, "int")

	/** @example DllCall("User32\IsMenu", "ptr", hMenu, "int") */
	static IsMenu(hMenu) => DllCall("User32\IsMenu", "ptr", hMenu, "int")

	/** @example DllCall("User32\IsProcessDPIAware", "int") */
	static IsProcessDPIAware() => DllCall("User32\IsProcessDPIAware", "int")

	/** @example DllCall("User32\IsRectEmpty", "ptr", lprc, "int") */
	static IsRectEmpty(lprc) => DllCall("User32\IsRectEmpty", "ptr", lprc, "int")

	/** @example DllCall("User32\IsTouchWindow", "ptr", hWnd, "ptr", pulFlags, "int") */
	static IsTouchWindow(hWnd, pulFlags) => DllCall("User32\IsTouchWindow", "ptr", hWnd, "ptr", pulFlags, "int")

	/** @example DllCall("User32\IsWinEventHookInstalled", "uint", event, "int") */
	static IsWinEventHookInstalled(event) => DllCall("User32\IsWinEventHookInstalled", "uint", event, "int")

	/** @example DllCall("User32\IsWindow", "ptr", hWnd, "int") */
	static IsWindow(hWnd) => DllCall("User32\IsWindow", "ptr", hWnd, "int")

	/** @example DllCall("User32\IsWindowEnabled", "ptr", hwnd, "int") */
	static IsWindowEnabled(hwnd) => DllCall("User32\IsWindowEnabled", "ptr", hwnd, "int")

	/** @example DllCall("User32\IsWindowRedirectedForPrint", "ptr", hwnd, "int") */
	static IsWindowRedirectedForPrint(hwnd) => DllCall("User32\IsWindowRedirectedForPrint", "ptr", hwnd, "int")

	/** @example DllCall("User32\IsWindowUnicode", "ptr", hwnd, "int") */
	static IsWindowUnicode(hwnd) => DllCall("User32\IsWindowUnicode", "ptr", hwnd, "int")

	/** @example DllCall("User32\IsWindowVisible", "ptr", hwnd, "int") */
	static IsWindowVisible(hwnd) => DllCall("User32\IsWindowVisible", "ptr", hwnd, "int")

	/** @example DllCall("User32\IsWow64Message", "int") */
	static IsWow64Message() => DllCall("User32\IsWow64Message", "int")

	/** @example DllCall("User32\IsZoomed", "ptr", hwnd, "int") */
	static IsZoomed(hwnd) => DllCall("User32\IsZoomed", "ptr", hwnd, "int")

	/** @example DllCall("User32\KillTimer", "ptr", hWnd, "uptr", uIDEvent, "int") */
	static KillTimer(hWnd, uIDEvent) => DllCall("User32\KillTimer", "ptr", hWnd, "uptr", uIDEvent, "int")

	/** @example DllCall("User32\LoadAccelerators", "ptr", hInstance, "ptr", StrPtr(lpTableName), "ptr") */
	static LoadAccelerators(hInstance, lpTableName) => DllCall("User32\LoadAccelerators", "ptr", hInstance, "ptr", StrPtr(lpTableName), "ptr")

	/** @example DllCall("User32\LoadBitmap", "ptr", hInstance, "ptr", StrPtr(lpBitmapName), "ptr") */
	static LoadBitmap(hInstance, lpBitmapName) => DllCall("User32\LoadBitmap", "ptr", hInstance, "ptr", StrPtr(lpBitmapName), "ptr")

	/** @example DllCall("User32\LoadCursor", "ptr", hInstance, "ptr", StrPtr(lpCursorName), "ptr") */
	static LoadCursor(hInstance, lpCursorName) => DllCall("User32\LoadCursor", "ptr", hInstance, "ptr", StrPtr(lpCursorName), "ptr")

	/** @example DllCall("User32\LoadCursorFromFile", "ptr", StrPtr(lpFileName), "ptr") */
	static LoadCursorFromFile(lpFileName) => DllCall("User32\LoadCursorFromFile", "ptr", StrPtr(lpFileName), "ptr")

	/** @example DllCall("User32\LoadIcon", "ptr", hInstance, "ptr", StrPtr(lpIconName), "ptr") */
	static LoadIcon(hInstance, lpIconName) => DllCall("User32\LoadIcon", "ptr", hInstance, "ptr", StrPtr(lpIconName), "ptr")

	/** @example DllCall("User32\LoadImage", "ptr", hinst, "ptr", StrPtr(lpszName), "uint", uType, "int", cxDesired, "int", cyDesired, "uint", fuLoad, "ptr") */
	static LoadImage(hinst, lpszName, uType, cxDesired, cyDesired, fuLoad) => DllCall("User32\LoadImage", "ptr", hinst, "ptr", StrPtr(lpszName), "uint", uType, "int", cxDesired, "int", cyDesired, "uint", fuLoad, "ptr")

	/** @example DllCall("User32\LoadKeyboardLayout", "ptr", StrPtr(pwszKLID), "uint", Flags, "ptr") */
	static LoadKeyboardLayout(pwszKLID, Flags := 0x10) => DllCall("User32\LoadKeyboardLayout", "ptr", StrPtr(String(pwszKLID)), "uint", Flags, "ptr")

	/** @example DllCall("User32\LoadMenu", "ptr", hInstance, "ptr", StrPtr(lpMenuName), "ptr") */
	static LoadMenu(hInstance, lpMenuName) => DllCall("User32\LoadMenu", "ptr", hInstance, "ptr", StrPtr(lpMenuName), "ptr")

	/** @example DllCall("User32\LoadMenuIndirect", "ptr", lpMenuTemplate, "ptr") */
	static LoadMenuIndirect(lpMenuTemplate) => DllCall("User32\LoadMenuIndirect", "ptr", lpMenuTemplate, "ptr")

	/** @example DllCall("User32\LoadString", "ptr", hInstance, "uint", uID, "ptr", StrPtr(lpBuffer), "int", nBufferMax, "int") */
	static LoadString(hInstance, uID, lpBuffer, nBufferMax) => DllCall("User32\LoadString", "ptr", hInstance, "uint", uID, "ptr", StrPtr(lpBuffer), "int", nBufferMax, "int")

	/** @example DllCall("User32\LockSetForegroundWindow", "uint", uLockCode, "int") */
	static LockSetForegroundWindow(uLockCode) => DllCall("User32\LockSetForegroundWindow", "uint", uLockCode, "int")

	/** @example DllCall("User32\LockWindowUpdate", "ptr", hWndLock, "int") */
	static LockWindowUpdate(hWndLock) => DllCall("User32\LockWindowUpdate", "ptr", hWndLock, "int")

	/** @example DllCall("User32\LockWorkStation", "int") */
	static LockWorkStation() => DllCall("User32\LockWorkStation", "int")

	/** @example DllCall("User32\LogicalToPhysicalPoint", "ptr", hWnd, "ptr", lpPoint, "int") */
	static LogicalToPhysicalPoint(hWnd, lpPoint) => DllCall("User32\LogicalToPhysicalPoint", "ptr", hWnd, "ptr", lpPoint, "int")

	/** @example DllCall("User32\LookupIconIdFromDirectory", "ptr", presbits, "int", fIcon, "int") */
	static LookupIconIdFromDirectory(presbits, fIcon) => DllCall("User32\LookupIconIdFromDirectory", "ptr", presbits, "int", fIcon, "int")

	/** @example DllCall("User32\LookupIconIdFromDirectoryEx", "ptr", presbits, "int", fIcon, "int", cxDesired, "int", cyDesired, "uint", Flags, "int") */
	static LookupIconIdFromDirectoryEx(presbits, fIcon, cxDesired, cyDesired, Flags) => DllCall("User32\LookupIconIdFromDirectoryEx", "ptr", presbits, "int", fIcon, "int", cxDesired, "int", cyDesired, "uint", Flags, "int")

	/** @example DllCall("User32\MapDialogRect", "ptr", hDlg, "ptr", lpRect, "int") */
	static MapDialogRect(hDlg, lpRect) => DllCall("User32\MapDialogRect", "ptr", hDlg, "ptr", lpRect, "int")

	/** @example DllCall("User32\MapVirtualKey", "uint", uCode, "uint", uMapType, "uint") */
	static MapVirtualKey(uCode, uMapType) => DllCall("User32\MapVirtualKey", "uint", uCode, "uint", uMapType, "uint")

	/** @example DllCall("User32\MapVirtualKeyEx", "uint", uCode, "uint", uMapType, "ptr", dwhkl, "uint") */
	static MapVirtualKeyEx(uCode, uMapType, dwhkl) => DllCall("User32\MapVirtualKeyEx", "uint", uCode, "uint", uMapType, "ptr", dwhkl, "uint")

	/** @example DllCall("User32\MapWindowPoints", "ptr", hWndFrom, "ptr", hWndTo, "ptr", lpPoints, "uint", cPoints, "int") */
	static MapWindowPoints(hWndFrom, hWndTo, lpPoints, cPoints) => DllCall("User32\MapWindowPoints", "ptr", hWndFrom, "ptr", hWndTo, "ptr", lpPoints, "uint", cPoints, "int")

	/** @example DllCall("User32\MenuItemFromPoint", "ptr", hWnd, "ptr", hMenu, "uint64", ptScreen, "int") */
	static MenuItemFromPoint(hWnd, hMenu, ptScreen) => DllCall("User32\MenuItemFromPoint", "ptr", hWnd, "ptr", hMenu, "uint64", ptScreen, "int")

	/** @example DllCall("User32\MessageBeep", "uint", uType, "int") */
	static MessageBeep(uType) => DllCall("User32\MessageBeep", "uint", uType, "int")

	/** @example DllCall("User32\MessageBox", "ptr", hWnd, "ptr", StrPtr(lpText), "ptr", StrPtr(lpCaption), "uint", uType, "int") */
	static MessageBox(hWnd, lpText, lpCaption, uType) => DllCall("User32\MessageBox", "ptr", hWnd, "ptr", StrPtr(lpText), "ptr", StrPtr(lpCaption), "uint", uType, "int")

	/** @example DllCall("User32\MessageBoxEx", "ptr", hWnd, "ptr", StrPtr(lpText), "ptr", StrPtr(lpCaption), "uint", uType, "ushort", wLanguageId, "int") */
	static MessageBoxEx(hWnd, lpText, lpCaption, uType, wLanguageId) => DllCall("User32\MessageBoxEx", "ptr", hWnd, "ptr", StrPtr(lpText), "ptr", StrPtr(lpCaption), "uint", uType, "ushort", wLanguageId, "int")

	/** @example DllCall("User32\MessageBoxIndirect", "ptr", lpMsgBoxParams, "int") */
	static MessageBoxIndirect(lpMsgBoxParams) => DllCall("User32\MessageBoxIndirect", "ptr", lpMsgBoxParams, "int")

	/** @example DllCall("User32\ModifyMenu", "ptr", hMnu, "uint", uPosition, "uint", uFlags, "uptr", uIDNewItem, "ptr", StrPtr(lpNewItem), "int") */
	static ModifyMenu(hMnu, uPosition, uFlags, uIDNewItem, lpNewItem) => DllCall("User32\ModifyMenu", "ptr", hMnu, "uint", uPosition, "uint", uFlags, "uptr", uIDNewItem, "ptr", StrPtr(lpNewItem), "int")

	/** @example DllCall("User32\MonitorFromPoint", "uint64", pt, "uint", dwFlags, "ptr") */
	static MonitorFromPoint(ptType := "uint64", pt?, dwFlags?) => DllCall("User32\MonitorFromPoint", ptType, pt, "uint", dwFlags, "ptr")

	/** @example DllCall("User32\MonitorFromRect", "ptr", lprc, "uint", dwFlags, "ptr") */
	static MonitorFromRect(lprc, dwFlags) => DllCall("User32\MonitorFromRect", "ptr", lprc, "uint", dwFlags, "ptr")

	/** @example DllCall("User32\MonitorFromWindow", "ptr", hwnd, "uint", dwFlags, "ptr") */
	static MonitorFromWindow(hwnd, dwFlags) => DllCall("User32\MonitorFromWindow", "ptr", hwnd, "uint", dwFlags, "ptr")

	/** @example DllCall("User32\MoveWindow", "ptr", hWnd, "int", X, "int", Y, "int", nWidth, "int", nHeight, "int", bRepaint, "int") */
	static MoveWindow(hWnd, X, Y, nWidth, nHeight, bRepaint) => DllCall("User32\MoveWindow", "ptr", hWnd, "int", X, "int", Y, "int", nWidth, "int", nHeight, "int", bRepaint, "int")

	/** @example DllCall("User32\MsgWaitForMultipleObjects", "uint", nCount, "ptr", pHandles, "int", bWaitAll, "uint", dwMilliseconds, "uint", dwWakeMask, "uint") */
	static MsgWaitForMultipleObjects(nCount, pHandles, bWaitAll, dwMilliseconds, dwWakeMask) => DllCall("User32\MsgWaitForMultipleObjects", "uint", nCount, "ptr", pHandles, "int", bWaitAll, "uint", dwMilliseconds, "uint", dwWakeMask, "uint")

	/** @example DllCall("User32\MsgWaitForMultipleObjectsEx", "uint", nCount, "ptr", pHandles, "uint", dwMilliseconds, "uint", dwWakeMask, "uint", dwFlags, "uint") */
	static MsgWaitForMultipleObjectsEx(nCount, pHandles, dwMilliseconds, dwWakeMask, dwFlags) => DllCall("User32\MsgWaitForMultipleObjectsEx", "uint", nCount, "ptr", pHandles, "uint", dwMilliseconds, "uint", dwWakeMask, "uint", dwFlags, "uint")

	/** @example DllCall("User32\NotifyWinEvent", "uint", event, "ptr", hwnd, "int", idObject, "int", idChild, "int") */
	static NotifyWinEvent(event, hwnd, idObject, idChild) => DllCall("User32\NotifyWinEvent", "uint", event, "ptr", hwnd, "int", idObject, "int", idChild, "int")

	/** @example DllCall("User32\OemKeyScan", "ushort", wOemChar, "uint") */
	static OemKeyScan(wOemChar) => DllCall("User32\OemKeyScan", "ushort", wOemChar, "uint")

	/** @example DllCall("User32\OemToChar", "astr", lpszSrc, "ptr", StrPtr(lpszDst), "int") */
	static OemToChar(lpszSrc, lpszDst) => DllCall("User32\OemToChar", "astr", lpszSrc, "ptr", StrPtr(lpszDst), "int")

	/** @example DllCall("User32\OemToCharBuff", "astr", lpszSrc, "ptr", StrPtr(lpszDst), "uint", cchDstLength, "int") */
	static OemToCharBuff(lpszSrc, lpszDst, cchDstLength) => DllCall("User32\OemToCharBuff", "astr", lpszSrc, "ptr", StrPtr(lpszDst), "uint", cchDstLength, "int")

	/** @example DllCall("User32\OffsetRect", "ptr", lprc, "int", dx, "int", dy, "int") */
	static OffsetRect(lprc, dx, dy) => DllCall("User32\OffsetRect", "ptr", lprc, "int", dx, "int", dy, "int")

	/** @example DllCall("User32\OpenClipboard", "ptr", hWndNewOwner, "int") */
	static OpenClipboard(hWndNewOwner) => DllCall("User32\OpenClipboard", "ptr", hWndNewOwner, "int")

	/** @example DllCall("User32\OpenDesktop", "ptr", StrPtr(lpszDesktop), "uint", dwFlags, "int", fInherit, "uint", dwDesiredAccess, "ptr") */
	static OpenDesktop(lpszDesktop, dwFlags, fInherit, dwDesiredAccess) => DllCall("User32\OpenDesktop", "ptr", StrPtr(lpszDesktop), "uint", dwFlags, "int", fInherit, "uint", dwDesiredAccess, "ptr")

	/** @example DllCall("User32\OpenIcon", "ptr", hwnd, "int") */
	static OpenIcon(hwnd) => DllCall("User32\OpenIcon", "ptr", hwnd, "int")

	/** @example DllCall("User32\OpenInputDesktop", "uint", dwFlags, "int", fInherit, "uint", dwDesiredAccess, "ptr") */
	static OpenInputDesktop(dwFlags, fInherit, dwDesiredAccess) => DllCall("User32\OpenInputDesktop", "uint", dwFlags, "int", fInherit, "uint", dwDesiredAccess, "ptr")

	/** @example DllCall("User32\OpenWindowStation", "ptr", StrPtr(lpszWinSta), "int", fInherit, "uint", dwDesiredAccess, "ptr") */
	static OpenWindowStation(lpszWinSta, fInherit, dwDesiredAccess) => DllCall("User32\OpenWindowStation", "ptr", StrPtr(lpszWinSta), "int", fInherit, "uint", dwDesiredAccess, "ptr")

	/** @example DllCall("User32\PackDDElParam", "uint", msg, "uptr", uiLo, "uptr", uiHi, "uptr") */
	static PackDDElParam(msg, uiLo, uiHi) => DllCall("User32\PackDDElParam", "uint", msg, "uptr", uiLo, "uptr", uiHi, "uptr")

	/** @example DllCall("User32\PaintDesktop", "ptr", hdc, "int") */
	static PaintDesktop(hdc) => DllCall("User32\PaintDesktop", "ptr", hdc, "int")

	/** @example DllCall("User32\PeekMessage", "ptr", lpMsg, "ptr", hWnd, "uint", wMsgFilterMin, "uint", wMsgFilterMax, "uint", wRemoveMsg, "int") */
	static PeekMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg) => DllCall("User32\PeekMessage", "ptr", lpMsg, "ptr", hWnd, "uint", wMsgFilterMin, "uint", wMsgFilterMax, "uint", wRemoveMsg, "int")

	/** @example DllCall("User32\PhysicalToLogicalPoint", "ptr", hWnd, "ptr", lpPoint, "int") */
	static PhysicalToLogicalPoint(hWnd, lpPoint) => DllCall("User32\PhysicalToLogicalPoint", "ptr", hWnd, "Ptr", lpPoint, "uptr")

	/** @example DllCall("User32\PostMessageA", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int") */
	static PostMessageA(hWnd, Msg, wParam, lParam) => DllCall("User32\PostMessageA", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int")

	/** @example DllCall("User32\PostMessageW", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int") */
	static PostMessageW(hWnd, Msg, wParam, lParam) => DllCall("User32\PostMessageW", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int")

	/** @example DllCall("User32\PostMessage_", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int") */
	static PostMessage_(hWnd, Msg, wParam, lParam) => DllCall("User32\PostMessage_", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int")

	/** @example DllCall("User32\PostQuitMessage", "int", nExitCode, "int") */
	static PostQuitMessage(nExitCode) => DllCall("User32\PostQuitMessage", "int", nExitCode, "int")

	/** @example DllCall("User32\PostThreadMessage", "uint", idThread, "uint", Msg, "uptr", wParam, "uptr", lParam, "int") */
	static PostThreadMessage(idThread, Msg, wParam, lParam) => DllCall("User32\PostThreadMessage", "uint", idThread, "uint", Msg, "uptr", wParam, "uptr", lParam, "int")

	/** @example DllCall("User32\PrintWindow", "ptr", hwnd, "ptr", hdcBlt, "uint", nFlags, "int") */
	static PrintWindow(hwnd, hdcBlt, nFlags) => DllCall("User32\PrintWindow", "ptr", hwnd, "ptr", hdcBlt, "uint", nFlags, "int")

	/** @example DllCall("User32\PrivateExtractIcons", "ptr", StrPtr(lpszFile), "int", nIconIndex, "int", cxIcon, "int", cyIcon, "ptr", phicon, "uint*", &piconid, "uint", nIcons, "uint", flags, "uint") */
	static PrivateExtractIcons(lpszFile, nIconIndex, cxIcon, cyIcon, phicon, &piconid, nIcons, flags) => DllCall("User32\PrivateExtractIcons", "ptr", StrPtr(lpszFile), "int", nIconIndex, "int", cxIcon, "int", cyIcon, "ptr", phicon, "uint*", &piconid, "uint", nIcons, "uint", flags, "uint")

	/** @example DllCall("User32\PtInRect", "ptr", lprc, "uint64", pt, "int") */
	static PtInRect(lprc, pt) => DllCall("User32\PtInRect", "ptr", lprc, "uint64", pt, "int")

	/** @example DllCall("User32\RealChildWindowFromPoint", "ptr", hwndParent, "uint64", ptParentClientCoords, "ptr") */
	static RealChildWindowFromPoint(hwndParent, ptParentClientCoords) => DllCall("User32\RealChildWindowFromPoint", "ptr", hwndParent, "uint64", ptParentClientCoords, "ptr")

	/** @example DllCall("User32\RealGetWindowClass", "ptr", hwnd, "ptr", StrPtr(pszType), "uint", cchType, "uint") */
	static RealGetWindowClass(hwnd, pszType, cchType) => DllCall("User32\RealGetWindowClass", "ptr", hwnd, "ptr", StrPtr(pszType), "uint", cchType, "uint")

	/** @example DllCall("User32\RedrawWindow", "ptr", hWnd, "ptr", lprcUpdate, "ptr", hrgnUpdate, "uint", flags, "int") */
	static RedrawWindow(hWnd, lprcUpdate, hrgnUpdate, flags) => DllCall("User32\RedrawWindow", "ptr", hWnd, "ptr", lprcUpdate, "ptr", hrgnUpdate, "uint", flags, "int")

	/** @example DllCall("User32\RegisterClass", "ptr", lpWndClass, "ushort") */
	static RegisterClass(lpWndClass) => DllCall("User32\RegisterClass", "ptr", lpWndClass, "ushort")

	/** @example DllCall("User32\RegisterClassEx", "ptr", lpwcx, "ushort") */
	static RegisterClassEx(lpwcx) => DllCall("User32\RegisterClassEx", "ptr", lpwcx, "ushort")

	/** @example DllCall("User32\RegisterClipboardFormat", "ptr", StrPtr(lpszFormat), "uint") */
	static RegisterClipboardFormat(lpszFormat) => DllCall("User32\RegisterClipboardFormat", "ptr", StrPtr(lpszFormat), "uint")

	/** @example DllCall("User32\RegisterDeviceNotification", "ptr", hRecipient, "ptr", NotificationFilter, "uint", Flags, "ptr") */
	static RegisterDeviceNotification(hRecipient, NotificationFilter, Flags) => DllCall("User32\RegisterDeviceNotification", "ptr", hRecipient, "ptr", NotificationFilter, "uint", Flags, "ptr")

	/** @example DllCall("User32\RegisterHotKey", "ptr", hWnd, "int", id, "uint", fsModifiers, "uint", vk, "int") */
	static RegisterHotKey(hWnd, id, fsModifiers, vk) => DllCall("User32\RegisterHotKey", "ptr", hWnd, "int", id, "uint", fsModifiers, "uint", vk, "int")

	/** @example DllCall("User32\RegisterPowerSettingNotification", "ptr", hRecipient, "ptr", PowerSettingGuid, "uint", Flags, "ptr") */
	static RegisterPowerSettingNotification(hRecipient, PowerSettingGuid, Flags) => DllCall("User32\RegisterPowerSettingNotification", "ptr", hRecipient, "ptr", PowerSettingGuid, "uint", Flags, "ptr")

	/** @example DllCall("User32\RegisterRawInputDevices", "ptr", pRawInputDevices, "uint", uiNumDevices, "uint", cbSize, "int") */
	static RegisterRawInputDevices(pRawInputDevices, uiNumDevices, cbSize) => DllCall("User32\RegisterRawInputDevices", "ptr", pRawInputDevices, "uint", uiNumDevices, "uint", cbSize, "int")

	/** @example DllCall("User32\RegisterShellHookWindow", "ptr", hwnd, "int") */
	static RegisterShellHookWindow(hwnd) => DllCall("User32\RegisterShellHookWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\RegisterTouchWindow", "ptr", hWnd, "uint", ulFlags, "int") */
	static RegisterTouchWindow(hWnd, ulFlags) => DllCall("User32\RegisterTouchWindow", "ptr", hWnd, "uint", ulFlags, "int")

	/** @example DllCall("User32\RegisterWindowMessage", "ptr", StrPtr(lpString), "uint") */
	static RegisterWindowMessage(lpString) => DllCall("User32\RegisterWindowMessage", "ptr", StrPtr(lpString), "uint")

	/** @example DllCall("User32\ReleaseCapture", "int") */
	static ReleaseCapture() => DllCall("User32\ReleaseCapture", "int")

	/** @example DllCall("User32\ReleaseDC", "ptr", hWnd, "ptr", hDC, "int") */
	static ReleaseDC(hWnd, hDC) => DllCall("User32\ReleaseDC", "ptr", hWnd, "ptr", hDC, "int")

	/** @example DllCall("User32\RemoveClipboardFormatListener", "ptr", hwnd, "int") */
	static RemoveClipboardFormatListener(hwnd) => DllCall("User32\RemoveClipboardFormatListener", "ptr", hwnd, "int")

	/** @example DllCall("User32\RemoveMenu", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "int") */
	static RemoveMenu(hMenu, uPosition, uFlags) => DllCall("User32\RemoveMenu", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "int")

	/** @example DllCall("User32\RemoveProp", "ptr", hWnd, "ptr", StrPtr(lpString), "ptr") */
	static RemoveProp(hWnd, lpString) => DllCall("User32\RemoveProp", "ptr", hWnd, "ptr", StrPtr(lpString), "ptr")

	/** @example DllCall("User32\ReplyMessage", "ptr", lResult, "int") */
	static ReplyMessage(lResult) => DllCall("User32\ReplyMessage", "ptr", lResult, "int")

	/** @example DllCall("User32\ReuseDDElParam", "uptr", lParam, "uint", msgIn, "uint", msgOut, "uptr", uiLo, "uptr", uiHi, "uptr") */
	static ReuseDDElParam(lParam, msgIn, msgOut, uiLo, uiHi) => DllCall("User32\ReuseDDElParam", "uptr", lParam, "uint", msgIn, "uint", msgOut, "uptr", uiLo, "uptr", uiHi, "uptr")

	/** @example DllCall("User32\ScreenToClient", "ptr", hWnd, "ptr", lpPoint, "int") */
	static ScreenToClient(hWnd, lpPoint) => DllCall("User32\ScreenToClient", "ptr", hWnd, "ptr", lpPoint, "int")

	/** @example DllCall("User32\ScrollDC", "ptr", hDC, "int", dx, "int", dy, "ptr", lprcScroll, "ptr", lprcClip, "ptr", hrgnUpdate, "ptr", lprcUpdate, "int") */
	static ScrollDC(hDC, dx, dy, lprcScroll, lprcClip, hrgnUpdate, lprcUpdate) => DllCall("User32\ScrollDC", "ptr", hDC, "int", dx, "int", dy, "ptr", lprcScroll, "ptr", lprcClip, "ptr", hrgnUpdate, "ptr", lprcUpdate, "int")

	/** @example DllCall("User32\ScrollWindow", "ptr", hWnd, "int", XAmount, "int", YAmount, "ptr", lpRect, "ptr", lpClipRect, "int") */
	static ScrollWindow(hWnd, XAmount, YAmount, lpRect, lpClipRect) => DllCall("User32\ScrollWindow", "ptr", hWnd, "int", XAmount, "int", YAmount, "ptr", lpRect, "ptr", lpClipRect, "int")

	/** @example DllCall("User32\ScrollWindowEx", "ptr", hWnd, "int", dx, "int", dy, "ptr", prcScroll, "ptr", prcClip, "ptr", hrgnUpdate, "ptr", prcUpdate, "uint", flags, "int") */
	static ScrollWindowEx(hWnd, dx, dy, prcScroll, prcClip, hrgnUpdate, prcUpdate, flags) => DllCall("User32\ScrollWindowEx", "ptr", hWnd, "int", dx, "int", dy, "ptr", prcScroll, "ptr", prcClip, "ptr", hrgnUpdate, "ptr", prcUpdate, "uint", flags, "int")

	/** @example DllCall("User32\SendDlgItemMessage", "ptr", hDlg, "int", nIDDlgItem, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr") */
	static SendDlgItemMessage(hDlg, nIDDlgItem, Msg, wParam, lParam) => DllCall("User32\SendDlgItemMessage", "ptr", hDlg, "int", nIDDlgItem, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\SendInput_", "uint", nInputs, "ptr", pInputs, "int", cbSize, "uint") */
	static SendInput_(nInputs, pInputs, cbSize) => DllCall("User32\SendInput_", "uint", nInputs, "ptr", pInputs, "int", cbSize, "uint")

	/** @example DllCall("User32\SendMessageA", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr") */
	static SendMessageA(hWnd, Msg, wParam, lParam) => DllCall("User32\SendMessageA", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\SendMessageCallback", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr", lpCallBack, "uptr", dwData, "int") */
	static SendMessageCallback(hWnd, Msg, wParam, lParam, lpCallBack, dwData) => DllCall("User32\SendMessageCallback", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr", lpCallBack, "uptr", dwData, "int")

	/** @example DllCall("User32\SendMessageTimeout", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "uint", fuFlags, "uint", uTimeout, "uptr", lpdwResult, "ptr") */
	static SendMessageTimeout(hWnd, Msg, wParam, lParam, fuFlags, uTimeout, lpdwResult) => DllCall("User32\SendMessageTimeout", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "uint", fuFlags, "uint", uTimeout, "uptr", lpdwResult, "ptr")

	/** @example DllCall("User32\SendMessageW", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr") */
	static SendMessageW(hWnd, Msg, wParam, lParam) => DllCall("User32\SendMessageW", "ptr", hWnd, "uint", Msg, "ptr", wParam, "ptr", lParam, "ptr")

	/** @example DllCall("User32\SendMessage_", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr") */
	static SendMessage_(hWnd, Msg, wParam, lParam) => DllCall("User32\SendMessage_", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "ptr")

	/** @example DllCall("User32\SendNotifyMessage", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int") */
	static SendNotifyMessage(hWnd, Msg, wParam, lParam) => DllCall("User32\SendNotifyMessage", "ptr", hWnd, "uint", Msg, "uptr", wParam, "uptr", lParam, "int")

	/** @example DllCall("User32\SetActiveWindow", "ptr", hwnd, "ptr") */
	static SetActiveWindow(hwnd) => DllCall("User32\SetActiveWindow", "ptr", hwnd, "ptr")

	/** @example DllCall("User32\SetCapture", "ptr", hwnd, "ptr") */
	static SetCapture(hwnd) => DllCall("User32\SetCapture", "ptr", hwnd, "ptr")

	/** @example DllCall("User32\SetCaretBlinkTime", "uint", uMSeconds, "int") */
	static SetCaretBlinkTime(uMSeconds) => DllCall("User32\SetCaretBlinkTime", "uint", uMSeconds, "int")

	/** @example DllCall("User32\SetCaretPos", "int", X, "int", Y, "int") */
	static SetCaretPos(X, Y) => DllCall("User32\SetCaretPos", "int", X, "int", Y, "int")

	/** @example DllCall("User32\SetClassLong", "ptr", hWnd, "int", nIndex, "int", dwNewLong, "uint") */
	static SetClassLong(hWnd, nIndex, dwNewLong) => DllCall("User32\SetClassLong", "ptr", hWnd, "int", nIndex, "int", dwNewLong, "uint")

	/** @example DllCall("User32\SetClassWord", "ptr", hWnd, "int", nIndex, "ushort", wNewWord, "ushort") */
	static SetClassWord(hWnd, nIndex, wNewWord) => DllCall("User32\SetClassWord", "ptr", hWnd, "int", nIndex, "ushort", wNewWord, "ushort")

	/** @example DllCall("User32\SetClipboardData", "uint", uFormat, "ptr", hMem, "ptr") */
	static SetClipboardData(uFormat, hMem) => DllCall("User32\SetClipboardData", "uint", uFormat, "ptr", hMem, "ptr")

	/** @example DllCall("User32\SetClipboardViewer", "ptr", hWndNewViewer, "ptr") */
	static SetClipboardViewer(hWndNewViewer) => DllCall("User32\SetClipboardViewer", "ptr", hWndNewViewer, "ptr")

	/** @example DllCall("User32\SetCursor", "ptr", hCursor, "ptr") */
	static SetCursor(hCursor) => DllCall("User32\SetCursor", "ptr", hCursor, "ptr")

	/** @example DllCall("User32\SetCursorPos", "int", X, "int", Y, "int") */
	static SetCursorPos(X, Y) => DllCall("User32\SetCursorPos", "int", X, "int", Y, "int")

	/** @example DllCall("User32\SetDlgItemInt", "ptr", hDlg, "int", nIDDlgItem, "uint", uValue, "int", bSigned, "int") */
	static SetDlgItemInt(hDlg, nIDDlgItem, uValue, bSigned) => DllCall("User32\SetDlgItemInt", "ptr", hDlg, "int", nIDDlgItem, "uint", uValue, "int", bSigned, "int")

	/** @example DllCall("User32\SetDlgItemText", "ptr", hDlg, "int", nIDDlgItem, "ptr", StrPtr(lpString), "int") */
	static SetDlgItemText(hDlg, nIDDlgItem, lpString) => DllCall("User32\SetDlgItemText", "ptr", hDlg, "int", nIDDlgItem, "ptr", StrPtr(lpString), "int")

	/** @example DllCall("User32\SetDoubleClickTime", "uint", uInterval, "int") */
	static SetDoubleClickTime(uInterval) => DllCall("User32\SetDoubleClickTime", "uint", uInterval, "int")

	/** @example DllCall("User32\SetFocus", "ptr", hWnd, "ptr") */
	static SetFocus(hWnd) => DllCall("User32\SetFocus", "ptr", hWnd, "ptr")

	/** @example DllCall("User32\SetForegroundWindow", "ptr", hwnd, "int") */
	static SetForegroundWindow(hwnd) => DllCall("User32\SetForegroundWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\SetGestureConfig", "ptr", hwnd, "uint", dwReserved, "uint", cIDs, "ptr", pGestureConfig, "uint", cbSize, "int") */
	static SetGestureConfig(hwnd, dwReserved, cIDs, pGestureConfig, cbSize) => DllCall("User32\SetGestureConfig", "ptr", hwnd, "uint", dwReserved, "uint", cIDs, "ptr", pGestureConfig, "uint", cbSize, "int")

	/** @example DllCall("User32\SetKeyboardState", "ptr", lpKeyState, "int") */
	static SetKeyboardState(lpKeyState) => DllCall("User32\SetKeyboardState", "ptr", lpKeyState, "int")

	/** @example DllCall("User32\SetLastErrorEx", "uint", dwErrCode, "uint", dwType, "int") */
	static SetLastErrorEx(dwErrCode, dwType) => DllCall("User32\SetLastErrorEx", "uint", dwErrCode, "uint", dwType, "int")

	/** @example DllCall("User32\SetLayeredWindowAttributes", "ptr", hwnd, "uint", crKey, "uchar", bAlpha, "uint", dwFlags, "int") */
	static SetLayeredWindowAttributes(hwnd, crKey, bAlpha, dwFlags) => DllCall("User32\SetLayeredWindowAttributes", "ptr", hwnd, "uint", crKey, "uchar", bAlpha, "uint", dwFlags, "int")

	/** @example DllCall("User32\SetMenu", "ptr", hWnd, "ptr", hMenu, "int") */
	static SetMenu(hWnd, hMenu) => DllCall("User32\SetMenu", "ptr", hWnd, "ptr", hMenu, "int")

	/** @example DllCall("User32\SetMenuContextHelpId", "ptr", hmenu, "uint", dwContextHelpId, "int") */
	static SetMenuContextHelpId(hmenu, dwContextHelpId) => DllCall("User32\SetMenuContextHelpId", "ptr", hmenu, "uint", dwContextHelpId, "int")

	/** @example DllCall("User32\SetMenuDefaultItem", "ptr", hMenu, "uint", uItem, "uint", fByPos, "int") */
	static SetMenuDefaultItem(hMenu, uItem, fByPos) => DllCall("User32\SetMenuDefaultItem", "ptr", hMenu, "uint", uItem, "uint", fByPos, "int")

	/** @example DllCall("User32\SetMenuInfo", "ptr", hmenu, "ptr", lpcmi, "int") */
	static SetMenuInfo(hmenu, lpcmi) => DllCall("User32\SetMenuInfo", "ptr", hmenu, "ptr", lpcmi, "int")

	/** @example DllCall("User32\SetMenuItemBitmaps", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "ptr", hBitmapUnchecked, "ptr", hBitmapChecked, "int") */
	static SetMenuItemBitmaps(hMenu, uPosition, uFlags, hBitmapUnchecked, hBitmapChecked) => DllCall("User32\SetMenuItemBitmaps", "ptr", hMenu, "uint", uPosition, "uint", uFlags, "ptr", hBitmapUnchecked, "ptr", hBitmapChecked, "int")

	/** @example DllCall("User32\SetMenuItemInfo", "ptr", hMenu, "uint", uItem, "int", fByPosition, "ptr", lpmii, "int") */
	static SetMenuItemInfo(hMenu, uItem, fByPosition, lpmii) => DllCall("User32\SetMenuItemInfo", "ptr", hMenu, "uint", uItem, "int", fByPosition, "ptr", lpmii, "int")

	/** @example DllCall("User32\SetMessageExtraInfo", "uptr", lParam, "uptr") */
	static SetMessageExtraInfo(lParam) => DllCall("User32\SetMessageExtraInfo", "uptr", lParam, "uptr")

	/** @example DllCall("User32\SetParent", "ptr", hWndChild, "ptr", hWndNewParent, "ptr") */
	static SetParent(hWndChild, hWndNewParent) => DllCall("User32\SetParent", "ptr", hWndChild, "ptr", hWndNewParent, "ptr")

	/** @example DllCall("User32\SetPhysicalCursorPos", "int", X, "int", Y, "int") */
	static SetPhysicalCursorPos(X, Y) => DllCall("User32\SetPhysicalCursorPos", "int", X, "int", Y, "int")

	/** @example DllCall("User32\SetProcessDPIAware", "int") */
	static SetProcessDPIAware() => DllCall("User32\SetProcessDPIAware", "int")

	/** @example DllCall("User32\SetProcessDefaultLayout", "uint", dwDefaultLayout, "int") */
	static SetProcessDefaultLayout(dwDefaultLayout) => DllCall("User32\SetProcessDefaultLayout", "uint", dwDefaultLayout, "int")

	/** @example DllCall("User32\SetProcessWindowStation", "ptr", hWinSta, "int") */
	static SetProcessWindowStation(hWinSta) => DllCall("User32\SetProcessWindowStation", "ptr", hWinSta, "int")

	/** @example DllCall("User32\SetProp", "ptr", hWnd, "ptr", StrPtr(lpString), "ptr", hData, "int") */
	static SetProp(hWnd, lpString, hData) => DllCall("User32\SetProp", "ptr", hWnd, "ptr", StrPtr(lpString), "ptr", hData, "int")

	/** @example DllCall("User32\SetRect", "ptr", lprc, "int", xLeft, "int", yTop, "int", xRight, "int", yBottom, "int") */
	static SetRect(lprc, xLeft, yTop, xRight, yBottom) => DllCall("User32\SetRect", "ptr", lprc, "int", xLeft, "int", yTop, "int", xRight, "int", yBottom, "int")

	/** @example DllCall("User32\SetRectEmpty", "ptr", lprc, "int") */
	static SetRectEmpty(lprc) => DllCall("User32\SetRectEmpty", "ptr", lprc, "int")

	/** @example DllCall("User32\SetScrollInfo", "ptr", hwnd, "int", fnBar, "ptr", lpsi, "int", fRedraw, "int") */
	static SetScrollInfo(hwnd, fnBar, lpsi, fRedraw) => DllCall("User32\SetScrollInfo", "ptr", hwnd, "int", fnBar, "ptr", lpsi, "int", fRedraw, "int")

	/** @example DllCall("User32\SetScrollPos", "ptr", hWnd, "int", nBar, "int", nPos, "int", bRedraw, "int") */
	static SetScrollPos(hWnd, nBar, nPos, bRedraw) => DllCall("User32\SetScrollPos", "ptr", hWnd, "int", nBar, "int", nPos, "int", bRedraw, "int")

	/** @example DllCall("User32\SetScrollRange", "ptr", hWnd, "int", nBar, "int", nMinPos, "int", nMaxPos, "int", bRedraw, "int") */
	static SetScrollRange(hWnd, nBar, nMinPos, nMaxPos, bRedraw) => DllCall("User32\SetScrollRange", "ptr", hWnd, "int", nBar, "int", nMinPos, "int", nMaxPos, "int", bRedraw, "int")

	/** @example DllCall("User32\SetSysColors", "int", cElements, "int*", &lpaElements, "uint*", &lpaRgbValues, "int") */
	static SetSysColors(cElements, &lpaElements, &lpaRgbValues) => DllCall("User32\SetSysColors", "int", cElements, "int*", &lpaElements, "uint*", &lpaRgbValues, "int")

	/** @example DllCall("User32\SetSystemCursor", "ptr", hcur, "uint", id, "int") */
	static SetSystemCursor(hcur, id) => DllCall("User32\SetSystemCursor", "ptr", hcur, "uint", id, "int")

	/** @example DllCall("User32\SetThreadDesktop", "ptr", hDesktop, "int") */
	static SetThreadDesktop(hDesktop) => DllCall("User32\SetThreadDesktop", "ptr", hDesktop, "int")

	/** @example DllCall("User32\SetTimer_", "ptr", hWnd, "uptr", nIDEvent, "uint", uElapse, "ptr", lpTimerFunc, "uptr") */
	static SetTimer_(hWnd, nIDEvent, uElapse, lpTimerFunc) => DllCall("User32\SetTimer_", "ptr", hWnd, "uptr", nIDEvent, "uint", uElapse, "ptr", lpTimerFunc, "uptr")

	/** @example DllCall("User32\SetUserObjectInformation", "ptr", hObj, "int", nIndex, "ptr", pvInfo, "uint", nLength, "int") */
	static SetUserObjectInformation(hObj, nIndex, pvInfo, nLength) => DllCall("User32\SetUserObjectInformation", "ptr", hObj, "int", nIndex, "ptr", pvInfo, "uint", nLength, "int")

	/** @example DllCall("User32\SetUserObjectSecurity", "ptr", hObj, "ptr", pSIRequested, "ptr", pSID, "int") */
	static SetUserObjectSecurity(hObj, pSIRequested, pSID) => DllCall("User32\SetUserObjectSecurity", "ptr", hObj, "ptr", pSIRequested, "ptr", pSID, "int")

	/** @example DllCall("User32\SetWinEventHook", "uint", eventMin, "uint", eventMax, "ptr", hmodWinEventProc, "ptr", lpfnWinEventProc, "uint", idProcess, "uint", idThread, "uint", dwflags, "ptr") */
	static SetWinEventHook(eventMin, eventMax, hmodWinEventProc, lpfnWinEventProc, idProcess, idThread, dwflags) => DllCall("User32\SetWinEventHook", "uint", eventMin, "uint", eventMax, "ptr", hmodWinEventProc, "ptr", lpfnWinEventProc, "uint", idProcess, "uint", idThread, "uint", dwflags, "ptr")

	/** @example DllCall("User32\SetWindowContextHelpId", "ptr", hwnd, "uint", dwContextHelpId, "int") */
	static SetWindowContextHelpId(hwnd, dwContextHelpId) => DllCall("User32\SetWindowContextHelpId", "ptr", hwnd, "uint", dwContextHelpId, "int")

	/** @example DllCall("User32\SetWindowDisplayAffinity", "ptr", hWnd, "uint", dwAffinity, "int") */
	static SetWindowDisplayAffinity(hWnd, dwAffinity) => DllCall("User32\SetWindowDisplayAffinity", "ptr", hWnd, "uint", dwAffinity, "int")

	  /** @example DllCall("User32\SetWindowLong", "ptr", hWnd, "int", nIndex, "int", dwNewLong, "int") */
	static SetWindowLong(hWnd, nIndex, dwNewLong) => DllCall("User32\SetWindowLong", "ptr", hWnd, "int", nIndex, "int", dwNewLong, "int")

	/** @example DllCall("User32\SetWindowLongPtrW", "ptr", hWnd, "int", nIndex, "int", dwNewLong, "int") */
	static SetWindowLongPtrW(hWnd, nIndex, dwNewLong) => DllCall("User32\SetWindowLongPtrW", "ptr", hWnd, "int", nIndex, "ptr", dwNewLong, "ptr")

	/** @example DllCall("User32\SetWindowPlacement", "ptr", hWnd, "ptr", lpwndpl, "int") */
	static SetWindowPlacement(hWnd, lpwndpl) => DllCall("User32\SetWindowPlacement", "ptr", hWnd, "ptr", lpwndpl, "int")

	/**
	 * 
	 * @param {number} hWnd
	 * @param {number} hWndInsertAfter
	 * - `HWND_BOTTOM`: `1` 將視窗放在 Z 順序的底部。如果 hWnd 參數識別最上層視窗，則視窗會失去最上層狀態，並放置在所有其他視窗的底部。
	 * - `HWND_NOTOPMOST`: `-2` 將視窗放在所有非最上層視窗上方，也就是在所有最上層視窗後面。如果視窗已經是非最上層的視窗，此旗標就不會有任何作用。
	 * - `HWND_TOP`      : `0` 將視窗放在 Z 順序的頂端。
	 * - `HWND_TOPMOST`  : `-1` 將視窗放在所有非最上層視窗上方。即使視窗已停用，視窗仍會維持最上層的位置。
	 * @param {number} [X=0]    
	 * @param {number} [Y=0]   
	 * @param {number} [cx=0]   
	 * @param {number} [cy=0]   
	 * @param {number} [uFlags=0x40] 
	 * - `SWP_ASYNCWINDOWPOS`: `0x4000` 如果呼叫執行緒和擁有視窗的執行緒會附加至不同的輸入佇列，則系統會將要求張貼至擁有視窗的執行緒。 這可防止呼叫執行緒封鎖其執行，而其他執行緒則處理要求。
	 * - `SWP_DEFERERASE`    : `0x2000` 防止產生 WM_SYNCPAINT 訊息。
	 * - `SWP_DRAWFRAME`     : `0x0020` 在視窗的類別描述中，繪製視窗周圍定義的框架。
	 * - `SWP_FRAMECHANGED`  : `0x0020` 使用 SetWindowLong 函式套用新的框架樣式。 將 WM_NCCALCSIZE 訊息傳送至視窗，即使視窗的大小未變更也一樣。 如果未指定此旗標， 則只有在 視窗的大小變更時，才會傳送WM_NCCALCSIZE。
	 * - `SWP_HIDEWINDOW`    : `0x0080` 隱藏視窗。
	 * - `SWP_NOACTIVATE`    : `0x0010` 不會啟動視窗。 如果未設定此旗標，則會啟動視窗並移至最上層或最上層群組的頂端， (視 hWndInsertAfter 參數的設定而定) 。
	 * - `SWP_NOCOPYBITS`    : `0x0100` 捨棄工作區的整個內容。 如果未指定此旗標，則會儲存工作區的有效內容，並在視窗調整大小或重新置放之後複製到工作區。
	 * - `SWP_NOMOVE`        : `0x0002` 保留目前的位置 (忽略 X 和 Y 參數) 。
	 * - `SWP_NOOWNERZORDER` : `0x0200` 不會變更擁有者視窗在 Z 順序中的位置。
	 * - `SWP_NOREDRAW`      : `0x0008` 不會重新繪製變更。 如果設定此旗標，則不會發生任何種類的重新繪製。 這適用于工作區、非用戶端區域 (包括標題列和捲軸) ，以及因視窗移動而發現父視窗的任何部分。 設定此旗標時，應用程式必須明確失效或重新繪製需要重新繪製之視窗和父視窗的任何部分。
	 * - `SWP_NOREPOSITION`  : `0x0200` 與 SWP_NOOWNERZORDER 旗標相同。
	 * - `SWP_NOSENDCHANGING`: `0x0400` 防止視窗接收 WM_WINDOWPOSCHANGING 訊息。
	 * - `SWP_NOSIZE`        : `0x0001` 保留目前的大小 (忽略 cx 和 cy 參數) 。
	 * - `SWP_NOZORDER`      : `0x0004` 保留目前的 Z 順序 (忽略 hWndInsertAfter 參數) 。
	 * - `SWP_SHOWWINDOW`    : `0x0040` 顯示視窗。  
	 * @returns {number|string} 
	 */
	static SetWindowPos(hWnd, hWndInsertAfter, X := 0, Y := 0, cx := 0, cy := 0, uFlags := 0x40) => DllCall("User32\SetWindowPos", "ptr", hWnd, "ptr", hWndInsertAfter, "int", X, "int", Y, "int", cx, "int", cy, "uint", uFlags, "int")

	/** @example DllCall("User32\SetWindowRgn", "ptr", hWnd, "ptr", hRgn, "int", bRedraw, "int") */
	static SetWindowRgn(hWnd, hRgn, bRedraw) => DllCall("User32\SetWindowRgn", "ptr", hWnd, "ptr", hRgn, "int", bRedraw, "int")

	/** @example DllCall("User32\SetWindowText", "ptr", hWnd, "ptr", StrPtr(lpString), "int") */
	static SetWindowText(hWnd, lpString) => DllCall("User32\SetWindowText", "ptr", hWnd, "ptr", StrPtr(lpString), "int")

	/** @example DllCall("User32\SetWindowsHookEx", "int", idHook, "ptr", lpfn, "ptr", hMod, "uint", dwThreadId, "ptr") */
	static SetWindowsHookEx(idHook, lpfn, hMod, dwThreadId) => DllCall("User32\SetWindowsHookEx", "int", idHook, "ptr", lpfn, "ptr", hMod, "uint", dwThreadId, "ptr")

	/** @example DllCall("User32\ShowCaret", "ptr", hWnd, "int") */
	static ShowCaret(hWnd) => DllCall("User32\ShowCaret", "ptr", hWnd, "int")

	/** @example DllCall("User32\ShowCursor", "int", bShow, "int") */
	static ShowCursor(bShow) => DllCall("User32\ShowCursor", "int", bShow, "int")

	/** @example DllCall("User32\ShowOwnedPopups", "ptr", hWnd, "int", fShow, "int") */
	static ShowOwnedPopups(hWnd, fShow) => DllCall("User32\ShowOwnedPopups", "ptr", hWnd, "int", fShow, "int")

	/** @example DllCall("User32\ShowScrollBar", "ptr", hWnd, "int", wBar, "int", bShow, "int") */
	static ShowScrollBar(hWnd, wBar, bShow) => DllCall("User32\ShowScrollBar", "ptr", hWnd, "int", wBar, "int", bShow, "int")

	/** @example DllCall("User32\ShowWindow", "ptr", hWnd, "int", nCmdShow, "int") */
	static ShowWindow(hWnd, nCmdShow) => DllCall("User32\ShowWindow", "ptr", hWnd, "int", nCmdShow, "int")

	/** @example DllCall("User32\ShowWindowAsync", "ptr", hWnd, "int", nCmdShow, "int") */
	static ShowWindowAsync(hWnd, nCmdShow) => DllCall("User32\ShowWindowAsync", "ptr", hWnd, "int", nCmdShow, "int")

	/** @example DllCall("User32\ShutdownBlockReasonCreate", "ptr", hWnd, "wstr", pwszReason, "int") */
	static ShutdownBlockReasonCreate(hWnd, pwszReason) => DllCall("User32\ShutdownBlockReasonCreate", "ptr", hWnd, "wstr", pwszReason, "int")

	/** @example DllCall("User32\ShutdownBlockReasonDestroy", "ptr", hwnd, "int") */
	static ShutdownBlockReasonDestroy(hwnd) => DllCall("User32\ShutdownBlockReasonDestroy", "ptr", hwnd, "int")

	/** @example DllCall("User32\ShutdownBlockReasonQuery", "ptr", hWnd, "wstr", pwszBuff, "uint*", &pcchBuff, "int") */
	static ShutdownBlockReasonQuery(hWnd, pwszBuff, &pcchBuff) => DllCall("User32\ShutdownBlockReasonQuery", "ptr", hWnd, "wstr", pwszBuff, "uint*", &pcchBuff, "int")

	/** @example DllCall("User32\SoundSentry", "int") */
	static SoundSentry() => DllCall("User32\SoundSentry", "int")

	/** @example DllCall("User32\SubtractRect", "ptr", lprcDst, "ptr", lprcSrc1, "ptr", lprcSrc2, "int") */
	static SubtractRect(lprcDst, lprcSrc1, lprcSrc2) => DllCall("User32\SubtractRect", "ptr", lprcDst, "ptr", lprcSrc1, "ptr", lprcSrc2, "uptr")

	/** @example DllCall("User32\SwapMouseButton", "int", fSwap, "int") */
	static SwapMouseButton(fSwap) => DllCall("User32\SwapMouseButton", "int", fSwap, "int")

	/** @example DllCall("User32\SwitchDesktop", "ptr", hDesktop, "int") */
	static SwitchDesktop(hDesktop) => DllCall("User32\SwitchDesktop", "ptr", hDesktop, "int")

	/** @example DllCall("User32\SwitchToThisWindow", "ptr", hWnd, "int", fAltTab, "int") */
	static SwitchToThisWindow(hWnd, fAltTab) => DllCall("User32\SwitchToThisWindow", "ptr", hWnd, "int", fAltTab, "int")

	/** @example DllCall("User32\SystemParametersInfo", "uint", uiAction, "uint", uiParam, "ptr", pvParam, "uint", fWinIni, "int") */
	static SystemParametersInfo(uiAction, uiParam, pvParam, fWinIni) => DllCall("User32\SystemParametersInfo", "uint", uiAction, "uint", uiParam, "ptr", pvParam, "uint", fWinIni, "int")

	/** @example DllCall("User32\TabbedTextOut", "ptr", hDC, "int", X, "int", Y, "ptr", StrPtr(lpString), "int", nCount, "int", nTabPositions, "ptr", lpnTabStopPositions, "int", nTabOrigin, "int") */
	static TabbedTextOut(hDC, X, Y, lpString, nCount, nTabPositions, lpnTabStopPositions, nTabOrigin) => DllCall("User32\TabbedTextOut", "ptr", hDC, "int", X, "int", Y, "ptr", StrPtr(lpString), "int", nCount, "int", nTabPositions, "ptr", lpnTabStopPositions, "int", nTabOrigin, "int")

	/** @example DllCall("User32\TileWindows", "ptr", hwndParent, "uint", wHow, "ptr", lpRect, "uint", cKids, "ptr", lpKids, "ushort") */
	static TileWindows(hwndParent, wHow, lpRect, cKids, lpKids) => DllCall("User32\TileWindows", "ptr", hwndParent, "uint", wHow, "ptr", lpRect, "uint", cKids, "ptr", lpKids, "ushort")

	/** @example DllCall("User32\ToAscii", "uint", uVirtKey, "uint", uScanCode, "uchar*", &lpKeyState, "ptr", lpChar, "uint", uFlags, "int") */
	static ToAscii(uVirtKey, uScanCode, &lpKeyState, lpChar, uFlags) => DllCall("User32\ToAscii", "uint", uVirtKey, "uint", uScanCode, "uchar*", &lpKeyState, "ptr", lpChar, "uint", uFlags, "int")

	/** @example DllCall("User32\ToAsciiEx", "uint", uVirtKey, "uint", uScanCode, "uchar*", &lpKeyState, "ptr", lpChar, "uint", uFlags, "ptr", dwhkl, "int") */
	static ToAsciiEx(uVirtKey, uScanCode, &lpKeyState, lpChar, uFlags, dwhkl) => DllCall("User32\ToAsciiEx", "uint", uVirtKey, "uint", uScanCode, "uchar*", &lpKeyState, "ptr", lpChar, "uint", uFlags, "ptr", dwhkl, "int")

	/** @example DllCall("User32\ToUnicode", "uint", wVirtKey, "uint", wScanCode, "uchar*", &lpKeyState, "wstr", pwszBuff, "int", cchBuff, "uint", wFlags, "int") */
	static ToUnicode(wVirtKey, wScanCode, &lpKeyState, pwszBuff, cchBuff, wFlags) => DllCall("User32\ToUnicode", "uint", wVirtKey, "uint", wScanCode, "uchar*", &lpKeyState, "wstr", pwszBuff, "int", cchBuff, "uint", wFlags, "int")

	/** @example DllCall("User32\ToUnicodeEx", "uint", wVirtKey, "uint", wScanCode, "uchar*", &lpKeyState, "wstr", pwszBuff, "int", cchBuff, "uint", wFlags, "ptr", dwhkl, "int") */
	static ToUnicodeEx(wVirtKey, wScanCode, &lpKeyState, pwszBuff, cchBuff, wFlags, dwhkl) => DllCall("User32\ToUnicodeEx", "uint", wVirtKey, "uint", wScanCode, "uchar*", &lpKeyState, "wstr", pwszBuff, "int", cchBuff, "uint", wFlags, "ptr", dwhkl, "int")

	/** @example DllCall("User32\TrackMouseEvent", "ptr", lpEventTrack, "int") */
	static TrackMouseEvent(lpEventTrack) => DllCall("User32\TrackMouseEvent", "ptr", lpEventTrack, "int")

	/** @example DllCall("User32\TrackPopupMenu", "ptr", hMenu, "uint", uFlags, "int", x, "int", y, "int", nReserved, "ptr", hWnd, "ptr", prcRect, "int") */
	static TrackPopupMenu(hMenu, uFlags, x, y, nReserved, hWnd, prcRect) => DllCall("User32\TrackPopupMenu", "ptr", hMenu, "uint", uFlags, "int", x, "int", y, "int", nReserved, "ptr", hWnd, "ptr", prcRect, "int")

	/** @example DllCall("User32\TrackPopupMenuEx", "ptr", hmenu, "uint", fuFlags, "int", x, "int", y, "ptr", hwnd, "ptr", lptpm, "int") */
	static TrackPopupMenuEx(hmenu, fuFlags, x, y, hwnd, lptpm) => DllCall("User32\TrackPopupMenuEx", "ptr", hmenu, "uint", fuFlags, "int", x, "int", y, "ptr", hwnd, "ptr", lptpm, "int")

	/** @example DllCall("User32\TranslateAccelerator", "ptr", hWnd, "ptr", hAccTable, "ptr", lpMsg, "int") */
	static TranslateAccelerator(hWnd, hAccTable, lpMsg) => DllCall("User32\TranslateAccelerator", "ptr", hWnd, "ptr", hAccTable, "ptr", lpMsg, "int")

	/** @example DllCall("User32\TranslateMDISysAccel", "ptr", hWndClient, "ptr", lpMsg, "int") */
	static TranslateMDISysAccel(hWndClient, lpMsg) => DllCall("User32\TranslateMDISysAccel", "ptr", hWndClient, "ptr", lpMsg, "int")

	/** @example DllCall("User32\TranslateMessage", "ptr", lpmsg, "int") */
	static TranslateMessage(lpmsg) => DllCall("User32\TranslateMessage", "ptr", lpmsg, "int")

	/** @example DllCall("User32\UnhookWinEvent", "ptr", hWinEventHook, "int") */
	static UnhookWinEvent(hWinEventHook) => DllCall("User32\UnhookWinEvent", "ptr", hWinEventHook, "int")

	/** @example DllCall("User32\UnhookWindowsHookEx", "ptr", hhk, "int") */
	static UnhookWindowsHookEx(hhk) => DllCall("User32\UnhookWindowsHookEx", "ptr", hhk, "int")

	/** @example DllCall("User32\UnionRect", "ptr", lprcDst, "ptr", lprcSrc1, "ptr", lprcSrc2, "int") */
	static UnionRect(lprcDst, lprcSrc1, lprcSrc2) => DllCall("User32\UnionRect", "ptr", lprcDst, "ptr", lprcSrc1, "ptr", lprcSrc2, "int")

	/** @example DllCall("User32\UnloadKeyboardLayout", "ptr", hKL, "int") */
	static UnloadKeyboardLayout(hKL) => DllCall("User32\UnloadKeyboardLayout", "ptr", hKL, "int")

	/** @example DllCall("User32\UnpackDDElParam", "uint", msg, "uptr", lParam, "uptr", puiLo, "uptr", puiHi, "int") */
	static UnpackDDElParam(msg, lParam, puiLo, puiHi) => DllCall("User32\UnpackDDElParam", "uint", msg, "uptr", lParam, "uptr", puiLo, "uptr", puiHi, "int")

	/** @example DllCall("User32\UnregisterClass", "ptr", StrPtr(lpClassName), "ptr", hInstance, "int") */
	static UnregisterClass(lpClassName, hInstance) => DllCall("User32\UnregisterClass", "ptr", StrPtr(lpClassName), "ptr", hInstance, "int")

	/** @example DllCall("User32\UnregisterDeviceNotification", "ptr", Handle, "int") */
	static UnregisterDeviceNotification(Handle) => DllCall("User32\UnregisterDeviceNotification", "ptr", Handle, "int")

	/** @example DllCall("User32\UnregisterHotKey", "ptr", hWnd, "int", id, "int") */
	static UnregisterHotKey(hWnd, id) => DllCall("User32\UnregisterHotKey", "ptr", hWnd, "int", id, "int")

	/** @example DllCall("User32\UnregisterPowerSettingNotification", "ptr", Handle, "int") */
	static UnregisterPowerSettingNotification(Handle) => DllCall("User32\UnregisterPowerSettingNotification", "ptr", Handle, "int")

	/** @example DllCall("User32\UnregisterTouchWindow", "ptr", hwnd, "int") */
	static UnregisterTouchWindow(hwnd) => DllCall("User32\UnregisterTouchWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\UpdateLayeredWindow", "ptr", hwnd, "ptr", hdcDst, "ptr", pptDst, "ptr", psize, "ptr", hdcSrc, "ptr", pptSrc, "uint", crKey, "ptr", pblend, "uint", dwFlags, "int") */
	static UpdateLayeredWindow(hwnd, hdcDst, pptDst, psize, hdcSrc, pptSrc, crKey, pblend, dwFlags) => DllCall("User32\UpdateLayeredWindow", "ptr", hwnd, "ptr", hdcDst, "ptr", pptDst, "ptr", psize, "ptr", hdcSrc, "ptr", pptSrc, "uint", crKey, "ptr", pblend, "uint", dwFlags, "int")

	/** @example DllCall("User32\UpdateLayeredWindowIndirect", "ptr", hwnd, "uptr*", &pULWInfo, "int") */
	static UpdateLayeredWindowIndirect(hwnd, &pULWInfo) => DllCall("User32\UpdateLayeredWindowIndirect", "ptr", hwnd, "uptr*", &pULWInfo, "int")

	/** @example DllCall("User32\UpdateWindow", "ptr", hwnd, "int") */
	static UpdateWindow(hwnd) => DllCall("User32\UpdateWindow", "ptr", hwnd, "int")

	/** @example DllCall("User32\UserHandleGrantAccess", "ptr", hUserHandle, "ptr", hJob, "int", bGrant, "int") */
	static UserHandleGrantAccess(hUserHandle, hJob, bGrant) => DllCall("User32\UserHandleGrantAccess", "ptr", hUserHandle, "ptr", hJob, "int", bGrant, "int")

	/** @example DllCall("User32\ValidateRect", "ptr", hWnd, "ptr", lpRect, "int") */
	static ValidateRect(hWnd, lpRect) => DllCall("User32\ValidateRect", "ptr", hWnd, "ptr", lpRect, "int")

	/** @example DllCall("User32\ValidateRgn", "ptr", hWnd, "ptr", hRgn, "int") */
	static ValidateRgn(hWnd, hRgn) => DllCall("User32\ValidateRgn", "ptr", hWnd, "ptr", hRgn, "int")

	/** @example DllCall("User32\VkKeyScan", "short", ch, "short") */
	static VkKeyScan(ch) => DllCall("User32\VkKeyScan", "short", ch, "short")

	/** @example DllCall("User32\VkKeyScanEx", "short", ch, "ptr", dwhkl, "short") */
	static VkKeyScanEx(ch, dwhkl) => DllCall("User32\VkKeyScanEx", "short", ch, "ptr", dwhkl, "short")

	/** @example DllCall("User32\WaitForInputIdle", "ptr", hProcess, "uint", dwMilliseconds, "uint") */
	static WaitForInputIdle(hProcess, dwMilliseconds) => DllCall("User32\WaitForInputIdle", "ptr", hProcess, "uint", dwMilliseconds, "uint")

	/** @example DllCall("User32\WaitMessage", "int") */
	static WaitMessage() => DllCall("User32\WaitMessage", "int")

	/** @example DllCall("User32\WinHelp", "ptr", hWndMain, "ptr", StrPtr(lpszHelp), "uint", uCommand, "uptr", dwData, "int") */
	static WinHelp(hWndMain, lpszHelp, uCommand, dwData) => DllCall("User32\WinHelp", "ptr", hWndMain, "ptr", StrPtr(lpszHelp), "uint", uCommand, "uptr", dwData, "int")

	/** @example DllCall("User32\WindowFromDC", "ptr", hdc, "ptr") */
	static WindowFromDC(hdc) => DllCall("User32\WindowFromDC", "ptr", hdc, "ptr")

	/** @example DllCall("User32\WindowFromPhysicalPoint", "uint64", Point, "ptr") */
	static WindowFromPhysicalPoint(pt) => DllCall("User32\WindowFromPhysicalPoint", "uint64", pt, "ptr")

	/** @example DllCall("User32\WindowFromPoint", "uint64", pt, "ptr") */
	static WindowFromPoint(pt) => DllCall("User32\WindowFromPoint", "uint64", pt, "ptr")

	/** @example DllCall("User32\keybd_event", "uchar", bVk, "uchar", bScan, "uint", dwFlags, "uptr", dwExtraInfo, "int") */
	static keybd_event(bVk, bScan, dwFlags, dwExtraInfo) => DllCall("User32\keybd_event", "uchar", bVk, "uchar", bScan, "uint", dwFlags, "uptr", dwExtraInfo, "int")

	/** @example DllCall("User32\mouse_event", "uint", dwFlags, "uint", dx, "uint", dy, "uint", dwData, "uptr", dwExtraInfo, "int") */
	static mouse_event(dwFlags, dx, dy, dwData, dwExtraInfo) => DllCall("User32\mouse_event", "uint", dwFlags, "uint", dx, "uint", dy, "uint", dwData, "uptr", dwExtraInfo, "int")

	static wsprintf(lpOut, lpFmt, args*)
	{
		_args := []
		for v in args
			_args.Push("ptr", v)
		_args.Push("int")
		return DllCall("User32\wsprintf", "ptr", StrPtr(lpOut), "ptr", StrPtr(lpFmt), _args*)
	}
	/** @example DllCall("User32\wvsprintf", "ptr", StrPtr(lpOutput), "ptr", StrPtr(lpFmt), "ptr", arglist, "int") */
	static wvsprintf(lpOutput, lpFmt, arglist) => DllCall("User32\wvsprintf", "ptr", StrPtr(lpOutput), "ptr", StrPtr(lpFmt), "ptr", arglist, "int")

	;#endregion

	;#region __Kernel32

	/** @example DllCall("Kernel32\AcquireSRWLockExclusive", "ptr", SRWLock, "int") */
	static AcquireSRWLockExclusive(SRWLock) => DllCall("Kernel32\AcquireSRWLockExclusive", "ptr", SRWLock, "int")

	/** @example DllCall("Kernel32\AcquireSRWLockShared", "ptr", SRWLock, "int") */
	static AcquireSRWLockShared(SRWLock) => DllCall("Kernel32\AcquireSRWLockShared", "ptr", SRWLock, "int")

	/** @example DllCall("Kernel32\ActivateActCtx", "ptr", hActCtx, "uptr", lpCookie, "int") */
	static ActivateActCtx(hActCtx, lpCookie) => DllCall("Kernel32\ActivateActCtx", "ptr", hActCtx, "uptr", lpCookie, "int")

	/** @example DllCall("Kernel32\AddAtom", "str", lpString, "ushort") */
	static AddAtom(lpString) => DllCall("Kernel32\AddAtom", "str", lpString, "ushort")

	/** @example DllCall("Kernel32\AddConsoleAlias", "str", Source, "str", Target, "str", ExeName, "int") */
	static AddConsoleAlias(Source, Target, ExeName) => DllCall("Kernel32\AddConsoleAlias", "str", Source, "str", Target, "str", ExeName, "int")

	/** @example DllCall("Kernel32\AddDllDirectory", "wstr", NewDirectory, "ptr") */
	static AddDllDirectory(NewDirectory) => DllCall("Kernel32\AddDllDirectory", "wstr", NewDirectory, "ptr")

	/** @example DllCall("Kernel32\AddIntegrityLabelToBoundaryDescriptor", "ptr", BoundaryDescriptor, "ptr", IntegrityLabel, "int") */
	static AddIntegrityLabelToBoundaryDescriptor(BoundaryDescriptor, IntegrityLabel) => DllCall("Kernel32\AddIntegrityLabelToBoundaryDescriptor", "ptr", BoundaryDescriptor, "ptr", IntegrityLabel, "int")

	/** @example DllCall("Kernel32\AddRefActCtx", "ptr", hActCtx, "int") */
	static AddRefActCtx(hActCtx) => DllCall("Kernel32\AddRefActCtx", "ptr", hActCtx, "int")

	/** @example DllCall("Kernel32\AddSIDToBoundaryDescriptor", "ptr", BoundaryDescriptor, "ptr", RequiredSid, "int") */
	static AddSIDToBoundaryDescriptor(BoundaryDescriptor, RequiredSid) => DllCall("Kernel32\AddSIDToBoundaryDescriptor", "ptr", BoundaryDescriptor, "ptr", RequiredSid, "int")

	/** @example DllCall("Kernel32\AddSecureMemoryCacheCallback", "ptr", pfnCallBack, "int") */
	static AddSecureMemoryCacheCallback(pfnCallBack) => DllCall("Kernel32\AddSecureMemoryCacheCallback", "ptr", pfnCallBack, "int")

	/** @example DllCall("Kernel32\AddVectoredContinueHandler", "uint", FirstHandler, "ptr", VectoredHandler, "ptr") */
	static AddVectoredContinueHandler(FirstHandler, VectoredHandler) => DllCall("Kernel32\AddVectoredContinueHandler", "uint", FirstHandler, "ptr", VectoredHandler, "ptr")

	/** @example DllCall("Kernel32\AddVectoredExceptionHandler", "uint", FirstHandler, "ptr", VectoredHandler, "ptr") */
	static AddVectoredExceptionHandler(FirstHandler, VectoredHandler) => DllCall("Kernel32\AddVectoredExceptionHandler", "uint", FirstHandler, "ptr", VectoredHandler, "ptr")

	/** @example DllCall("Kernel32\AdjustCalendarDate", "ptr", lpCalDateTime, "uint", calUnit, "int", amount, "int") */
	static AdjustCalendarDate(lpCalDateTime, calUnit, amount) => DllCall("Kernel32\AdjustCalendarDate", "ptr", lpCalDateTime, "uint", calUnit, "int", amount, "int")

	/** @example DllCall("Kernel32\AllocConsole", "int") */
	static AllocConsole() => DllCall("Kernel32\AllocConsole", "int")

	/** @example DllCall("Kernel32\AllocateUserPhysicalPages", "ptr", hProcess, "uptr", NumberOfPages, "uptr", UserPfnArray, "int") */
	static AllocateUserPhysicalPages(hProcess, NumberOfPages, UserPfnArray) => DllCall("Kernel32\AllocateUserPhysicalPages", "ptr", hProcess, "uptr", NumberOfPages, "uptr", UserPfnArray, "int")

	/** @example DllCall("Kernel32\AllocateUserPhysicalPagesNuma", "ptr", hProcess, "uptr", NumberOfPages, "uptr", PageArray, "uint", nndPreferred, "int") */
	static AllocateUserPhysicalPagesNuma(hProcess, NumberOfPages, PageArray, nndPreferred) => DllCall("Kernel32\AllocateUserPhysicalPagesNuma", "ptr", hProcess, "uptr", NumberOfPages, "uptr", PageArray, "uint", nndPreferred, "int")

	/** @example DllCall("Kernel32\ApplicationRecoveryFinished", "int", bSuccess, "int") */
	static ApplicationRecoveryFinished(bSuccess) => DllCall("Kernel32\ApplicationRecoveryFinished", "int", bSuccess, "int")

	/** @example DllCall("Kernel32\ApplicationRecoveryInProgress", "ptr", pbCanceled, "int") */
	static ApplicationRecoveryInProgress(pbCanceled) => DllCall("Kernel32\ApplicationRecoveryInProgress", "ptr", pbCanceled, "int")

	/** @example DllCall("Kernel32\AreFileApisANSI", "int") */
	static AreFileApisANSI() => DllCall("Kernel32\AreFileApisANSI", "int")

	/** @example DllCall("Kernel32\AssignProcessToJobObject", "ptr", hJob, "ptr", hProcess, "int") */
	static AssignProcessToJobObject(hJob, hProcess) => DllCall("Kernel32\AssignProcessToJobObject", "ptr", hJob, "ptr", hProcess, "int")

	/** @example DllCall("Kernel32\AttachConsole", "uint", dwProcessId, "int") */
	static AttachConsole(dwProcessId) => DllCall("Kernel32\AttachConsole", "uint", dwProcessId, "int")

	/** @example DllCall("Kernel32\BackupRead", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToRead, "ptr", lpNumberOfBytesRead, "int", bAbort, "int", bProcessSecurity, "ptr", lpContext, "int") */
	static BackupRead(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, bAbort, bProcessSecurity, lpContext) => DllCall("Kernel32\BackupRead", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToRead, "ptr", lpNumberOfBytesRead, "int", bAbort, "int", bProcessSecurity, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\BackupSeek", "ptr", hFile, "uint", dwLowBytesToSeek, "uint", dwHighBytesToSeek, "ptr", lpdwLowByteSeeked, "ptr", lpdwHighByteSeeked, "ptr", lpContext, "int") */
	static BackupSeek(hFile, dwLowBytesToSeek, dwHighBytesToSeek, lpdwLowByteSeeked, lpdwHighByteSeeked, lpContext) => DllCall("Kernel32\BackupSeek", "ptr", hFile, "uint", dwLowBytesToSeek, "uint", dwHighBytesToSeek, "ptr", lpdwLowByteSeeked, "ptr", lpdwHighByteSeeked, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\BackupWrite", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToWrite, "ptr", lpNumberOfBytesWritten, "int", bAbort, "int", bProcessSecurity, "ptr", lpContext, "int") */
	static BackupWrite(hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, bAbort, bProcessSecurity, lpContext) => DllCall("Kernel32\BackupWrite", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToWrite, "ptr", lpNumberOfBytesWritten, "int", bAbort, "int", bProcessSecurity, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\Beep", "uint", dwFreq, "uint", dwDuration, "int") */
	static Beep(dwFreq, dwDuration) => DllCall("Kernel32\Beep", "uint", dwFreq, "uint", dwDuration, "int")

	/** @example DllCall("Kernel32\BeginUpdateResource", "str", pFileName, "int", bDeleteExistingResources, "ptr") */
	static BeginUpdateResource(pFileName, bDeleteExistingResources) => DllCall("Kernel32\BeginUpdateResource", "str", pFileName, "int", bDeleteExistingResources, "ptr")

	/** @example DllCall("Kernel32\BindIoCompletionCallback", "ptr", FileHandle, "ptr", Function, "uint", Flags, "int") */
	static BindIoCompletionCallback(FileHandle, Function, Flags) => DllCall("Kernel32\BindIoCompletionCallback", "ptr", FileHandle, "ptr", Function, "uint", Flags, "int")

	/** @example DllCall("Kernel32\BuildCommDCB", "str", lpDef, "ptr", lpDCB, "int") */
	static BuildCommDCB(lpDef, lpDCB) => DllCall("Kernel32\BuildCommDCB", "str", lpDef, "ptr", lpDCB, "int")

	/** @example DllCall("Kernel32\BuildCommDCBAndTimeouts", "str", lpDef, "ptr", lpDCB, "ptr", lpCommTimeouts, "int") */
	static BuildCommDCBAndTimeouts(lpDef, lpDCB, lpCommTimeouts) => DllCall("Kernel32\BuildCommDCBAndTimeouts", "str", lpDef, "ptr", lpDCB, "ptr", lpCommTimeouts, "int")

	/** @example DllCall("Kernel32\CallNamedPipe", "str", lpNamedPipeName, "ptr", lpInBuffer, "uint", nInBufferSize, "ptr", lpOutBuffer, "uint", nOutBufferSize, "ptr", lpBytesRead, "uint", nTimeOut, "int") */
	static CallNamedPipe(lpNamedPipeName, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesRead, nTimeOut) => DllCall("Kernel32\CallNamedPipe", "str", lpNamedPipeName, "ptr", lpInBuffer, "uint", nInBufferSize, "ptr", lpOutBuffer, "uint", nOutBufferSize, "ptr", lpBytesRead, "uint", nTimeOut, "int")

	/** @example DllCall("Kernel32\CallbackMayRunLong", "ptr", pci, "int") */
	static CallbackMayRunLong(pci) => DllCall("Kernel32\CallbackMayRunLong", "ptr", pci, "int")

	/** @example DllCall("Kernel32\CancelDeviceWakeupRequest", "ptr", hDevice, "int") */
	static CancelDeviceWakeupRequest(hDevice) => DllCall("Kernel32\CancelDeviceWakeupRequest", "ptr", hDevice, "int")

	/** @example DllCall("Kernel32\CancelIo", "ptr", hFile, "int") */
	static CancelIo(hFile) => DllCall("Kernel32\CancelIo", "ptr", hFile, "int")

	/** @example DllCall("Kernel32\CancelIoEx", "ptr", hFile, "ptr", lpOverlapped, "int") */
	static CancelIoEx(hFile, lpOverlapped) => DllCall("Kernel32\CancelIoEx", "ptr", hFile, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\CancelSynchronousIo", "ptr", hThread, "int") */
	static CancelSynchronousIo(hThread) => DllCall("Kernel32\CancelSynchronousIo", "ptr", hThread, "int")

	/** @example DllCall("Kernel32\CancelThreadpoolIo", "ptr", pio, "int") */
	static CancelThreadpoolIo(pio) => DllCall("Kernel32\CancelThreadpoolIo", "ptr", pio, "int")

	/** @example DllCall("Kernel32\CancelTimerQueueTimer", "ptr", TimerQueue, "ptr", Timer, "int") */
	static CancelTimerQueueTimer(TimerQueue, Timer) => DllCall("Kernel32\CancelTimerQueueTimer", "ptr", TimerQueue, "ptr", Timer, "int")

	/** @example DllCall("Kernel32\CancelWaitableTimer", "ptr", hTimer, "int") */
	static CancelWaitableTimer(hTimer) => DllCall("Kernel32\CancelWaitableTimer", "ptr", hTimer, "int")

	/** @example DllCall("Kernel32\ChangeTimerQueueTimer", "ptr", TimerQueue, "ptr", Timer, "uint", DueTime, "uint", Period, "int") */
	static ChangeTimerQueueTimer(TimerQueue, Timer, DueTime, Period) => DllCall("Kernel32\ChangeTimerQueueTimer", "ptr", TimerQueue, "ptr", Timer, "uint", DueTime, "uint", Period, "int")

	/** @example DllCall("Kernel32\CheckNameLegalDOS8Dot3", "str", lpName, "astr", lpOemName, "uint", OemNameSize, "ptr", pbNameContainsSpaces, "ptr", pbNameLegal, "int") */
	static CheckNameLegalDOS8Dot3(lpName, lpOemName, OemNameSize, pbNameContainsSpaces, pbNameLegal) => DllCall("Kernel32\CheckNameLegalDOS8Dot3", "str", lpName, "astr", lpOemName, "uint", OemNameSize, "ptr", pbNameContainsSpaces, "ptr", pbNameLegal, "int")

	/** @example DllCall("Kernel32\CheckRemoteDebuggerPresent", "ptr", hProcess, "ptr", pbDebuggerPresent, "int") */
	static CheckRemoteDebuggerPresent(hProcess, pbDebuggerPresent) => DllCall("Kernel32\CheckRemoteDebuggerPresent", "ptr", hProcess, "ptr", pbDebuggerPresent, "int")

	/** @example DllCall("Kernel32\ClearCommBreak", "ptr", hFile, "int") */
	static ClearCommBreak(hFile) => DllCall("Kernel32\ClearCommBreak", "ptr", hFile, "int")

	/** @example DllCall("Kernel32\ClearCommError", "ptr", hFile, "ptr", lpErrors, "ptr", lpStat, "int") */
	static ClearCommError(hFile, lpErrors, lpStat) => DllCall("Kernel32\ClearCommError", "ptr", hFile, "ptr", lpErrors, "ptr", lpStat, "int")

	/** @example DllCall("Kernel32\CloseHandle", "ptr", hObject, "int") */
	static CloseHandle(hObject) => DllCall("Kernel32\CloseHandle", "ptr", hObject, "int")

	/** @example DllCall("Kernel32\ClosePrivateNamespace", "ptr", Handle, "uint", Flags, "uchar") */
	static ClosePrivateNamespace(Handle, Flags) => DllCall("Kernel32\ClosePrivateNamespace", "ptr", Handle, "uint", Flags, "uchar")

	/** @example DllCall("Kernel32\CloseThreadpool", "ptr", ptpp, "int") */
	static CloseThreadpool(ptpp) => DllCall("Kernel32\CloseThreadpool", "ptr", ptpp, "int")

	/** @example DllCall("Kernel32\CloseThreadpoolCleanupGroup", "ptr", ptpcg, "int") */
	static CloseThreadpoolCleanupGroup(ptpcg) => DllCall("Kernel32\CloseThreadpoolCleanupGroup", "ptr", ptpcg, "int")

	/** @example DllCall("Kernel32\CloseThreadpoolCleanupGroupMembers", "ptr", ptpcg, "int", fCancelPendingCallbacks, "ptr", pvCleanupContext, "int") */
	static CloseThreadpoolCleanupGroupMembers(ptpcg, fCancelPendingCallbacks, pvCleanupContext) => DllCall("Kernel32\CloseThreadpoolCleanupGroupMembers", "ptr", ptpcg, "int", fCancelPendingCallbacks, "ptr", pvCleanupContext, "int")

	/** @example DllCall("Kernel32\CloseThreadpoolIo", "ptr", pio, "int") */
	static CloseThreadpoolIo(pio) => DllCall("Kernel32\CloseThreadpoolIo", "ptr", pio, "int")

	/** @example DllCall("Kernel32\CloseThreadpoolTimer", "ptr", pti, "int") */
	static CloseThreadpoolTimer(pti) => DllCall("Kernel32\CloseThreadpoolTimer", "ptr", pti, "int")

	/** @example DllCall("Kernel32\CloseThreadpoolWait", "ptr", pwa, "int") */
	static CloseThreadpoolWait(pwa) => DllCall("Kernel32\CloseThreadpoolWait", "ptr", pwa, "int")

	/** @example DllCall("Kernel32\CloseThreadpoolWork", "ptr", pwk, "int") */
	static CloseThreadpoolWork(pwk) => DllCall("Kernel32\CloseThreadpoolWork", "ptr", pwk, "int")

	/** @example DllCall("Kernel32\CommConfigDialog", "str", lpszName, "ptr", hWnd, "ptr", lpCC, "int") */
	static CommConfigDialog(lpszName, hWnd, lpCC) => DllCall("Kernel32\CommConfigDialog", "str", lpszName, "ptr", hWnd, "ptr", lpCC, "int")

	/** @example DllCall("Kernel32\CompareFileTime", "ptr", lpFileTime1, "ptr", lpFileTime2, "int") */
	static CompareFileTime(lpFileTime1, lpFileTime2) => DllCall("Kernel32\CompareFileTime", "ptr", lpFileTime1, "ptr", lpFileTime2, "int")

	/** @example DllCall("Kernel32\CompareString", "uint", Locale, "uint", dwCmpFlags, "str", lpString1, "int", cchCount1, "str", lpString2, "int", cchCount2, "int") */
	static CompareString(Locale, dwCmpFlags, lpString1, cchCount1, lpString2, cchCount2) => DllCall("Kernel32\CompareString", "uint", Locale, "uint", dwCmpFlags, "str", lpString1, "int", cchCount1, "str", lpString2, "int", cchCount2, "int")

	/** @example DllCall("Kernel32\CompareStringEx", "wstr", lpLocaleName, "uint", dwCmpFlags, "wstr", lpString1, "int", cchCount1, "wstr", lpString2, "int", cchCount2, "ptr", lpVersionInformation, "ptr", lpReserved, "uptr", lParam, "int") */
	static CompareStringEx(lpLocaleName, dwCmpFlags, lpString1, cchCount1, lpString2, cchCount2, lpVersionInformation, lpReserved, lParam) => DllCall("Kernel32\CompareStringEx", "wstr", lpLocaleName, "uint", dwCmpFlags, "wstr", lpString1, "int", cchCount1, "wstr", lpString2, "int", cchCount2, "ptr", lpVersionInformation, "ptr", lpReserved, "uptr", lParam, "int")

	/** @example DllCall("Kernel32\CompareStringOrdinal", "wstr", lpString1, "int", cchCount1, "wstr", lpString2, "int", cchCount2, "int", bIgnoreCase, "int") */
	static CompareStringOrdinal(lpString1, cchCount1, lpString2, cchCount2, bIgnoreCase) => DllCall("Kernel32\CompareStringOrdinal", "wstr", lpString1, "int", cchCount1, "wstr", lpString2, "int", cchCount2, "int", bIgnoreCase, "int")

	/** @example DllCall("Kernel32\ConnectNamedPipe", "ptr", hNamedPipe, "ptr", lpOverlapped, "int") */
	static ConnectNamedPipe(hNamedPipe, lpOverlapped) => DllCall("Kernel32\ConnectNamedPipe", "ptr", hNamedPipe, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\ContinueDebugEvent", "uint", dwProcessId, "uint", dwThreadId, "uint", dwContinueStatus, "int") */
	static ContinueDebugEvent(dwProcessId, dwThreadId, dwContinueStatus) => DllCall("Kernel32\ContinueDebugEvent", "uint", dwProcessId, "uint", dwThreadId, "uint", dwContinueStatus, "int")

	/** @example DllCall("Kernel32\ConvertCalDateTimeToSystemTime", "ptr", lpCalDateTime, "ptr", lpSysTime, "int") */
	static ConvertCalDateTimeToSystemTime(lpCalDateTime, lpSysTime) => DllCall("Kernel32\ConvertCalDateTimeToSystemTime", "ptr", lpCalDateTime, "ptr", lpSysTime, "int")

	/** @example DllCall("Kernel32\ConvertDefaultLocale", "uint", Locale, "uint") */
	static ConvertDefaultLocale(Locale) => DllCall("Kernel32\ConvertDefaultLocale", "uint", Locale, "uint")

	/** @example DllCall("Kernel32\ConvertFiberToThread", "int") */
	static ConvertFiberToThread() => DllCall("Kernel32\ConvertFiberToThread", "int")

	/** @example DllCall("Kernel32\ConvertSystemTimeToCalDateTime", "ptr", lpSysTime, "uint", calId, "ptr", lpCalDateTime, "int") */
	static ConvertSystemTimeToCalDateTime(lpSysTime, calId, lpCalDateTime) => DllCall("Kernel32\ConvertSystemTimeToCalDateTime", "ptr", lpSysTime, "uint", calId, "ptr", lpCalDateTime, "int")

	/** @example DllCall("Kernel32\ConvertThreadToFiber", "ptr", lpParameter, "ptr") */
	static ConvertThreadToFiber(lpParameter) => DllCall("Kernel32\ConvertThreadToFiber", "ptr", lpParameter, "ptr")

	/** @example DllCall("Kernel32\ConvertThreadToFiberEx", "ptr", lpParameter, "uint", dwFlags, "ptr") */
	static ConvertThreadToFiberEx(lpParameter, dwFlags) => DllCall("Kernel32\ConvertThreadToFiberEx", "ptr", lpParameter, "uint", dwFlags, "ptr")

	/** @example DllCall("Kernel32\CopyContext", "ptr", Destination, "uint", ContextFlags, "ptr", Source, "int") */
	static CopyContext(Destination, ContextFlags, Source) => DllCall("Kernel32\CopyContext", "ptr", Destination, "uint", ContextFlags, "ptr", Source, "int")

	/** @example DllCall("Kernel32\CopyFile", "str", lpExistingFileName, "str", lpNewFileName, "int", bFailIfExists, "int") */
	static CopyFile(lpExistingFileName, lpNewFileName, bFailIfExists) => DllCall("Kernel32\CopyFile", "str", lpExistingFileName, "str", lpNewFileName, "int", bFailIfExists, "int")

	/** @example DllCall("Kernel32\CopyFileEx", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "ptr", pbCancel, "uint", dwCopyFlags, "int") */
	static CopyFileEx(lpExistingFileName, lpNewFileName, lpProgressRoutine, lpData, pbCancel, dwCopyFlags) => DllCall("Kernel32\CopyFileEx", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "ptr", pbCancel, "uint", dwCopyFlags, "int")

	/** @example DllCall("Kernel32\CopyFileTransacted", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "ptr", pbCancel, "uint", dwCopyFlags, "ptr", hTransaction, "int") */
	static CopyFileTransacted(lpExistingFileName, lpNewFileName, lpProgressRoutine, lpData, pbCancel, dwCopyFlags, hTransaction) => DllCall("Kernel32\CopyFileTransacted", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "ptr", pbCancel, "uint", dwCopyFlags, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\CopyLZFile", "int", nSourceFile, "int", nDestFile, "int") */
	static CopyLZFile(nSourceFile, nDestFile) => DllCall("Kernel32\CopyLZFile", "int", nSourceFile, "int", nDestFile, "int")

	/** @example DllCall("Kernel32\CreateActCtx", "ptr", pActCtx, "ptr") */
	static CreateActCtx(pActCtx) => DllCall("Kernel32\CreateActCtx", "ptr", pActCtx, "ptr")

	/** @example DllCall("Kernel32\CreateBoundaryDescriptor", "str", Name, "uint", Flags, "ptr") */
	static CreateBoundaryDescriptor(Name, Flags) => DllCall("Kernel32\CreateBoundaryDescriptor", "str", Name, "uint", Flags, "ptr")

	/** @example DllCall("Kernel32\CreateConsoleScreenBuffer", "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwFlags, "ptr", lpScreenBufferData, "ptr") */
	static CreateConsoleScreenBuffer(dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwFlags, lpScreenBufferData) => DllCall("Kernel32\CreateConsoleScreenBuffer", "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwFlags, "ptr", lpScreenBufferData, "ptr")

	/** @example DllCall("Kernel32\CreateDirectory", "str", lpPathName, "ptr", lpSecurityAttributes, "int") */
	static CreateDirectory(lpPathName, lpSecurityAttributes) => DllCall("Kernel32\CreateDirectory", "str", lpPathName, "ptr", lpSecurityAttributes, "int")

	/** @example DllCall("Kernel32\CreateDirectoryEx", "str", lpTemplateDirectory, "str", lpNewDirectory, "ptr", lpSecurityAttributes, "int") */
	static CreateDirectoryEx(lpTemplateDirectory, lpNewDirectory, lpSecurityAttributes) => DllCall("Kernel32\CreateDirectoryEx", "str", lpTemplateDirectory, "str", lpNewDirectory, "ptr", lpSecurityAttributes, "int")

	/** @example DllCall("Kernel32\CreateDirectoryTransacted", "str", lpTemplateDirectory, "str", lpNewDirectory, "ptr", lpSecurityAttributes, "ptr", hTransaction, "int") */
	static CreateDirectoryTransacted(lpTemplateDirectory, lpNewDirectory, lpSecurityAttributes, hTransaction) => DllCall("Kernel32\CreateDirectoryTransacted", "str", lpTemplateDirectory, "str", lpNewDirectory, "ptr", lpSecurityAttributes, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\CreateEvent", "ptr", lpEventAttributes, "int", bManualReset, "int", bInitialState, "str", lpName, "ptr") */
	static CreateEvent(lpEventAttributes, bManualReset, bInitialState, lpName) => DllCall("Kernel32\CreateEvent", "ptr", lpEventAttributes, "int", bManualReset, "int", bInitialState, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\CreateEventEx", "ptr", lpEventAttributes, "str", lpName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr") */
	static CreateEventEx(lpEventAttributes, lpName, dwFlags, dwDesiredAccess) => DllCall("Kernel32\CreateEventEx", "ptr", lpEventAttributes, "str", lpName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr")

	/** @example DllCall("Kernel32\CreateFiber", "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "ptr") */
	static CreateFiber(dwStackSize, lpStartAddress, lpParameter) => DllCall("Kernel32\CreateFiber", "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "ptr")

	/** @example DllCall("Kernel32\CreateFiberEx", "uptr", dwStackCommitSize, "uptr", dwStackReserveSize, "uint", dwFlags, "ptr", lpStartAddress, "ptr", lpParameter, "ptr") */
	static CreateFiberEx(dwStackCommitSize, dwStackReserveSize, dwFlags, lpStartAddress, lpParameter) => DllCall("Kernel32\CreateFiberEx", "uptr", dwStackCommitSize, "uptr", dwStackReserveSize, "uint", dwFlags, "ptr", lpStartAddress, "ptr", lpParameter, "ptr")

	/** @example DllCall("Kernel32\CreateFile", "str", lpFileName, "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwCreationDisposition, "uint", dwFlagsAndAttributes, "ptr", hTemplateFile, "ptr") */
	static CreateFile(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile) => DllCall("Kernel32\CreateFile", "str", lpFileName, "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwCreationDisposition, "uint", dwFlagsAndAttributes, "ptr", hTemplateFile, "ptr")

	/** @example DllCall("Kernel32\CreateFileMapping", "ptr", hFile, "ptr", lpAttributes, "uint", flProtect, "uint", dwMaximumSizeHigh, "uint", dwMaximumSizeLow, "str", lpName, "ptr") */
	static CreateFileMapping(hFile, lpAttributes, flProtect, dwMaximumSizeHigh, dwMaximumSizeLow, lpName) => DllCall("Kernel32\CreateFileMapping", "ptr", hFile, "ptr", lpAttributes, "uint", flProtect, "uint", dwMaximumSizeHigh, "uint", dwMaximumSizeLow, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\CreateFileMappingNuma", "ptr", hFile, "ptr", lpFileMappingAttributes, "uint", flProtect, "uint", dwMaximumSizeHigh, "uint", dwMaximumSizeLow, "str", lpName, "uint", nndPreferred, "ptr") */
	static CreateFileMappingNuma(hFile, lpFileMappingAttributes, flProtect, dwMaximumSizeHigh, dwMaximumSizeLow, lpName, nndPreferred) => DllCall("Kernel32\CreateFileMappingNuma", "ptr", hFile, "ptr", lpFileMappingAttributes, "uint", flProtect, "uint", dwMaximumSizeHigh, "uint", dwMaximumSizeLow, "str", lpName, "uint", nndPreferred, "ptr")

	/** @example DllCall("Kernel32\CreateFileTransacted", "str", lpFileName, "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwCreationDisposition, "uint", dwFlagsAndAttributes, "ptr", hTemplateFile, "ptr", hTransaction, "ptr", pusMiniVersion, "ptr", pExtendedParameter, "ptr") */
	static CreateFileTransacted(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile, hTransaction, pusMiniVersion, pExtendedParameter) => DllCall("Kernel32\CreateFileTransacted", "str", lpFileName, "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwCreationDisposition, "uint", dwFlagsAndAttributes, "ptr", hTemplateFile, "ptr", hTransaction, "ptr", pusMiniVersion, "ptr", pExtendedParameter, "ptr")

	/** @example DllCall("Kernel32\CreateHardLink", "str", lpFileName, "str", lpExistingFileName, "ptr", lpSecurityAttributes, "int") */
	static CreateHardLink(lpFileName, lpExistingFileName, lpSecurityAttributes) => DllCall("Kernel32\CreateHardLink", "str", lpFileName, "str", lpExistingFileName, "ptr", lpSecurityAttributes, "int")

	/** @example DllCall("Kernel32\CreateHardLinkTransacted", "str", lpFileName, "str", lpExistingFileName, "ptr", lpSecurityAttributes, "ptr", hTransaction, "int") */
	static CreateHardLinkTransacted(lpFileName, lpExistingFileName, lpSecurityAttributes, hTransaction) => DllCall("Kernel32\CreateHardLinkTransacted", "str", lpFileName, "str", lpExistingFileName, "ptr", lpSecurityAttributes, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\CreateIoCompletionPort", "ptr", FileHandle, "ptr", ExistingCompletionPort, "uptr", CompletionKey, "uint", NumberOfConcurrentThreads, "ptr") */
	static CreateIoCompletionPort(FileHandle, ExistingCompletionPort, CompletionKey, NumberOfConcurrentThreads) => DllCall("Kernel32\CreateIoCompletionPort", "ptr", FileHandle, "ptr", ExistingCompletionPort, "uptr", CompletionKey, "uint", NumberOfConcurrentThreads, "ptr")

	/** @example DllCall("Kernel32\CreateJobObject", "ptr", lpJobAttributes, "str", lpName, "ptr") */
	static CreateJobObject(lpJobAttributes, lpName) => DllCall("Kernel32\CreateJobObject", "ptr", lpJobAttributes, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\CreateJobSet", "uint", NumJob, "ptr", UserJobSet, "uint", Flags, "int") */
	static CreateJobSet(NumJob, UserJobSet, Flags) => DllCall("Kernel32\CreateJobSet", "uint", NumJob, "ptr", UserJobSet, "uint", Flags, "int")

	/** @example DllCall("Kernel32\CreateMailslot", "str", lpName, "uint", nMaxMessageSize, "uint", lReadTimeout, "ptr", lpSecurityAttributes, "ptr") */
	static CreateMailslot(lpName, nMaxMessageSize, lReadTimeout, lpSecurityAttributes) => DllCall("Kernel32\CreateMailslot", "str", lpName, "uint", nMaxMessageSize, "uint", lReadTimeout, "ptr", lpSecurityAttributes, "ptr")

	/** @example DllCall("Kernel32\CreateMemoryResourceNotification", "uint", NotificationType, "ptr") */
	static CreateMemoryResourceNotification(NotificationType) => DllCall("Kernel32\CreateMemoryResourceNotification", "uint", NotificationType, "ptr")

	/** @example DllCall("Kernel32\CreateMutex", "ptr", lpMutexAttributes, "int", bInitialOwner, "str", lpName, "ptr") */
	static CreateMutex(lpMutexAttributes, bInitialOwner, lpName) => DllCall("Kernel32\CreateMutex", "ptr", lpMutexAttributes, "int", bInitialOwner, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\CreateMutexEx", "ptr", lpMutexAttributes, "str", lpName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr") */
	static CreateMutexEx(lpMutexAttributes, lpName, dwFlags, dwDesiredAccess) => DllCall("Kernel32\CreateMutexEx", "ptr", lpMutexAttributes, "str", lpName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr")

	/** @example DllCall("Kernel32\CreateNamedPipe", "str", lpName, "uint", dwOpenMode, "uint", dwPipeMode, "uint", nMaxInstances, "uint", nOutBufferSize, "uint", nInBufferSize, "uint", nDefaultTimeOut, "ptr", lpSecurityAttributes, "ptr") */
	static CreateNamedPipe(lpName, dwOpenMode, dwPipeMode, nMaxInstances, nOutBufferSize, nInBufferSize, nDefaultTimeOut, lpSecurityAttributes) => DllCall("Kernel32\CreateNamedPipe", "str", lpName, "uint", dwOpenMode, "uint", dwPipeMode, "uint", nMaxInstances, "uint", nOutBufferSize, "uint", nInBufferSize, "uint", nDefaultTimeOut, "ptr", lpSecurityAttributes, "ptr")

	/** @example DllCall("Kernel32\CreatePipe", "ptr", hReadPipe, "ptr", hWritePipe, "ptr", lpPipeAttributes, "uint", nSize, "int") */
	static CreatePipe(hReadPipe, hWritePipe, lpPipeAttributes, nSize) => DllCall("Kernel32\CreatePipe", "ptr", hReadPipe, "ptr", hWritePipe, "ptr", lpPipeAttributes, "uint", nSize, "int")

	/** @example DllCall("Kernel32\CreatePrivateNamespace", "ptr", lpPrivateNamespaceAttributes, "ptr", lpBoundaryDescriptor, "str", lpAliasPrefix, "ptr") */
	static CreatePrivateNamespace(lpPrivateNamespaceAttributes, lpBoundaryDescriptor, lpAliasPrefix) => DllCall("Kernel32\CreatePrivateNamespace", "ptr", lpPrivateNamespaceAttributes, "ptr", lpBoundaryDescriptor, "str", lpAliasPrefix, "ptr")

	/** @example DllCall("Kernel32\CreateProcess", "str", lpApplicationName, "str", lpCommandLine, "ptr", lpProcessAttributes, "ptr", lpThreadAttributes, "int", bInheritHandles, "uint", dwCreationFlags, "ptr", lpEnvironment, "str", lpCurrentDirectory, "ptr", lpStartupInfo, "ptr", lpProcessInformation, "int") */
	static CreateProcess(lpApplicationName, lpCommandLine, lpProcessAttributes, lpThreadAttributes, bInheritHandles, dwCreationFlags, lpEnvironment, lpCurrentDirectory, lpStartupInfo, lpProcessInformation) => DllCall("Kernel32\CreateProcess", "str", lpApplicationName, "str", lpCommandLine, "ptr", lpProcessAttributes, "ptr", lpThreadAttributes, "int", bInheritHandles, "uint", dwCreationFlags, "ptr", lpEnvironment, "str", lpCurrentDirectory, "ptr", lpStartupInfo, "ptr", lpProcessInformation, "int")

	/** @example DllCall("Kernel32\CreateRemoteThread", "ptr", hProcess, "ptr", lpThreadAttributes, "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "uint", dwCreationFlags, "ptr", lpThreadId, "ptr") */
	static CreateRemoteThread(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId) => DllCall("Kernel32\CreateRemoteThread", "ptr", hProcess, "ptr", lpThreadAttributes, "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "uint", dwCreationFlags, "ptr", lpThreadId, "ptr")

	/** @example DllCall("Kernel32\CreateRemoteThreadEx", "ptr", hProcess, "ptr", lpThreadAttributes, "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "uint", dwCreationFlags, "ptr", lpAttributeList, "ptr", lpThreadId, "ptr") */
	static CreateRemoteThreadEx(hProcess, lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpAttributeList, lpThreadId) => DllCall("Kernel32\CreateRemoteThreadEx", "ptr", hProcess, "ptr", lpThreadAttributes, "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "uint", dwCreationFlags, "ptr", lpAttributeList, "ptr", lpThreadId, "ptr")

	/** @example DllCall("Kernel32\CreateSemaphore", "ptr", lpSemaphoreAttributes, "int", lInitialCount, "int", lMaximumCount, "str", lpName, "ptr") */
	static CreateSemaphore(lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName) => DllCall("Kernel32\CreateSemaphore", "ptr", lpSemaphoreAttributes, "int", lInitialCount, "int", lMaximumCount, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\CreateSemaphoreEx", "ptr", lpSemaphoreAttributes, "int", lInitialCount, "int", lMaximumCount, "str", lpName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr") */
	static CreateSemaphoreEx(lpSemaphoreAttributes, lInitialCount, lMaximumCount, lpName, dwFlags, dwDesiredAccess) => DllCall("Kernel32\CreateSemaphoreEx", "ptr", lpSemaphoreAttributes, "int", lInitialCount, "int", lMaximumCount, "str", lpName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr")

	/** @example DllCall("Kernel32\CreateSymbolicLink", "str", lpSymlinkFileName, "str", lpTargetFileName, "uint", dwFlags, "uchar") */
	static CreateSymbolicLink(lpSymlinkFileName, lpTargetFileName, dwFlags) => DllCall("Kernel32\CreateSymbolicLink", "str", lpSymlinkFileName, "str", lpTargetFileName, "uint", dwFlags, "uchar")

	/** @example DllCall("Kernel32\CreateSymbolicLinkTransacted", "str", lpSymlinkFileName, "str", lpTargetFileName, "uint", dwFlags, "ptr", hTransaction, "uchar") */
	static CreateSymbolicLinkTransacted(lpSymlinkFileName, lpTargetFileName, dwFlags, hTransaction) => DllCall("Kernel32\CreateSymbolicLinkTransacted", "str", lpSymlinkFileName, "str", lpTargetFileName, "uint", dwFlags, "ptr", hTransaction, "uchar")

	/** @example DllCall("Kernel32\CreateTapePartition", "ptr", hDevice, "uint", dwPartitionMethod, "uint", dwCount, "uint", dwSize, "uint") */
	static CreateTapePartition(hDevice, dwPartitionMethod, dwCount, dwSize) => DllCall("Kernel32\CreateTapePartition", "ptr", hDevice, "uint", dwPartitionMethod, "uint", dwCount, "uint", dwSize, "uint")

	/** @example DllCall("Kernel32\CreateThread", "ptr", lpThreadAttributes, "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "uint", dwCreationFlags, "ptr", lpThreadId, "ptr") */
	static CreateThread(lpThreadAttributes, dwStackSize, lpStartAddress, lpParameter, dwCreationFlags, lpThreadId) => DllCall("Kernel32\CreateThread", "ptr", lpThreadAttributes, "uptr", dwStackSize, "ptr", lpStartAddress, "ptr", lpParameter, "uint", dwCreationFlags, "ptr", lpThreadId, "ptr")

	/** @example DllCall("Kernel32\CreateThreadpool", "ptr", reserved, "ptr") */
	static CreateThreadpool(reserved) => DllCall("Kernel32\CreateThreadpool", "ptr", reserved, "ptr")

	/** @example DllCall("Kernel32\CreateThreadpoolCleanupGroup", "ptr") */
	static CreateThreadpoolCleanupGroup() => DllCall("Kernel32\CreateThreadpoolCleanupGroup", "ptr")

	/** @example DllCall("Kernel32\CreateThreadpoolIo", "ptr", fl, "ptr", pfnio, "ptr", pv, "ptr", pcbe, "ptr") */
	static CreateThreadpoolIo(fl, pfnio, pv, pcbe) => DllCall("Kernel32\CreateThreadpoolIo", "ptr", fl, "ptr", pfnio, "ptr", pv, "ptr", pcbe, "ptr")

	/** @example DllCall("Kernel32\CreateThreadpoolTimer", "ptr", pfnti, "ptr", pv, "ptr", pcbe, "ptr") */
	static CreateThreadpoolTimer(pfnti, pv, pcbe) => DllCall("Kernel32\CreateThreadpoolTimer", "ptr", pfnti, "ptr", pv, "ptr", pcbe, "ptr")

	/** @example DllCall("Kernel32\CreateThreadpoolWait", "ptr", pfnwa, "ptr", pv, "ptr", pcbe, "ptr") */
	static CreateThreadpoolWait(pfnwa, pv, pcbe) => DllCall("Kernel32\CreateThreadpoolWait", "ptr", pfnwa, "ptr", pv, "ptr", pcbe, "ptr")

	/** @example DllCall("Kernel32\CreateThreadpoolWork", "ptr", pfnwk, "ptr", pv, "ptr", pcbe, "ptr") */
	static CreateThreadpoolWork(pfnwk, pv, pcbe) => DllCall("Kernel32\CreateThreadpoolWork", "ptr", pfnwk, "ptr", pv, "ptr", pcbe, "ptr")

	/** @example DllCall("Kernel32\CreateTimerQueue", "ptr") */
	static CreateTimerQueue() => DllCall("Kernel32\CreateTimerQueue", "ptr")

	/** @example DllCall("Kernel32\CreateTimerQueueTimer", "ptr", phNewTimer, "ptr", TimerQueue, "ptr", Callback, "ptr", Parameter, "uint", DueTime, "uint", Period, "uint", Flags, "int") */
	static CreateTimerQueueTimer(phNewTimer, TimerQueue, Callback, Parameter, DueTime, Period, Flags) => DllCall("Kernel32\CreateTimerQueueTimer", "ptr", phNewTimer, "ptr", TimerQueue, "ptr", Callback, "ptr", Parameter, "uint", DueTime, "uint", Period, "uint", Flags, "int")

	/** @example DllCall("Kernel32\CreateToolhelp32Snapshot", "uint", dwFlags, "uint", th32ProcessID, "ptr") */
	static CreateToolhelp32Snapshot(dwFlags, th32ProcessID) => DllCall("Kernel32\CreateToolhelp32Snapshot", "uint", dwFlags, "uint", th32ProcessID, "ptr")

	/** @example DllCall("Kernel32\CreateWaitableTimer", "ptr", lpTimerAttributes, "int", bManualReset, "str", lpTimerName, "ptr") */
	static CreateWaitableTimer(lpTimerAttributes, bManualReset, lpTimerName) => DllCall("Kernel32\CreateWaitableTimer", "ptr", lpTimerAttributes, "int", bManualReset, "str", lpTimerName, "ptr")

	/** @example DllCall("Kernel32\CreateWaitableTimerEx", "ptr", lpTimerAttributes, "str", lpTimerName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr") */
	static CreateWaitableTimerEx(lpTimerAttributes, lpTimerName, dwFlags, dwDesiredAccess) => DllCall("Kernel32\CreateWaitableTimerEx", "ptr", lpTimerAttributes, "str", lpTimerName, "uint", dwFlags, "uint", dwDesiredAccess, "ptr")

	/** @example DllCall("Kernel32\DeactivateActCtx", "uint", dwFlags, "uptr", ulCookie, "int") */
	static DeactivateActCtx(dwFlags, ulCookie) => DllCall("Kernel32\DeactivateActCtx", "uint", dwFlags, "uptr", ulCookie, "int")

	/** @example DllCall("Kernel32\DebugActiveProcess", "uint", dwProcessId, "int") */
	static DebugActiveProcess(dwProcessId) => DllCall("Kernel32\DebugActiveProcess", "uint", dwProcessId, "int")

	/** @example DllCall("Kernel32\DebugActiveProcessStop", "uint", dwProcessId, "int") */
	static DebugActiveProcessStop(dwProcessId) => DllCall("Kernel32\DebugActiveProcessStop", "uint", dwProcessId, "int")

	/** @example DllCall("Kernel32\DebugBreak", "int") */
	static DebugBreak() => DllCall("Kernel32\DebugBreak", "int")

	/** @example DllCall("Kernel32\DebugBreakProcess", "ptr", Process, "int") */
	static DebugBreakProcess(Process) => DllCall("Kernel32\DebugBreakProcess", "ptr", Process, "int")

	/** @example DllCall("Kernel32\DebugSetProcessKillOnExit", "int", KillOnExit, "int") */
	static DebugSetProcessKillOnExit(KillOnExit) => DllCall("Kernel32\DebugSetProcessKillOnExit", "int", KillOnExit, "int")

	/** @example DllCall("Kernel32\DefineDosDevice", "uint", dwFlags, "str", lpDeviceName, "str", lpTargetPath, "int") */
	static DefineDosDevice(dwFlags, lpDeviceName, lpTargetPath) => DllCall("Kernel32\DefineDosDevice", "uint", dwFlags, "str", lpDeviceName, "str", lpTargetPath, "int")

	/** @example DllCall("Kernel32\DeleteAtom", "ushort", nAtom, "ushort") */
	static DeleteAtom(nAtom) => DllCall("Kernel32\DeleteAtom", "ushort", nAtom, "ushort")

	/** @example DllCall("Kernel32\DeleteBoundaryDescriptor", "ptr", BoundaryDescriptor, "int") */
	static DeleteBoundaryDescriptor(BoundaryDescriptor) => DllCall("Kernel32\DeleteBoundaryDescriptor", "ptr", BoundaryDescriptor, "int")

	/** @example DllCall("Kernel32\DeleteCriticalSection", "ptr", lpCriticalSection, "int") */
	static DeleteCriticalSection(lpCriticalSection) => DllCall("Kernel32\DeleteCriticalSection", "ptr", lpCriticalSection, "int")

	/** @example DllCall("Kernel32\DeleteFiber", "ptr", lpFiber, "int") */
	static DeleteFiber(lpFiber) => DllCall("Kernel32\DeleteFiber", "ptr", lpFiber, "int")

	/** @example DllCall("Kernel32\DeleteFile", "str", lpFileName, "int") */
	static DeleteFile(lpFileName) => DllCall("Kernel32\DeleteFile", "str", lpFileName, "int")

	/** @example DllCall("Kernel32\DeleteFileTransacted", "str", lpFileName, "ptr", hTransaction, "int") */
	static DeleteFileTransacted(lpFileName, hTransaction) => DllCall("Kernel32\DeleteFileTransacted", "str", lpFileName, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\DeleteProcThreadAttributeList", "ptr", lpAttributeList, "int") */
	static DeleteProcThreadAttributeList(lpAttributeList) => DllCall("Kernel32\DeleteProcThreadAttributeList", "ptr", lpAttributeList, "int")

	/** @example DllCall("Kernel32\DeleteTimerQueue", "ptr", TimerQueue, "int") */
	static DeleteTimerQueue(TimerQueue) => DllCall("Kernel32\DeleteTimerQueue", "ptr", TimerQueue, "int")

	/** @example DllCall("Kernel32\DeleteTimerQueueEx", "ptr", TimerQueue, "ptr", CompletionEvent, "int") */
	static DeleteTimerQueueEx(TimerQueue, CompletionEvent) => DllCall("Kernel32\DeleteTimerQueueEx", "ptr", TimerQueue, "ptr", CompletionEvent, "int")

	/** @example DllCall("Kernel32\DeleteTimerQueueTimer", "ptr", TimerQueue, "ptr", Timer, "ptr", CompletionEvent, "int") */
	static DeleteTimerQueueTimer(TimerQueue, Timer, CompletionEvent) => DllCall("Kernel32\DeleteTimerQueueTimer", "ptr", TimerQueue, "ptr", Timer, "ptr", CompletionEvent, "int")

	/** @example DllCall("Kernel32\DeleteVolumeMountPoint", "str", lpszVolumeMountPoint, "int") */
	static DeleteVolumeMountPoint(lpszVolumeMountPoint) => DllCall("Kernel32\DeleteVolumeMountPoint", "str", lpszVolumeMountPoint, "int")

	/** @example DllCall("Kernel32\DeviceIoControl", "ptr", hDevice, "uint", dwIoControlCode, "ptr", lpInBuffer, "uint", nInBufferSize, "ptr", lpOutBuffer, "uint", nOutBufferSize, "ptr", lpBytesReturned, "ptr", lpOverlapped, "int") */
	static DeviceIoControl(hDevice, dwIoControlCode, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesReturned, lpOverlapped) => DllCall("Kernel32\DeviceIoControl", "ptr", hDevice, "uint", dwIoControlCode, "ptr", lpInBuffer, "uint", nInBufferSize, "ptr", lpOutBuffer, "uint", nOutBufferSize, "ptr", lpBytesReturned, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\DisableThreadLibraryCalls", "ptr", hModule, "int") */
	static DisableThreadLibraryCalls(hModule) => DllCall("Kernel32\DisableThreadLibraryCalls", "ptr", hModule, "int")

	/** @example DllCall("Kernel32\DisableThreadProfiling", "ptr", PerformanceDataHandle, "uint") */
	static DisableThreadProfiling(PerformanceDataHandle) => DllCall("Kernel32\DisableThreadProfiling", "ptr", PerformanceDataHandle, "uint")

	/** @example DllCall("Kernel32\DisassociateCurrentThreadFromCallback", "ptr", pci, "int") */
	static DisassociateCurrentThreadFromCallback(pci) => DllCall("Kernel32\DisassociateCurrentThreadFromCallback", "ptr", pci, "int")

	/** @example DllCall("Kernel32\DisconnectNamedPipe", "ptr", hNamedPipe, "int") */
	static DisconnectNamedPipe(hNamedPipe) => DllCall("Kernel32\DisconnectNamedPipe", "ptr", hNamedPipe, "int")

	/** @example DllCall("Kernel32\DnsHostnameToComputerName", "str", Hostname, "str", ComputerName, "ptr", nSize, "int") */
	static DnsHostnameToComputerName(Hostname, ComputerName, nSize) => DllCall("Kernel32\DnsHostnameToComputerName", "str", Hostname, "str", ComputerName, "ptr", nSize, "int")

	/** @example DllCall("Kernel32\DosDateTimeToFileTime", "ushort", wFatDate, "ushort", wFatTime, "ptr", lpFileTime, "int") */
	static DosDateTimeToFileTime(wFatDate, wFatTime, lpFileTime) => DllCall("Kernel32\DosDateTimeToFileTime", "ushort", wFatDate, "ushort", wFatTime, "ptr", lpFileTime, "int")

	/** @example DllCall("Kernel32\DuplicateHandle", "ptr", hSourceProcessHandle, "ptr", hSourceHandle, "ptr", hTargetProcessHandle, "ptr", lpTargetHandle, "uint", dwDesiredAccess, "int", bInheritHandle, "uint", dwOptions, "int") */
	static DuplicateHandle(hSourceProcessHandle, hSourceHandle, hTargetProcessHandle, lpTargetHandle, dwDesiredAccess, bInheritHandle, dwOptions) => DllCall("Kernel32\DuplicateHandle", "ptr", hSourceProcessHandle, "ptr", hSourceHandle, "ptr", hTargetProcessHandle, "ptr", lpTargetHandle, "uint", dwDesiredAccess, "int", bInheritHandle, "uint", dwOptions, "int")

	/** @example DllCall("Kernel32\EnableThreadProfiling", "ptr", ThreadHandle, "uint", Flags, "uint64", HardwareCounters, "ptr", PerformanceDataHandle, "uint") */
	static EnableThreadProfiling(ThreadHandle, Flags, HardwareCounters, PerformanceDataHandle) => DllCall("Kernel32\EnableThreadProfiling", "ptr", ThreadHandle, "uint", Flags, "uint64", HardwareCounters, "ptr", PerformanceDataHandle, "uint")

	/** @example DllCall("Kernel32\EndUpdateResource", "ptr", hUpdate, "int", fDiscard, "int") */
	static EndUpdateResource(hUpdate, fDiscard) => DllCall("Kernel32\EndUpdateResource", "ptr", hUpdate, "int", fDiscard, "int")

	/** @example DllCall("Kernel32\EnterCriticalSection", "ptr", lpCriticalSection, "int") */
	static EnterCriticalSection(lpCriticalSection) => DllCall("Kernel32\EnterCriticalSection", "ptr", lpCriticalSection, "int")

	/** @example DllCall("Kernel32\EnumCalendarInfo", "ptr", pCalInfoEnumProc, "uint", Locale, "uint", Calendar, "uint", CalType, "int") */
	static EnumCalendarInfo(pCalInfoEnumProc, Locale, Calendar, CalType) => DllCall("Kernel32\EnumCalendarInfo", "ptr", pCalInfoEnumProc, "uint", Locale, "uint", Calendar, "uint", CalType, "int")

	/** @example DllCall("Kernel32\EnumCalendarInfoEx", "ptr", pCalInfoEnumProcEx, "uint", Locale, "uint", Calendar, "uint", CalType, "int") */
	static EnumCalendarInfoEx(pCalInfoEnumProcEx, Locale, Calendar, CalType) => DllCall("Kernel32\EnumCalendarInfoEx", "ptr", pCalInfoEnumProcEx, "uint", Locale, "uint", Calendar, "uint", CalType, "int")

	/** @example DllCall("Kernel32\EnumCalendarInfoExEx", "ptr", pCalInfoEnumProcExEx, "wstr", lpLocaleName, "uint", Calendar, "wstr", lpReserved, "uint", CalType, "uptr", lParam, "int") */
	static EnumCalendarInfoExEx(pCalInfoEnumProcExEx, lpLocaleName, Calendar, lpReserved, CalType, lParam) => DllCall("Kernel32\EnumCalendarInfoExEx", "ptr", pCalInfoEnumProcExEx, "wstr", lpLocaleName, "uint", Calendar, "wstr", lpReserved, "uint", CalType, "uptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumDateFormats", "ptr", lpDateFmtEnumProc, "uint", Locale, "uint", dwFlags, "int") */
	static EnumDateFormats(lpDateFmtEnumProc, Locale, dwFlags) => DllCall("Kernel32\EnumDateFormats", "ptr", lpDateFmtEnumProc, "uint", Locale, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\EnumDateFormatsEx", "ptr", lpDateFmtEnumProcEx, "uint", Locale, "uint", dwFlags, "int") */
	static EnumDateFormatsEx(lpDateFmtEnumProcEx, Locale, dwFlags) => DllCall("Kernel32\EnumDateFormatsEx", "ptr", lpDateFmtEnumProcEx, "uint", Locale, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\EnumDateFormatsExEx", "ptr", lpDateFmtEnumProcExEx, "wstr", lpLocaleName, "uint", dwFlags, "uptr", lParam, "int") */
	static EnumDateFormatsExEx(lpDateFmtEnumProcExEx, lpLocaleName, dwFlags, lParam) => DllCall("Kernel32\EnumDateFormatsExEx", "ptr", lpDateFmtEnumProcExEx, "wstr", lpLocaleName, "uint", dwFlags, "uptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumLanguageGroupLocales", "ptr", lpLangGroupLocaleEnumProc, "uint", LanguageGroup, "uint", dwFlags, "ptr", lParam, "int") */
	static EnumLanguageGroupLocales(lpLangGroupLocaleEnumProc, LanguageGroup, dwFlags, lParam) => DllCall("Kernel32\EnumLanguageGroupLocales", "ptr", lpLangGroupLocaleEnumProc, "uint", LanguageGroup, "uint", dwFlags, "ptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumResourceLanguages", "ptr", hModule, "str", lpType, "str", lpName, "ptr", lpEnumFunc, "ptr", lParam, "int") */
	static EnumResourceLanguages(hModule, lpType, lpName, lpEnumFunc, lParam) => DllCall("Kernel32\EnumResourceLanguages", "ptr", hModule, "str", lpType, "str", lpName, "ptr", lpEnumFunc, "ptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumResourceLanguagesEx", "ptr", hModule, "str", lpType, "str", lpName, "ptr", lpEnumFunc, "ptr", lParam, "uint", dwFlags, "ushort", LangId, "int") */
	static EnumResourceLanguagesEx(hModule, lpType, lpName, lpEnumFunc, lParam, dwFlags, LangId) => DllCall("Kernel32\EnumResourceLanguagesEx", "ptr", hModule, "str", lpType, "str", lpName, "ptr", lpEnumFunc, "ptr", lParam, "uint", dwFlags, "ushort", LangId, "int")

	/** @example DllCall("Kernel32\EnumResourceNames", "ptr", hModule, "str", lpszType, "ptr", lpEnumFunc, "ptr", lParam, "int") */
	static EnumResourceNames(hModule, lpszType, lpEnumFunc, lParam) => DllCall("Kernel32\EnumResourceNames", "ptr", hModule, "str", lpszType, "ptr", lpEnumFunc, "ptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumResourceNamesEx", "ptr", hModule, "str", lpszType, "ptr", lpEnumFunc, "ptr", lParam, "uint", dwFlags, "ushort", LangId, "int") */
	static EnumResourceNamesEx(hModule, lpszType, lpEnumFunc, lParam, dwFlags, LangId) => DllCall("Kernel32\EnumResourceNamesEx", "ptr", hModule, "str", lpszType, "ptr", lpEnumFunc, "ptr", lParam, "uint", dwFlags, "ushort", LangId, "int")

	/** @example DllCall("Kernel32\EnumResourceTypes", "ptr", hModule, "ptr", lpEnumFunc, "ptr", lParam, "int") */
	static EnumResourceTypes(hModule, lpEnumFunc, lParam) => DllCall("Kernel32\EnumResourceTypes", "ptr", hModule, "ptr", lpEnumFunc, "ptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumResourceTypesEx", "ptr", hModule, "ptr", lpEnumFunc, "ptr", lParam, "uint", dwFlags, "ushort", LangId, "int") */
	static EnumResourceTypesEx(hModule, lpEnumFunc, lParam, dwFlags, LangId) => DllCall("Kernel32\EnumResourceTypesEx", "ptr", hModule, "ptr", lpEnumFunc, "ptr", lParam, "uint", dwFlags, "ushort", LangId, "int")

	/** @example DllCall("Kernel32\EnumSystemCodePages", "ptr", lpCodePageEnumProc, "uint", dwFlags, "int") */
	static EnumSystemCodePages(lpCodePageEnumProc, dwFlags) => DllCall("Kernel32\EnumSystemCodePages", "ptr", lpCodePageEnumProc, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\EnumSystemFirmwareTables", "uint", FirmwareTableProviderSignature, "ptr", pFirmwareTableBuffer, "uint", BufferSize, "uint") */
	static EnumSystemFirmwareTables(FirmwareTableProviderSignature, pFirmwareTableBuffer, BufferSize) => DllCall("Kernel32\EnumSystemFirmwareTables", "uint", FirmwareTableProviderSignature, "ptr", pFirmwareTableBuffer, "uint", BufferSize, "uint")

	/** @example DllCall("Kernel32\EnumSystemGeoID", "uint", GeoClass, "uint", ParentGeoId, "ptr", lpGeoEnumProc, "int") */
	static EnumSystemGeoID(GeoClass, ParentGeoId, lpGeoEnumProc) => DllCall("Kernel32\EnumSystemGeoID", "uint", GeoClass, "uint", ParentGeoId, "ptr", lpGeoEnumProc, "int")

	/** @example DllCall("Kernel32\EnumSystemLanguageGroups", "ptr", lpLanguageGroupEnumProc, "uint", dwFlags, "ptr", lParam, "int") */
	static EnumSystemLanguageGroups(lpLanguageGroupEnumProc, dwFlags, lParam) => DllCall("Kernel32\EnumSystemLanguageGroups", "ptr", lpLanguageGroupEnumProc, "uint", dwFlags, "ptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumSystemLocales", "ptr", lpLocaleEnumProc, "uint", dwFlags, "int") */
	static EnumSystemLocales(lpLocaleEnumProc, dwFlags) => DllCall("Kernel32\EnumSystemLocales", "ptr", lpLocaleEnumProc, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\EnumSystemLocalesEx", "ptr", lpLocaleEnumProcEx, "uint", dwFlags, "uptr", lParam, "ptr", lpReserved, "int") */
	static EnumSystemLocalesEx(lpLocaleEnumProcEx, dwFlags, lParam, lpReserved) => DllCall("Kernel32\EnumSystemLocalesEx", "ptr", lpLocaleEnumProcEx, "uint", dwFlags, "uptr", lParam, "ptr", lpReserved, "int")

	/** @example DllCall("Kernel32\EnumTimeFormats", "ptr", lpTimeFmtEnumProc, "uint", Locale, "uint", dwFlags, "int") */
	static EnumTimeFormats(lpTimeFmtEnumProc, Locale, dwFlags) => DllCall("Kernel32\EnumTimeFormats", "ptr", lpTimeFmtEnumProc, "uint", Locale, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\EnumTimeFormatsEx", "ptr", lpTimeFmtEnumProcEx, "wstr", lpLocaleName, "uint", dwFlags, "uptr", lParam, "int") */
	static EnumTimeFormatsEx(lpTimeFmtEnumProcEx, lpLocaleName, dwFlags, lParam) => DllCall("Kernel32\EnumTimeFormatsEx", "ptr", lpTimeFmtEnumProcEx, "wstr", lpLocaleName, "uint", dwFlags, "uptr", lParam, "int")

	/** @example DllCall("Kernel32\EnumUILanguages", "ptr", lpUILanguageEnumProc, "uint", dwFlags, "ptr", lParam, "int") */
	static EnumUILanguages(lpUILanguageEnumProc, dwFlags, lParam) => DllCall("Kernel32\EnumUILanguages", "ptr", lpUILanguageEnumProc, "uint", dwFlags, "ptr", lParam, "int")

	/** @example DllCall("Kernel32\EraseTape", "ptr", hDevice, "uint", dwEraseType, "int", bImmediate, "uint") */
	static EraseTape(hDevice, dwEraseType, bImmediate) => DllCall("Kernel32\EraseTape", "ptr", hDevice, "uint", dwEraseType, "int", bImmediate, "uint")

	/** @example DllCall("Kernel32\EscapeCommFunction", "ptr", hFile, "uint", dwFunc, "int") */
	static EscapeCommFunction(hFile, dwFunc) => DllCall("Kernel32\EscapeCommFunction", "ptr", hFile, "uint", dwFunc, "int")

	/** @example DllCall("Kernel32\ExitProcess", "uint", uExitCode, "int") */
	static ExitProcess(uExitCode) => DllCall("Kernel32\ExitProcess", "uint", uExitCode, "int")

	/** @example DllCall("Kernel32\ExitThread", "uint", dwExitCode, "int") */
	static ExitThread(dwExitCode) => DllCall("Kernel32\ExitThread", "uint", dwExitCode, "int")

	/** @example DllCall("Kernel32\ExpandEnvironmentStrings", "str", lpSrc, "str", lpDst, "uint", nSize, "uint") */
	static ExpandEnvironmentStrings(lpSrc, lpDst, nSize) => DllCall("Kernel32\ExpandEnvironmentStrings", "str", lpSrc, "str", lpDst, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\FatalAppExit", "uint", uAction, "str", lpMessageText, "int") */
	static FatalAppExit(uAction, lpMessageText) => DllCall("Kernel32\FatalAppExit", "uint", uAction, "str", lpMessageText, "int")

	/** @example DllCall("Kernel32\FatalExit", "int", ExitCode, "int") */
	static FatalExit(ExitCode) => DllCall("Kernel32\FatalExit", "int", ExitCode, "int")

	/** @example DllCall("Kernel32\FileTimeToDosDateTime", "ptr", lpFileTime, "ptr", lpFatDate, "ptr", lpFatTime, "int") */
	static FileTimeToDosDateTime(lpFileTime, lpFatDate, lpFatTime) => DllCall("Kernel32\FileTimeToDosDateTime", "ptr", lpFileTime, "ptr", lpFatDate, "ptr", lpFatTime, "int")

	/** @example DllCall("Kernel32\FileTimeToLocalFileTime", "ptr", lpFileTime, "ptr", lpLocalFileTime, "int") */
	static FileTimeToLocalFileTime(lpFileTime, lpLocalFileTime) => DllCall("Kernel32\FileTimeToLocalFileTime", "ptr", lpFileTime, "ptr", lpLocalFileTime, "int")

	/** @example DllCall("Kernel32\FileTimeToSystemTime", "ptr", lpFileTime, "ptr", lpSystemTime, "int") */
	static FileTimeToSystemTime(lpFileTime, lpSystemTime) => DllCall("Kernel32\FileTimeToSystemTime", "ptr", lpFileTime, "ptr", lpSystemTime, "int")

	/** @example DllCall("Kernel32\FillConsoleOutputAttribute", "ptr", hConsoleOutput, "ushort", wAttribute, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfAttrsWritten, "int") */
	static FillConsoleOutputAttribute(hConsoleOutput, wAttribute, nLength, dwWriteCoord, lpNumberOfAttrsWritten) => DllCall("Kernel32\FillConsoleOutputAttribute", "ptr", hConsoleOutput, "ushort", wAttribute, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfAttrsWritten, "int")

	/** @example DllCall("Kernel32\FillConsoleOutputCharacter", "ptr", hConsoleOutput, "short", cCharacter, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfCharsWritten, "int") */
	static FillConsoleOutputCharacter(hConsoleOutput, cCharacter, nLength, dwWriteCoord, lpNumberOfCharsWritten) => DllCall("Kernel32\FillConsoleOutputCharacter", "ptr", hConsoleOutput, "short", cCharacter, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfCharsWritten, "int")

	/** @example DllCall("Kernel32\FindActCtxSectionGuid", "uint", dwFlags, "ptr", lpExtensionGuid, "uint", ulSectionId, "ptr", lpGuidToFind, "ptr", ReturnedData, "int") */
	static FindActCtxSectionGuid(dwFlags, lpExtensionGuid, ulSectionId, lpGuidToFind, ReturnedData) => DllCall("Kernel32\FindActCtxSectionGuid", "uint", dwFlags, "ptr", lpExtensionGuid, "uint", ulSectionId, "ptr", lpGuidToFind, "ptr", ReturnedData, "int")

	/** @example DllCall("Kernel32\FindActCtxSectionString", "uint", dwFlags, "ptr", lpExtensionGuid, "uint", ulSectionId, "str", lpStringToFind, "ptr", ReturnedData, "int") */
	static FindActCtxSectionString(dwFlags, lpExtensionGuid, ulSectionId, lpStringToFind, ReturnedData) => DllCall("Kernel32\FindActCtxSectionString", "uint", dwFlags, "ptr", lpExtensionGuid, "uint", ulSectionId, "str", lpStringToFind, "ptr", ReturnedData, "int")

	/** @example DllCall("Kernel32\FindAtom", "str", lpString, "ushort") */
	static FindAtom(lpString) => DllCall("Kernel32\FindAtom", "str", lpString, "ushort")

	/** @example DllCall("Kernel32\FindClose", "ptr", hFindFile, "int") */
	static FindClose(hFindFile) => DllCall("Kernel32\FindClose", "ptr", hFindFile, "int")

	/** @example DllCall("Kernel32\FindCloseChangeNotification", "ptr", hChangeHandle, "int") */
	static FindCloseChangeNotification(hChangeHandle) => DllCall("Kernel32\FindCloseChangeNotification", "ptr", hChangeHandle, "int")

	/** @example DllCall("Kernel32\FindFirstChangeNotification", "str", lpPathName, "int", bWatchSubtree, "uint", dwNotifyFilter, "ptr") */
	static FindFirstChangeNotification(lpPathName, bWatchSubtree, dwNotifyFilter) => DllCall("Kernel32\FindFirstChangeNotification", "str", lpPathName, "int", bWatchSubtree, "uint", dwNotifyFilter, "ptr")

	/** @example DllCall("Kernel32\FindFirstFile", "str", lpFileName, "ptr", lpFindFileData, "ptr") */
	static FindFirstFile(lpFileName, lpFindFileData) => DllCall("Kernel32\FindFirstFile", "str", lpFileName, "ptr", lpFindFileData, "ptr")

	/** @example DllCall("Kernel32\FindFirstFileEx", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFindFileData, "uint", fSearchOp, "ptr", lpSearchFilter, "uint", dwAdditionalFlags, "ptr") */
	static FindFirstFileEx(lpFileName, fInfoLevelId, lpFindFileData, fSearchOp, lpSearchFilter, dwAdditionalFlags) => DllCall("Kernel32\FindFirstFileEx", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFindFileData, "uint", fSearchOp, "ptr", lpSearchFilter, "uint", dwAdditionalFlags, "ptr")

	/** @example DllCall("Kernel32\FindFirstFileNameTransactedW", "wstr", lpFileName, "uint", dwFlags, "ptr", StringLength, "wstr", LinkName, "ptr", hTransaction, "ptr") */
	static FindFirstFileNameTransactedW(lpFileName, dwFlags, StringLength, LinkName, hTransaction) => DllCall("Kernel32\FindFirstFileNameTransactedW", "wstr", lpFileName, "uint", dwFlags, "ptr", StringLength, "wstr", LinkName, "ptr", hTransaction, "ptr")

	/** @example DllCall("Kernel32\FindFirstFileNameW", "wstr", lpFileName, "uint", dwFlags, "ptr", StringLength, "wstr", LinkName, "ptr") */
	static FindFirstFileNameW(lpFileName, dwFlags, StringLength, LinkName) => DllCall("Kernel32\FindFirstFileNameW", "wstr", lpFileName, "uint", dwFlags, "ptr", StringLength, "wstr", LinkName, "ptr")

	/** @example DllCall("Kernel32\FindFirstFileTransacted", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFindFileData, "uint", fSearchOp, "ptr", lpSearchFilter, "uint", dwAdditionalFlags, "ptr", hTransaction, "ptr") */
	static FindFirstFileTransacted(lpFileName, fInfoLevelId, lpFindFileData, fSearchOp, lpSearchFilter, dwAdditionalFlags, hTransaction) => DllCall("Kernel32\FindFirstFileTransacted", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFindFileData, "uint", fSearchOp, "ptr", lpSearchFilter, "uint", dwAdditionalFlags, "ptr", hTransaction, "ptr")

	/** @example DllCall("Kernel32\FindFirstStreamTransactedW", "wstr", lpFileName, "uint", InfoLevel, "ptr", lpFindStreamData, "uint", dwFlags, "ptr", hTransaction, "ptr") */
	static FindFirstStreamTransactedW(lpFileName, InfoLevel, lpFindStreamData, dwFlags, hTransaction) => DllCall("Kernel32\FindFirstStreamTransactedW", "wstr", lpFileName, "uint", InfoLevel, "ptr", lpFindStreamData, "uint", dwFlags, "ptr", hTransaction, "ptr")

	/** @example DllCall("Kernel32\FindFirstStreamW", "wstr", lpFileName, "uint", InfoLevel, "ptr", lpFindStreamData, "uint", dwFlags, "ptr") */
	static FindFirstStreamW(lpFileName, InfoLevel, lpFindStreamData, dwFlags) => DllCall("Kernel32\FindFirstStreamW", "wstr", lpFileName, "uint", InfoLevel, "ptr", lpFindStreamData, "uint", dwFlags, "ptr")

	/** @example DllCall("Kernel32\FindFirstVolume", "str", lpszVolumeName, "uint", cchBufferLength, "ptr") */
	static FindFirstVolume(lpszVolumeName, cchBufferLength) => DllCall("Kernel32\FindFirstVolume", "str", lpszVolumeName, "uint", cchBufferLength, "ptr")

	/** @example DllCall("Kernel32\FindFirstVolumeMountPoint", "str", lpszRootPathName, "str", lpszVolumeMountPoint, "uint", cchBufferLength, "ptr") */
	static FindFirstVolumeMountPoint(lpszRootPathName, lpszVolumeMountPoint, cchBufferLength) => DllCall("Kernel32\FindFirstVolumeMountPoint", "str", lpszRootPathName, "str", lpszVolumeMountPoint, "uint", cchBufferLength, "ptr")

	/** @example DllCall("Kernel32\FindNLSString", "uint", Locale, "uint", dwFindNLSStringFlags, "wstr", lpStringSource, "int", cchSource, "wstr", lpStringValue, "int", cchValue, "ptr", pcchFound, "int") */
	static FindNLSString(Locale, dwFindNLSStringFlags, lpStringSource, cchSource, lpStringValue, cchValue, pcchFound) => DllCall("Kernel32\FindNLSString", "uint", Locale, "uint", dwFindNLSStringFlags, "wstr", lpStringSource, "int", cchSource, "wstr", lpStringValue, "int", cchValue, "ptr", pcchFound, "int")

	/** @example DllCall("Kernel32\FindNLSStringEx", "wstr", lpLocaleName, "uint", dwFindNLSStringFlags, "wstr", lpStringSource, "int", cchSource, "wstr", lpStringValue, "int", cchValue, "ptr", pcchFound, "ptr", lpVersionInformation, "ptr", lpReserved, "uptr", sortHandle, "int") */
	static FindNLSStringEx(lpLocaleName, dwFindNLSStringFlags, lpStringSource, cchSource, lpStringValue, cchValue, pcchFound, lpVersionInformation, lpReserved, sortHandle) => DllCall("Kernel32\FindNLSStringEx", "wstr", lpLocaleName, "uint", dwFindNLSStringFlags, "wstr", lpStringSource, "int", cchSource, "wstr", lpStringValue, "int", cchValue, "ptr", pcchFound, "ptr", lpVersionInformation, "ptr", lpReserved, "uptr", sortHandle, "int")

	/** @example DllCall("Kernel32\FindNextChangeNotification", "ptr", hChangeHandle, "int") */
	static FindNextChangeNotification(hChangeHandle) => DllCall("Kernel32\FindNextChangeNotification", "ptr", hChangeHandle, "int")

	/** @example DllCall("Kernel32\FindNextFile", "ptr", hFindFile, "ptr", lpFindFileData, "int") */
	static FindNextFile(hFindFile, lpFindFileData) => DllCall("Kernel32\FindNextFile", "ptr", hFindFile, "ptr", lpFindFileData, "int")

	/** @example DllCall("Kernel32\FindNextFileNameW", "ptr", hFindStream, "ptr", StringLength, "wstr", LinkName, "int") */
	static FindNextFileNameW(hFindStream, StringLength, LinkName) => DllCall("Kernel32\FindNextFileNameW", "ptr", hFindStream, "ptr", StringLength, "wstr", LinkName, "int")

	/** @example DllCall("Kernel32\FindNextStreamW", "ptr", hFindStream, "ptr", lpFindStreamData, "int") */
	static FindNextStreamW(hFindStream, lpFindStreamData) => DllCall("Kernel32\FindNextStreamW", "ptr", hFindStream, "ptr", lpFindStreamData, "int")

	/** @example DllCall("Kernel32\FindNextVolume", "ptr", hFindVolume, "str", lpszVolumeName, "uint", cchBufferLength, "int") */
	static FindNextVolume(hFindVolume, lpszVolumeName, cchBufferLength) => DllCall("Kernel32\FindNextVolume", "ptr", hFindVolume, "str", lpszVolumeName, "uint", cchBufferLength, "int")

	/** @example DllCall("Kernel32\FindNextVolumeMountPoint", "ptr", hFindVolumeMountPoint, "str", lpszVolumeMountPoint, "uint", cchBufferLength, "int") */
	static FindNextVolumeMountPoint(hFindVolumeMountPoint, lpszVolumeMountPoint, cchBufferLength) => DllCall("Kernel32\FindNextVolumeMountPoint", "ptr", hFindVolumeMountPoint, "str", lpszVolumeMountPoint, "uint", cchBufferLength, "int")

	/** @example DllCall("Kernel32\FindResource", "ptr", hModule, "str", lpName, "str", lpType, "ptr") */
	static FindResource(hModule, lpName, lpType) => DllCall("Kernel32\FindResource", "ptr", hModule, "str", lpName, "str", lpType, "ptr")

	/** @example DllCall("Kernel32\FindResourceEx", "ptr", hModule, "str", lpType, "str", lpName, "ushort", wLanguage, "ptr") */
	static FindResourceEx(hModule, lpType, lpName, wLanguage) => DllCall("Kernel32\FindResourceEx", "ptr", hModule, "str", lpType, "str", lpName, "ushort", wLanguage, "ptr")

	/** @example DllCall("Kernel32\FindStringOrdinal", "uint", dwFindStringOrdinalFlags, "wstr", lpStringSource, "int", cchSource, "wstr", lpStringValue, "int", cchValue, "int", bIgnoreCase, "int") */
	static FindStringOrdinal(dwFindStringOrdinalFlags, lpStringSource, cchSource, lpStringValue, cchValue, bIgnoreCase) => DllCall("Kernel32\FindStringOrdinal", "uint", dwFindStringOrdinalFlags, "wstr", lpStringSource, "int", cchSource, "wstr", lpStringValue, "int", cchValue, "int", bIgnoreCase, "int")

	/** @example DllCall("Kernel32\FindVolumeClose", "ptr", hFindVolume, "int") */
	static FindVolumeClose(hFindVolume) => DllCall("Kernel32\FindVolumeClose", "ptr", hFindVolume, "int")

	/** @example DllCall("Kernel32\FindVolumeMountPointClose", "ptr", hFindVolumeMountPoint, "int") */
	static FindVolumeMountPointClose(hFindVolumeMountPoint) => DllCall("Kernel32\FindVolumeMountPointClose", "ptr", hFindVolumeMountPoint, "int")

	/** @example DllCall("Kernel32\FlsAlloc", "ptr", lpCallback, "uint") */
	static FlsAlloc(lpCallback) => DllCall("Kernel32\FlsAlloc", "ptr", lpCallback, "uint")

	/** @example DllCall("Kernel32\FlsFree", "uint", dwFlsIndex, "int") */
	static FlsFree(dwFlsIndex) => DllCall("Kernel32\FlsFree", "uint", dwFlsIndex, "int")

	/** @example DllCall("Kernel32\FlsGetValue", "uint", dwFlsIndex, "ptr") */
	static FlsGetValue(dwFlsIndex) => DllCall("Kernel32\FlsGetValue", "uint", dwFlsIndex, "ptr")

	/** @example DllCall("Kernel32\FlsSetValue", "uint", dwFlsIndex, "ptr", lpFlsData, "int") */
	static FlsSetValue(dwFlsIndex, lpFlsData) => DllCall("Kernel32\FlsSetValue", "uint", dwFlsIndex, "ptr", lpFlsData, "int")

	/** @example DllCall("Kernel32\FlushConsoleInputBuffer", "ptr", hConsoleInput, "int") */
	static FlushConsoleInputBuffer(hConsoleInput) => DllCall("Kernel32\FlushConsoleInputBuffer", "ptr", hConsoleInput, "int")

	/** @example DllCall("Kernel32\FlushFileBuffers", "ptr", hFile, "int") */
	static FlushFileBuffers(hFile) => DllCall("Kernel32\FlushFileBuffers", "ptr", hFile, "int")

	/** @example DllCall("Kernel32\FlushInstructionCache", "ptr", hProcess, "ptr", lpBaseAddress, "uptr", dwSize, "int") */
	static FlushInstructionCache(hProcess, lpBaseAddress, dwSize) => DllCall("Kernel32\FlushInstructionCache", "ptr", hProcess, "ptr", lpBaseAddress, "uptr", dwSize, "int")

	/** @example DllCall("Kernel32\FlushProcessWriteBuffers", "int") */
	static FlushProcessWriteBuffers() => DllCall("Kernel32\FlushProcessWriteBuffers", "int")

	/** @example DllCall("Kernel32\FlushViewOfFile", "ptr", lpBaseAddress, "uptr", dwNumberOfBytesToFlush, "int") */
	static FlushViewOfFile(lpBaseAddress, dwNumberOfBytesToFlush) => DllCall("Kernel32\FlushViewOfFile", "ptr", lpBaseAddress, "uptr", dwNumberOfBytesToFlush, "int")

	/** @example DllCall("Kernel32\FoldString", "uint", dwMapFlags, "str", lpSrcStr, "int", cchSrc, "str", lpDestStr, "int", cchDest, "int") */
	static FoldString(dwMapFlags, lpSrcStr, cchSrc, lpDestStr, cchDest) => DllCall("Kernel32\FoldString", "uint", dwMapFlags, "str", lpSrcStr, "int", cchSrc, "str", lpDestStr, "int", cchDest, "int")

	/** @example DllCall("Kernel32\FormatMessage", "uint", dwFlags, "ptr", lpSource, "uint", dwMessageId, "uint", dwLanguageId, "str", lpBuffer, "uint", nSize, "ptr", Arguments, "uint") */
	static FormatMessage(dwFlags, lpSource, dwMessageId, dwLanguageId, lpBuffer, nSize, Arguments) => DllCall("Kernel32\FormatMessage", "uint", dwFlags, "ptr", lpSource, "uint", dwMessageId, "uint", dwLanguageId, "str", lpBuffer, "uint", nSize, "ptr", Arguments, "uint")

	/** @example DllCall("Kernel32\FreeConsole", "int") */
	static FreeConsole() => DllCall("Kernel32\FreeConsole", "int")

	/** @example DllCall("Kernel32\FreeEnvironmentStrings", "str", lpszEnvironmentBlock, "int") */
	static FreeEnvironmentStrings(lpszEnvironmentBlock) => DllCall("Kernel32\FreeEnvironmentStrings", "str", lpszEnvironmentBlock, "int")

	/** @example DllCall("Kernel32\FreeLibrary", "ptr", hModule, "int") */
	static FreeLibrary(hModule) => DllCall("Kernel32\FreeLibrary", "ptr", hModule, "int")

	/** @example DllCall("Kernel32\FreeLibraryAndExitThread", "ptr", hModule, "uint", dwExitCode, "int") */
	static FreeLibraryAndExitThread(hModule, dwExitCode) => DllCall("Kernel32\FreeLibraryAndExitThread", "ptr", hModule, "uint", dwExitCode, "int")

	/** @example DllCall("Kernel32\FreeLibraryWhenCallbackReturns", "ptr", pci, "ptr", mod, "int") */
	static FreeLibraryWhenCallbackReturns(pci, mod) => DllCall("Kernel32\FreeLibraryWhenCallbackReturns", "ptr", pci, "ptr", mod, "int")

	/** @example DllCall("Kernel32\FreeResource", "ptr", hglbResource, "int") */
	static FreeResource(hglbResource) => DllCall("Kernel32\FreeResource", "ptr", hglbResource, "int")

	/** @example DllCall("Kernel32\FreeUserPhysicalPages", "ptr", hProcess, "uptr", NumberOfPages, "uptr", UserPfnArray, "int") */
	static FreeUserPhysicalPages(hProcess, NumberOfPages, UserPfnArray) => DllCall("Kernel32\FreeUserPhysicalPages", "ptr", hProcess, "uptr", NumberOfPages, "uptr", UserPfnArray, "int")

	/** @example DllCall("Kernel32\GenerateConsoleCtrlEvent", "uint", dwCtrlEvent, "uint", dwProcessGroupId, "int") */
	static GenerateConsoleCtrlEvent(dwCtrlEvent, dwProcessGroupId) => DllCall("Kernel32\GenerateConsoleCtrlEvent", "uint", dwCtrlEvent, "uint", dwProcessGroupId, "int")

	/** @example DllCall("Kernel32\GetACP", "uint") */
	static GetACP() => DllCall("Kernel32\GetACP", "uint")

	/** @example DllCall("Kernel32\GetActiveProcessorCount", "ushort", GroupNumber, "uint") */
	static GetActiveProcessorCount(GroupNumber) => DllCall("Kernel32\GetActiveProcessorCount", "ushort", GroupNumber, "uint")

	/** @example DllCall("Kernel32\GetActiveProcessorGroupCount", "ushort") */
	static GetActiveProcessorGroupCount() => DllCall("Kernel32\GetActiveProcessorGroupCount", "ushort")

	/** @example DllCall("Kernel32\GetApplicationRecoveryCallback", "ptr", hProcess, "ptr", pRecoveryCallback, "ptr", ppvParameter, "ptr", pdwPingInterval, "ptr", pdwFlags, "int") */
	static GetApplicationRecoveryCallback(hProcess, pRecoveryCallback, ppvParameter, pdwPingInterval, pdwFlags) => DllCall("Kernel32\GetApplicationRecoveryCallback", "ptr", hProcess, "ptr", pRecoveryCallback, "ptr", ppvParameter, "ptr", pdwPingInterval, "ptr", pdwFlags, "int")

	/** @example DllCall("Kernel32\GetApplicationRestartSettings", "ptr", hProcess, "ptr", pwzCommandline, "ptr", pcchSize, "ptr", pdwFlags, "int") */
	static GetApplicationRestartSettings(hProcess, pwzCommandline, pcchSize, pdwFlags) => DllCall("Kernel32\GetApplicationRestartSettings", "ptr", hProcess, "ptr", pwzCommandline, "ptr", pcchSize, "ptr", pdwFlags, "int")

	/** @example DllCall("Kernel32\GetAtomName", "ushort", nAtom, "str", lpBuffer, "int", nSize, "uint") */
	static GetAtomName(nAtom, lpBuffer, nSize) => DllCall("Kernel32\GetAtomName", "ushort", nAtom, "str", lpBuffer, "int", nSize, "uint")

	/** @example DllCall("Kernel32\GetBinaryType", "str", lpApplicationName, "ptr", lpBinaryType, "int") */
	static GetBinaryType(lpApplicationName, lpBinaryType) => DllCall("Kernel32\GetBinaryType", "str", lpApplicationName, "ptr", lpBinaryType, "int")

	/** @example DllCall("Kernel32\GetCPInfo", "uint", CodePage, "ptr", lpCPInfo, "int") */
	static GetCPInfo(CodePage, lpCPInfo) => DllCall("Kernel32\GetCPInfo", "uint", CodePage, "ptr", lpCPInfo, "int")

	/** @example DllCall("Kernel32\GetCPInfoEx", "uint", CodePage, "uint", dwFlags, "ptr", lpCPInfoEx, "int") */
	static GetCPInfoEx(CodePage, dwFlags, lpCPInfoEx) => DllCall("Kernel32\GetCPInfoEx", "uint", CodePage, "uint", dwFlags, "ptr", lpCPInfoEx, "int")

	/** @example DllCall("Kernel32\GetCalendarDateFormatEx", "wstr", lpszLocale, "uint", dwFlags, "ptr", lpCalDateTime, "wstr", lpFormat, "wstr", lpDateStr, "int", cchDate, "int") */
	static GetCalendarDateFormatEx(lpszLocale, dwFlags, lpCalDateTime, lpFormat, lpDateStr, cchDate) => DllCall("Kernel32\GetCalendarDateFormatEx", "wstr", lpszLocale, "uint", dwFlags, "ptr", lpCalDateTime, "wstr", lpFormat, "wstr", lpDateStr, "int", cchDate, "int")

	/** @example DllCall("Kernel32\GetCalendarInfo", "uint", Locale, "uint", Calendar, "uint", CalType, "str", lpCalData, "int", cchData, "ptr", lpValue, "int") */
	static GetCalendarInfo(Locale, Calendar, CalType, lpCalData, cchData, lpValue) => DllCall("Kernel32\GetCalendarInfo", "uint", Locale, "uint", Calendar, "uint", CalType, "str", lpCalData, "int", cchData, "ptr", lpValue, "int")

	/** @example DllCall("Kernel32\GetCalendarInfoEx", "wstr", lpLocaleName, "uint", Calendar, "wstr", lpReserved, "uint", CalType, "wstr", lpCalData, "int", cchData, "ptr", lpValue, "int") */
	static GetCalendarInfoEx(lpLocaleName, Calendar, lpReserved, CalType, lpCalData, cchData, lpValue) => DllCall("Kernel32\GetCalendarInfoEx", "wstr", lpLocaleName, "uint", Calendar, "wstr", lpReserved, "uint", CalType, "wstr", lpCalData, "int", cchData, "ptr", lpValue, "int")

	/** @example DllCall("Kernel32\GetCalendarSupportedDateRange", "uint", Calendar, "ptr", lpCalMinDateTime, "ptr", lpCalMaxDateTime, "int") */
	static GetCalendarSupportedDateRange(Calendar, lpCalMinDateTime, lpCalMaxDateTime) => DllCall("Kernel32\GetCalendarSupportedDateRange", "uint", Calendar, "ptr", lpCalMinDateTime, "ptr", lpCalMaxDateTime, "int")

	/** @example DllCall("Kernel32\GetCommConfig", "ptr", hCommDev, "ptr", lpCC, "ptr", lpdwSize, "int") */
	static GetCommConfig(hCommDev, lpCC, lpdwSize) => DllCall("Kernel32\GetCommConfig", "ptr", hCommDev, "ptr", lpCC, "ptr", lpdwSize, "int")

	/** @example DllCall("Kernel32\GetCommMask", "ptr", hFile, "ptr", lpEvtMask, "int") */
	static GetCommMask(hFile, lpEvtMask) => DllCall("Kernel32\GetCommMask", "ptr", hFile, "ptr", lpEvtMask, "int")

	/** @example DllCall("Kernel32\GetCommModemStatus", "ptr", hFile, "ptr", lpModemStat, "int") */
	static GetCommModemStatus(hFile, lpModemStat) => DllCall("Kernel32\GetCommModemStatus", "ptr", hFile, "ptr", lpModemStat, "int")

	/** @example DllCall("Kernel32\GetCommProperties", "ptr", hFile, "ptr", lpCommProp, "int") */
	static GetCommProperties(hFile, lpCommProp) => DllCall("Kernel32\GetCommProperties", "ptr", hFile, "ptr", lpCommProp, "int")

	/** @example DllCall("Kernel32\GetCommState", "ptr", hFile, "ptr", lpDCB, "int") */
	static GetCommState(hFile, lpDCB) => DllCall("Kernel32\GetCommState", "ptr", hFile, "ptr", lpDCB, "int")

	/** @example DllCall("Kernel32\GetCommTimeouts", "ptr", hFile, "ptr", lpCommTimeouts, "int") */
	static GetCommTimeouts(hFile, lpCommTimeouts) => DllCall("Kernel32\GetCommTimeouts", "ptr", hFile, "ptr", lpCommTimeouts, "int")

	/** @example DllCall("Kernel32\GetCommandLine", "str") */
	static GetCommandLine() => DllCall("Kernel32\GetCommandLine", "str")

	/** @example DllCall("Kernel32\GetCompressedFileSize", "str", lpFileName, "ptr", lpFileSizeHigh, "uint") */
	static GetCompressedFileSize(lpFileName, lpFileSizeHigh) => DllCall("Kernel32\GetCompressedFileSize", "str", lpFileName, "ptr", lpFileSizeHigh, "uint")

	/** @example DllCall("Kernel32\GetCompressedFileSizeTransacted", "str", lpFileName, "ptr", lpFileSizeHigh, "ptr", hTransaction, "uint") */
	static GetCompressedFileSizeTransacted(lpFileName, lpFileSizeHigh, hTransaction) => DllCall("Kernel32\GetCompressedFileSizeTransacted", "str", lpFileName, "ptr", lpFileSizeHigh, "ptr", hTransaction, "uint")

	/** @example DllCall("Kernel32\GetComputerName", "str", lpBuffer, "ptr", lpnSize, "int") */
	static GetComputerName(lpBuffer, lpnSize) => DllCall("Kernel32\GetComputerName", "str", lpBuffer, "ptr", lpnSize, "int")

	/** @example DllCall("Kernel32\GetComputerNameEx", "uint", NameType, "str", lpBuffer, "ptr", lpnSize, "int") */
	static GetComputerNameEx(NameType, lpBuffer, lpnSize) => DllCall("Kernel32\GetComputerNameEx", "uint", NameType, "str", lpBuffer, "ptr", lpnSize, "int")

	/** @example DllCall("Kernel32\GetConsoleAlias", "str", lpSource, "str", lpTargetBuffer, "uint", TargetBufferLength, "str", lpExeName, "uint") */
	static GetConsoleAlias(lpSource, lpTargetBuffer, TargetBufferLength, lpExeName) => DllCall("Kernel32\GetConsoleAlias", "str", lpSource, "str", lpTargetBuffer, "uint", TargetBufferLength, "str", lpExeName, "uint")

	/** @example DllCall("Kernel32\GetConsoleAliasExes", "str", lpExeNameBuffer, "uint", ExeNameBufferLength, "uint") */
	static GetConsoleAliasExes(lpExeNameBuffer, ExeNameBufferLength) => DllCall("Kernel32\GetConsoleAliasExes", "str", lpExeNameBuffer, "uint", ExeNameBufferLength, "uint")

	/** @example DllCall("Kernel32\GetConsoleAliasExesLength", "uint") */
	static GetConsoleAliasExesLength() => DllCall("Kernel32\GetConsoleAliasExesLength", "uint")

	/** @example DllCall("Kernel32\GetConsoleAliases", "str", lpAliasBuffer, "uint", AliasBufferLength, "str", lpExeName, "uint") */
	static GetConsoleAliases(lpAliasBuffer, AliasBufferLength, lpExeName) => DllCall("Kernel32\GetConsoleAliases", "str", lpAliasBuffer, "uint", AliasBufferLength, "str", lpExeName, "uint")

	/** @example DllCall("Kernel32\GetConsoleAliasesLength", "str", lpExeName, "uint") */
	static GetConsoleAliasesLength(lpExeName) => DllCall("Kernel32\GetConsoleAliasesLength", "str", lpExeName, "uint")

	/** @example DllCall("Kernel32\GetConsoleCP", "uint") */
	static GetConsoleCP() => DllCall("Kernel32\GetConsoleCP", "uint")

	/** @example DllCall("Kernel32\GetConsoleCursorInfo", "ptr", hConsoleOutput, "ptr", lpConsoleCursorInfo, "int") */
	static GetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo) => DllCall("Kernel32\GetConsoleCursorInfo", "ptr", hConsoleOutput, "ptr", lpConsoleCursorInfo, "int")

	/** @example DllCall("Kernel32\GetConsoleDisplayMode", "ptr", lpModeFlags, "int") */
	static GetConsoleDisplayMode(lpModeFlags) => DllCall("Kernel32\GetConsoleDisplayMode", "ptr", lpModeFlags, "int")

	/** @example DllCall("Kernel32\GetConsoleFontSize", "ptr", hConsoleOutput, "uint", nFont, "uint") */
	static GetConsoleFontSize(hConsoleOutput, nFont) => DllCall("Kernel32\GetConsoleFontSize", "ptr", hConsoleOutput, "uint", nFont, "uint")

	/** @example DllCall("Kernel32\GetConsoleHistoryInfo", "ptr", lpConsoleHistoryInfo, "int") */
	static GetConsoleHistoryInfo(lpConsoleHistoryInfo) => DllCall("Kernel32\GetConsoleHistoryInfo", "ptr", lpConsoleHistoryInfo, "int")

	/** @example DllCall("Kernel32\GetConsoleMode", "ptr", hConsoleHandle, "ptr", lpMode, "int") */
	static GetConsoleMode(hConsoleHandle, lpMode) => DllCall("Kernel32\GetConsoleMode", "ptr", hConsoleHandle, "ptr", lpMode, "int")

	/** @example DllCall("Kernel32\GetConsoleOriginalTitle", "str", lpConsoleTitle, "uint", nSize, "uint") */
	static GetConsoleOriginalTitle(lpConsoleTitle, nSize) => DllCall("Kernel32\GetConsoleOriginalTitle", "str", lpConsoleTitle, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\GetConsoleOutputCP", "uint") */
	static GetConsoleOutputCP() => DllCall("Kernel32\GetConsoleOutputCP", "uint")

	/** @example DllCall("Kernel32\GetConsoleProcessList", "ptr", lpdwProcessList, "uint", dwProcessCount, "uint") */
	static GetConsoleProcessList(lpdwProcessList, dwProcessCount) => DllCall("Kernel32\GetConsoleProcessList", "ptr", lpdwProcessList, "uint", dwProcessCount, "uint")

	/** @example DllCall("Kernel32\GetConsoleScreenBufferInfo", "ptr", hConsoleOutput, "ptr", lpConsoleScreenBufferInfo, "int") */
	static GetConsoleScreenBufferInfo(hConsoleOutput, lpConsoleScreenBufferInfo) => DllCall("Kernel32\GetConsoleScreenBufferInfo", "ptr", hConsoleOutput, "ptr", lpConsoleScreenBufferInfo, "int")

	/** @example DllCall("Kernel32\GetConsoleScreenBufferInfoEx", "ptr", hConsoleOutput, "ptr", lpConsoleScreenBufferInfoEx, "int") */
	static GetConsoleScreenBufferInfoEx(hConsoleOutput, lpConsoleScreenBufferInfoEx) => DllCall("Kernel32\GetConsoleScreenBufferInfoEx", "ptr", hConsoleOutput, "ptr", lpConsoleScreenBufferInfoEx, "int")

	/** @example DllCall("Kernel32\GetConsoleSelectionInfo", "ptr", lpConsoleSelectionInfo, "int") */
	static GetConsoleSelectionInfo(lpConsoleSelectionInfo) => DllCall("Kernel32\GetConsoleSelectionInfo", "ptr", lpConsoleSelectionInfo, "int")

	/** @example DllCall("Kernel32\GetConsoleTitle", "str", lpConsoleTitle, "uint", nSize, "uint") */
	static GetConsoleTitle(lpConsoleTitle, nSize) => DllCall("Kernel32\GetConsoleTitle", "str", lpConsoleTitle, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\GetConsoleWindow", "ptr") */
	static GetConsoleWindow() => DllCall("Kernel32\GetConsoleWindow", "ptr")

	/** @example DllCall("Kernel32\GetCurrencyFormat", "uint", Locale, "uint", dwFlags, "str", lpValue, "ptr", lpFormat, "str", lpCurrencyStr, "int", cchCurrency, "int") */
	static GetCurrencyFormat(Locale, dwFlags, lpValue, lpFormat, lpCurrencyStr, cchCurrency) => DllCall("Kernel32\GetCurrencyFormat", "uint", Locale, "uint", dwFlags, "str", lpValue, "ptr", lpFormat, "str", lpCurrencyStr, "int", cchCurrency, "int")

	/** @example DllCall("Kernel32\GetCurrencyFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "wstr", lpValue, "ptr", lpFormat, "wstr", lpCurrencyStr, "int", cchCurrency, "int") */
	static GetCurrencyFormatEx(lpLocaleName, dwFlags, lpValue, lpFormat, lpCurrencyStr, cchCurrency) => DllCall("Kernel32\GetCurrencyFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "wstr", lpValue, "ptr", lpFormat, "wstr", lpCurrencyStr, "int", cchCurrency, "int")

	/** @example DllCall("Kernel32\GetCurrentActCtx", "ptr", lphActCtx, "int") */
	static GetCurrentActCtx(lphActCtx) => DllCall("Kernel32\GetCurrentActCtx", "ptr", lphActCtx, "int")

	/** @example DllCall("Kernel32\GetCurrentConsoleFont", "ptr", hConsoleOutput, "int", bMaximumWindow, "ptr", lpConsoleCurrentFont, "int") */
	static GetCurrentConsoleFont(hConsoleOutput, bMaximumWindow, lpConsoleCurrentFont) => DllCall("Kernel32\GetCurrentConsoleFont", "ptr", hConsoleOutput, "int", bMaximumWindow, "ptr", lpConsoleCurrentFont, "int")

	/** @example DllCall("Kernel32\GetCurrentConsoleFontEx", "ptr", hConsoleOutput, "int", bMaximumWindow, "ptr", lpConsoleCurrentFontEx, "int") */
	static GetCurrentConsoleFontEx(hConsoleOutput, bMaximumWindow, lpConsoleCurrentFontEx) => DllCall("Kernel32\GetCurrentConsoleFontEx", "ptr", hConsoleOutput, "int", bMaximumWindow, "ptr", lpConsoleCurrentFontEx, "int")

	/** @example DllCall("Kernel32\GetCurrentDirectory", "uint", nBufferLength, "str", lpBuffer, "uint") */
	static GetCurrentDirectory(nBufferLength, lpBuffer) => DllCall("Kernel32\GetCurrentDirectory", "uint", nBufferLength, "str", lpBuffer, "uint")

	/** @example DllCall("Kernel32\GetCurrentProcess", "ptr") */
	static GetCurrentProcess() => DllCall("Kernel32\GetCurrentProcess", "ptr")

	/** @example DllCall("Kernel32\GetCurrentProcessId", "uint") */
	static GetCurrentProcessId() => DllCall("Kernel32\GetCurrentProcessId", "uint")

	/** @example DllCall("Kernel32\GetCurrentProcessorNumber", "uint") */
	static GetCurrentProcessorNumber() => DllCall("Kernel32\GetCurrentProcessorNumber", "uint")

	/** @example DllCall("Kernel32\GetCurrentProcessorNumberEx", "ptr", ProcNumber, "int") */
	static GetCurrentProcessorNumberEx(ProcNumber) => DllCall("Kernel32\GetCurrentProcessorNumberEx", "ptr", ProcNumber, "int")

	/** @example DllCall("Kernel32\GetCurrentThread", "ptr") */
	static GetCurrentThread() => DllCall("Kernel32\GetCurrentThread", "ptr")

	/** @example DllCall("Kernel32\GetCurrentThreadId", "uint") */
	static GetCurrentThreadId() => DllCall("Kernel32\GetCurrentThreadId", "uint")

	/** @example DllCall("Kernel32\GetDateFormat", "uint", Locale, "uint", dwFlags, "ptr", lpDate, "str", lpFormat, "str", lpDateStr, "int", cchDate, "int") */
	static GetDateFormat(Locale, dwFlags, lpDate, lpFormat, lpDateStr, cchDate) => DllCall("Kernel32\GetDateFormat", "uint", Locale, "uint", dwFlags, "ptr", lpDate, "str", lpFormat, "str", lpDateStr, "int", cchDate, "int")

	/** @example DllCall("Kernel32\GetDateFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "ptr", lpDate, "wstr", lpFormat, "wstr", lpDateStr, "int", cchDate, "wstr", lpCalendar, "int") */
	static GetDateFormatEx(lpLocaleName, dwFlags, lpDate, lpFormat, lpDateStr, cchDate, lpCalendar) => DllCall("Kernel32\GetDateFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "ptr", lpDate, "wstr", lpFormat, "wstr", lpDateStr, "int", cchDate, "wstr", lpCalendar, "int")

	/** @example DllCall("Kernel32\GetDefaultCommConfig", "str", lpszName, "ptr", lpCC, "ptr", lpdwSize, "int") */
	static GetDefaultCommConfig(lpszName, lpCC, lpdwSize) => DllCall("Kernel32\GetDefaultCommConfig", "str", lpszName, "ptr", lpCC, "ptr", lpdwSize, "int")

	/** @example DllCall("Kernel32\GetDevicePowerState", "ptr", hDevice, "int*", &pfOn, "int") */
	static GetDevicePowerState(hDevice, &pfOn) => DllCall("Kernel32\GetDevicePowerState", "ptr", hDevice, "int*", &pfOn, "int")

	/** @example DllCall("Kernel32\GetDiskFreeSpace", "str", lpRootPathName, "ptr", lpSectorsPerCluster, "ptr", lpBytesPerSector, "ptr", lpNumberOfFreeClusters, "ptr", lpTotalNumberOfClusters, "int") */
	static GetDiskFreeSpace(lpRootPathName, lpSectorsPerCluster, lpBytesPerSector, lpNumberOfFreeClusters, lpTotalNumberOfClusters) => DllCall("Kernel32\GetDiskFreeSpace", "str", lpRootPathName, "ptr", lpSectorsPerCluster, "ptr", lpBytesPerSector, "ptr", lpNumberOfFreeClusters, "ptr", lpTotalNumberOfClusters, "int")

	/** @example DllCall("Kernel32\GetDiskFreeSpaceEx", "str", lpDirectoryName, "ptr", lpFreeBytesAvailable, "ptr", lpTotalNumberOfBytes, "ptr", lpTotalNumberOfFreeBytes, "int") */
	static GetDiskFreeSpaceEx(lpDirectoryName, lpFreeBytesAvailable, lpTotalNumberOfBytes, lpTotalNumberOfFreeBytes) => DllCall("Kernel32\GetDiskFreeSpaceEx", "str", lpDirectoryName, "ptr", lpFreeBytesAvailable, "ptr", lpTotalNumberOfBytes, "ptr", lpTotalNumberOfFreeBytes, "int")

	/** @example DllCall("Kernel32\GetDllDirectory", "uint", nBufferLength, "str", lpBuffer, "uint") */
	static GetDllDirectory(nBufferLength, lpBuffer) => DllCall("Kernel32\GetDllDirectory", "uint", nBufferLength, "str", lpBuffer, "uint")

	/** @example DllCall("Kernel32\GetDriveType", "str", lpRootPathName, "uint") */
	static GetDriveType(lpRootPathName) => DllCall("Kernel32\GetDriveType", "str", lpRootPathName, "uint")

	/** @example DllCall("Kernel32\GetDurationFormat", "uint", Locale, "uint", dwFlags, "ptr", lpDuration, "uint64", ullDuration, "wstr", lpFormat, "wstr", lpDurationStr, "int", cchDuration, "int") */
	static GetDurationFormat(Locale, dwFlags, lpDuration, ullDuration, lpFormat, lpDurationStr, cchDuration) => DllCall("Kernel32\GetDurationFormat", "uint", Locale, "uint", dwFlags, "ptr", lpDuration, "uint64", ullDuration, "wstr", lpFormat, "wstr", lpDurationStr, "int", cchDuration, "int")

	/** @example DllCall("Kernel32\GetDurationFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "ptr", lpDuration, "uint64", ullDuration, "wstr", lpFormat, "wstr", lpDurationStr, "int", cchDuration, "int") */
	static GetDurationFormatEx(lpLocaleName, dwFlags, lpDuration, ullDuration, lpFormat, lpDurationStr, cchDuration) => DllCall("Kernel32\GetDurationFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "ptr", lpDuration, "uint64", ullDuration, "wstr", lpFormat, "wstr", lpDurationStr, "int", cchDuration, "int")

	/** @example DllCall("Kernel32\GetDynamicTimeZoneInformation", "ptr", pTimeZoneInformation, "uint") */
	static GetDynamicTimeZoneInformation(pTimeZoneInformation) => DllCall("Kernel32\GetDynamicTimeZoneInformation", "ptr", pTimeZoneInformation, "uint")

	/** @example DllCall("Kernel32\GetEnabledXStateFeatures", "uint64") */
	static GetEnabledXStateFeatures() => DllCall("Kernel32\GetEnabledXStateFeatures", "uint64")

	/** @example DllCall("Kernel32\GetEnvironmentStrings", "str") */
	static GetEnvironmentStrings() => DllCall("Kernel32\GetEnvironmentStrings", "str")

	/** @example DllCall("Kernel32\GetEnvironmentVariable", "str", lpName, "str", lpBuffer, "uint", nSize, "uint") */
	static GetEnvironmentVariable(lpName, lpBuffer, nSize) => DllCall("Kernel32\GetEnvironmentVariable", "str", lpName, "str", lpBuffer, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\GetErrorMode", "uint") */
	static GetErrorMode() => DllCall("Kernel32\GetErrorMode", "uint")

	/** @example DllCall("Kernel32\GetExitCodeProcess", "ptr", hProcess, "ptr", lpExitCode, "int") */
	static GetExitCodeProcess(hProcess, lpExitCode) => DllCall("Kernel32\GetExitCodeProcess", "ptr", hProcess, "ptr", lpExitCode, "int")

	/** @example DllCall("Kernel32\GetExitCodeThread", "ptr", hThread, "ptr", lpExitCode, "int") */
	static GetExitCodeThread(hThread, lpExitCode) => DllCall("Kernel32\GetExitCodeThread", "ptr", hThread, "ptr", lpExitCode, "int")

	/** @example DllCall("Kernel32\GetExpandedName", "str", lpszSource, "str", lpszBuffer, "int") */
	static GetExpandedName(lpszSource, lpszBuffer) => DllCall("Kernel32\GetExpandedName", "str", lpszSource, "str", lpszBuffer, "int")

	/** @example DllCall("Kernel32\GetFileAttributes", "str", lpFileName, "uint") */
	static GetFileAttributes(lpFileName) => DllCall("Kernel32\GetFileAttributes", "str", lpFileName, "uint")

	/** @example DllCall("Kernel32\GetFileAttributesEx", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFileInformation, "int") */
	static GetFileAttributesEx(lpFileName, fInfoLevelId, lpFileInformation) => DllCall("Kernel32\GetFileAttributesEx", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFileInformation, "int")

	/** @example DllCall("Kernel32\GetFileAttributesTransacted", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFileInformation, "ptr", hTransaction, "int") */
	static GetFileAttributesTransacted(lpFileName, fInfoLevelId, lpFileInformation, hTransaction) => DllCall("Kernel32\GetFileAttributesTransacted", "str", lpFileName, "uint", fInfoLevelId, "ptr", lpFileInformation, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\GetFileBandwidthReservation", "ptr", hFile, "ptr", lpPeriodMilliseconds, "ptr", lpBytesPerPeriod, "ptr", pDiscardable, "ptr", lpTransferSize, "ptr", lpNumOutstandingRequests, "int") */
	static GetFileBandwidthReservation(hFile, lpPeriodMilliseconds, lpBytesPerPeriod, pDiscardable, lpTransferSize, lpNumOutstandingRequests) => DllCall("Kernel32\GetFileBandwidthReservation", "ptr", hFile, "ptr", lpPeriodMilliseconds, "ptr", lpBytesPerPeriod, "ptr", pDiscardable, "ptr", lpTransferSize, "ptr", lpNumOutstandingRequests, "int")

	/** @example DllCall("Kernel32\GetFileInformationByHandle", "ptr", hFile, "ptr", lpFileInformation, "int") */
	static GetFileInformationByHandle(hFile, lpFileInformation) => DllCall("Kernel32\GetFileInformationByHandle", "ptr", hFile, "ptr", lpFileInformation, "int")

	/** @example DllCall("Kernel32\GetFileInformationByHandleEx", "ptr", hFile, "int", FileInformationClass, "ptr", lpFileInformation, "uint", dwBufferSize, "int") */
	static GetFileInformationByHandleEx(hFile, FileInformationClass, lpFileInformation, dwBufferSize) => DllCall("Kernel32\GetFileInformationByHandleEx", "ptr", hFile, "int", FileInformationClass, "ptr", lpFileInformation, "uint", dwBufferSize, "int")

	/** @example DllCall("Kernel32\GetFileMUIInfo", "uint", dwFlags, "wstr", pcwszFilePath, "ptr", pFileMUIInfo, "uint*", &pcbFileMUIInfo, "int") */
	static GetFileMUIInfo(dwFlags, pcwszFilePath, pFileMUIInfo, &pcbFileMUIInfo) => DllCall("Kernel32\GetFileMUIInfo", "uint", dwFlags, "wstr", pcwszFilePath, "ptr", pFileMUIInfo, "uint*", &pcbFileMUIInfo, "int")

	/** @example DllCall("Kernel32\GetFileMUIPath", "uint", dwFlags, "wstr", pcwszFilePath, "ptr", pwszLanguage, "ptr", pcchLanguage, "ptr", pwszFileMUIPath, "ptr", pcchFileMUIPath, "ptr", pululEnumerator, "int") */
	static GetFileMUIPath(dwFlags, pcwszFilePath, pwszLanguage, pcchLanguage, pwszFileMUIPath, pcchFileMUIPath, pululEnumerator) => DllCall("Kernel32\GetFileMUIPath", "uint", dwFlags, "wstr", pcwszFilePath, "ptr", pwszLanguage, "ptr", pcchLanguage, "ptr", pwszFileMUIPath, "ptr", pcchFileMUIPath, "ptr", pululEnumerator, "int")

	/** @example DllCall("Kernel32\GetFileSize", "ptr", hFile, "ptr", lpFileSizeHigh, "uint") */
	static GetFileSize(hFile, lpFileSizeHigh) => DllCall("Kernel32\GetFileSize", "ptr", hFile, "ptr", lpFileSizeHigh, "uint")

	/** @example DllCall("Kernel32\GetFileSizeEx", "ptr", hFile, "ptr", lpFileSize, "int") */
	static GetFileSizeEx(hFile, lpFileSize) => DllCall("Kernel32\GetFileSizeEx", "ptr", hFile, "ptr", lpFileSize, "int")

	/** @example DllCall("Kernel32\GetFileTime", "ptr", hFile, "ptr", lpCreationTime, "ptr", lpLastAccessTime, "ptr", lpLastWriteTime, "int") */
	static GetFileTime(hFile, lpCreationTime, lpLastAccessTime, lpLastWriteTime) => DllCall("Kernel32\GetFileTime", "ptr", hFile, "ptr", lpCreationTime, "ptr", lpLastAccessTime, "ptr", lpLastWriteTime, "int")

	/** @example DllCall("Kernel32\GetFileType", "ptr", hFile, "uint") */
	static GetFileType(hFile) => DllCall("Kernel32\GetFileType", "ptr", hFile, "uint")

	/** @example DllCall("Kernel32\GetFinalPathNameByHandle", "ptr", hFile, "str", lpszFilePath, "uint", cchFilePath, "uint", dwFlags, "uint") */
	static GetFinalPathNameByHandle(hFile, lpszFilePath, cchFilePath, dwFlags) => DllCall("Kernel32\GetFinalPathNameByHandle", "ptr", hFile, "str", lpszFilePath, "uint", cchFilePath, "uint", dwFlags, "uint")

	/** @example DllCall("Kernel32\GetFirmwareEnvironmentVariable", "str", lpName, "str", lpGuid, "ptr", pBuffer, "uint", nSize, "uint") */
	static GetFirmwareEnvironmentVariable(lpName, lpGuid, pBuffer, nSize) => DllCall("Kernel32\GetFirmwareEnvironmentVariable", "str", lpName, "str", lpGuid, "ptr", pBuffer, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\GetFullPathName", "str", lpFileName, "uint", nBufferLength, "str", lpBuffer, "ptr", lpFilePart, "uint") */
	static GetFullPathName(lpFileName, nBufferLength, lpBuffer, lpFilePart) => DllCall("Kernel32\GetFullPathName", "str", lpFileName, "uint", nBufferLength, "str", lpBuffer, "ptr", lpFilePart, "uint")

	/** @example DllCall("Kernel32\GetFullPathNameTransacted", "str", lpFileName, "uint", nBufferLength, "str", lpBuffer, "ptr", lpFilePart, "ptr", hTransaction, "uint") */
	static GetFullPathNameTransacted(lpFileName, nBufferLength, lpBuffer, lpFilePart, hTransaction) => DllCall("Kernel32\GetFullPathNameTransacted", "str", lpFileName, "uint", nBufferLength, "str", lpBuffer, "ptr", lpFilePart, "ptr", hTransaction, "uint")

	/** @example DllCall("Kernel32\GetGeoInfo", "uint", Location, "uint", GeoType, "str", lpGeoData, "int", cchData, "ushort", LangId, "int") */
	static GetGeoInfo(Location, GeoType, lpGeoData, cchData, LangId) => DllCall("Kernel32\GetGeoInfo", "uint", Location, "uint", GeoType, "str", lpGeoData, "int", cchData, "ushort", LangId, "int")

	/** @example DllCall("Kernel32\GetHandleInformation", "ptr", hObject, "ptr", lpdwFlags, "int") */
	static GetHandleInformation(hObject, lpdwFlags) => DllCall("Kernel32\GetHandleInformation", "ptr", hObject, "ptr", lpdwFlags, "int")

	/** @example DllCall("Kernel32\GetLargePageMinimum", "uptr") */
	static GetLargePageMinimum() => DllCall("Kernel32\GetLargePageMinimum", "uptr")

	/** @example DllCall("Kernel32\GetLargestConsoleWindowSize", "ptr", hConsoleOutput, "uint") */
	static GetLargestConsoleWindowSize(hConsoleOutput) => DllCall("Kernel32\GetLargestConsoleWindowSize", "ptr", hConsoleOutput, "uint")

	/** @example DllCall("Kernel32\GetLastError", "uint") */
	static GetLastError() => DllCall("Kernel32\GetLastError", "uint")

	/** @example DllCall("Kernel32\GetLocalTime", "ptr", lpSystemTime, "int") */
	static GetLocalTime(lpSystemTime) => DllCall("Kernel32\GetLocalTime", "ptr", lpSystemTime, "int")

	/** @example DllCall("Kernel32\GetLocaleInfo", "uint", Locale, "uint", LCType, "str", lpLCData, "int", cchData, "int") */
	static GetLocaleInfo(Locale, LCType, lpLCData, cchData) => DllCall("Kernel32\GetLocaleInfo", "uint", Locale, "uint", LCType, "str", lpLCData, "int", cchData, "int")

	/** @example DllCall("Kernel32\GetLocaleInfoEx", "wstr", lpLocaleName, "uint", LCType, "wstr", lpLCData, "int", cchData, "int") */
	static GetLocaleInfoEx(lpLocaleName, LCType, lpLCData, cchData) => DllCall("Kernel32\GetLocaleInfoEx", "wstr", lpLocaleName, "uint", LCType, "wstr", lpLCData, "int", cchData, "int")

	/** @example DllCall("Kernel32\GetLogicalDriveStrings", "uint", nBufferLength, "str", lpBuffer, "uint") */
	static GetLogicalDriveStrings(nBufferLength, lpBuffer) => DllCall("Kernel32\GetLogicalDriveStrings", "uint", nBufferLength, "str", lpBuffer, "uint")

	/** @example DllCall("Kernel32\GetLogicalDrives", "uint") */
	static GetLogicalDrives() => DllCall("Kernel32\GetLogicalDrives", "uint")

	/** @example DllCall("Kernel32\GetLogicalProcessorInformation", "ptr", Buffer, "ptr", ReturnLength, "int") */
	static GetLogicalProcessorInformation(Buffer, ReturnLength) => DllCall("Kernel32\GetLogicalProcessorInformation", "ptr", Buffer, "ptr", ReturnLength, "int")

	/** @example DllCall("Kernel32\GetLogicalProcessorInformationEx", "uint", RelationshipType, "ptr", Buffer, "ptr", ReturnedLength, "int") */
	static GetLogicalProcessorInformationEx(RelationshipType, Buffer, ReturnedLength) => DllCall("Kernel32\GetLogicalProcessorInformationEx", "uint", RelationshipType, "ptr", Buffer, "ptr", ReturnedLength, "int")

	/** @example DllCall("Kernel32\GetLongPathName", "str", lpszShortPath, "str", lpszLongPath, "uint", cchBuffer, "uint") */
	static GetLongPathName(lpszShortPath, lpszLongPath, cchBuffer) => DllCall("Kernel32\GetLongPathName", "str", lpszShortPath, "str", lpszLongPath, "uint", cchBuffer, "uint")

	/** @example DllCall("Kernel32\GetLongPathNameTransacted", "str", lpszShortPath, "str", lpszLongPath, "uint", cchBuffer, "ptr", hTransaction, "uint") */
	static GetLongPathNameTransacted(lpszShortPath, lpszLongPath, cchBuffer, hTransaction) => DllCall("Kernel32\GetLongPathNameTransacted", "str", lpszShortPath, "str", lpszLongPath, "uint", cchBuffer, "ptr", hTransaction, "uint")

	/** @example DllCall("Kernel32\GetMailslotInfo", "ptr", hMailslot, "ptr", lpMaxMessageSize, "ptr", lpNextSize, "ptr", lpMessageCount, "ptr", lpReadTimeout, "int") */
	static GetMailslotInfo(hMailslot, lpMaxMessageSize, lpNextSize, lpMessageCount, lpReadTimeout) => DllCall("Kernel32\GetMailslotInfo", "ptr", hMailslot, "ptr", lpMaxMessageSize, "ptr", lpNextSize, "ptr", lpMessageCount, "ptr", lpReadTimeout, "int")

	/** @example DllCall("Kernel32\GetMaximumProcessorCount", "ushort", GroupNumber, "uint") */
	static GetMaximumProcessorCount(GroupNumber) => DllCall("Kernel32\GetMaximumProcessorCount", "ushort", GroupNumber, "uint")

	/** @example DllCall("Kernel32\GetMaximumProcessorGroupCount", "ushort") */
	static GetMaximumProcessorGroupCount() => DllCall("Kernel32\GetMaximumProcessorGroupCount", "ushort")

	/** @example DllCall("Kernel32\GetModuleFileName", "ptr", hModule, "str", lpFilename, "uint", nSize, "uint") */
	static GetModuleFileName(hModule, lpFilename, nSize) => DllCall("Kernel32\GetModuleFileName", "ptr", hModule, "str", lpFilename, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\GetModuleHandle", "str", lpModuleName, "ptr") */
	static GetModuleHandle(lpModuleName) => DllCall("Kernel32\GetModuleHandle", "str", lpModuleName, "ptr")

	/** @example DllCall("Kernel32\GetModuleHandleEx", "uint", dwFlags, "str", lpModuleName, "ptr", phModule, "int") */
	static GetModuleHandleEx(dwFlags, lpModuleName, phModule) => DllCall("Kernel32\GetModuleHandleEx", "uint", dwFlags, "str", lpModuleName, "ptr", phModule, "int")

	/** @example DllCall("Kernel32\GetNLSVersion", "uint", Function, "uint", Locale, "ptr", lpVersionInformation, "int") */
	static GetNLSVersion(Function, Locale, lpVersionInformation) => DllCall("Kernel32\GetNLSVersion", "uint", Function, "uint", Locale, "ptr", lpVersionInformation, "int")

	/** @example DllCall("Kernel32\GetNLSVersionEx", "uint", function, "wstr", lpLocaleName, "ptr", lpVersionInformation, "int") */
	static GetNLSVersionEx(function, lpLocaleName, lpVersionInformation) => DllCall("Kernel32\GetNLSVersionEx", "uint", function, "wstr", lpLocaleName, "ptr", lpVersionInformation, "int")

	/** @example DllCall("Kernel32\GetNamedPipeClientComputerName", "ptr", Pipe, "str", ClientComputerName, "uint", ClientComputerNameLength, "int") */
	static GetNamedPipeClientComputerName(Pipe, ClientComputerName, ClientComputerNameLength) => DllCall("Kernel32\GetNamedPipeClientComputerName", "ptr", Pipe, "str", ClientComputerName, "uint", ClientComputerNameLength, "int")

	/** @example DllCall("Kernel32\GetNamedPipeClientProcessId", "ptr", Pipe, "ptr", ClientProcessId, "int") */
	static GetNamedPipeClientProcessId(Pipe, ClientProcessId) => DllCall("Kernel32\GetNamedPipeClientProcessId", "ptr", Pipe, "ptr", ClientProcessId, "int")

	/** @example DllCall("Kernel32\GetNamedPipeClientSessionId", "ptr", Pipe, "ptr", ClientSessionId, "int") */
	static GetNamedPipeClientSessionId(Pipe, ClientSessionId) => DllCall("Kernel32\GetNamedPipeClientSessionId", "ptr", Pipe, "ptr", ClientSessionId, "int")

	/** @example DllCall("Kernel32\GetNamedPipeHandleState", "ptr", hNamedPipe, "ptr", lpState, "ptr", lpCurInstances, "ptr", lpMaxCollectionCount, "ptr", lpCollectDataTimeout, "str", lpUserName, "uint", nMaxUserNameSize, "int") */
	static GetNamedPipeHandleState(hNamedPipe, lpState, lpCurInstances, lpMaxCollectionCount, lpCollectDataTimeout, lpUserName, nMaxUserNameSize) => DllCall("Kernel32\GetNamedPipeHandleState", "ptr", hNamedPipe, "ptr", lpState, "ptr", lpCurInstances, "ptr", lpMaxCollectionCount, "ptr", lpCollectDataTimeout, "str", lpUserName, "uint", nMaxUserNameSize, "int")

	/** @example DllCall("Kernel32\GetNamedPipeInfo", "ptr", hNamedPipe, "ptr", lpFlags, "ptr", lpOutBufferSize, "ptr", lpInBufferSize, "ptr", lpMaxInstances, "int") */
	static GetNamedPipeInfo(hNamedPipe, lpFlags, lpOutBufferSize, lpInBufferSize, lpMaxInstances) => DllCall("Kernel32\GetNamedPipeInfo", "ptr", hNamedPipe, "ptr", lpFlags, "ptr", lpOutBufferSize, "ptr", lpInBufferSize, "ptr", lpMaxInstances, "int")

	/** @example DllCall("Kernel32\GetNamedPipeServerProcessId", "ptr", Pipe, "ptr", ServerProcessId, "int") */
	static GetNamedPipeServerProcessId(Pipe, ServerProcessId) => DllCall("Kernel32\GetNamedPipeServerProcessId", "ptr", Pipe, "ptr", ServerProcessId, "int")

	/** @example DllCall("Kernel32\GetNamedPipeServerSessionId", "ptr", Pipe, "ptr", ServerSessionId, "int") */
	static GetNamedPipeServerSessionId(Pipe, ServerSessionId) => DllCall("Kernel32\GetNamedPipeServerSessionId", "ptr", Pipe, "ptr", ServerSessionId, "int")

	/** @example DllCall("Kernel32\GetNativeSystemInfo", "ptr", lpSystemInfo, "int") */
	static GetNativeSystemInfo(lpSystemInfo) => DllCall("Kernel32\GetNativeSystemInfo", "ptr", lpSystemInfo, "int")

	/** @example DllCall("Kernel32\GetNumaAvailableMemoryNode", "uchar", Node, "ptr", AvailableBytes, "int") */
	static GetNumaAvailableMemoryNode(Node, AvailableBytes) => DllCall("Kernel32\GetNumaAvailableMemoryNode", "uchar", Node, "ptr", AvailableBytes, "int")

	/** @example DllCall("Kernel32\GetNumaAvailableMemoryNodeEx", "ushort", Node, "ptr", AvailableBytes, "int") */
	static GetNumaAvailableMemoryNodeEx(Node, AvailableBytes) => DllCall("Kernel32\GetNumaAvailableMemoryNodeEx", "ushort", Node, "ptr", AvailableBytes, "int")

	/** @example DllCall("Kernel32\GetNumaHighestNodeNumber", "ptr", HighestNodeNumber, "int") */
	static GetNumaHighestNodeNumber(HighestNodeNumber) => DllCall("Kernel32\GetNumaHighestNodeNumber", "ptr", HighestNodeNumber, "int")

	/** @example DllCall("Kernel32\GetNumaNodeNumberFromHandle", "ptr", hFile, "ptr", NodeNumber, "int") */
	static GetNumaNodeNumberFromHandle(hFile, NodeNumber) => DllCall("Kernel32\GetNumaNodeNumberFromHandle", "ptr", hFile, "ptr", NodeNumber, "int")

	/** @example DllCall("Kernel32\GetNumaNodeProcessorMask", "uchar", Node, "ptr", ProcessorMask, "int") */
	static GetNumaNodeProcessorMask(Node, ProcessorMask) => DllCall("Kernel32\GetNumaNodeProcessorMask", "uchar", Node, "ptr", ProcessorMask, "int")

	/** @example DllCall("Kernel32\GetNumaNodeProcessorMaskEx", "ushort", Node, "ptr", ProcessorMask, "int") */
	static GetNumaNodeProcessorMaskEx(Node, ProcessorMask) => DllCall("Kernel32\GetNumaNodeProcessorMaskEx", "ushort", Node, "ptr", ProcessorMask, "int")

	/** @example DllCall("Kernel32\GetNumaProcessorNode", "uchar", Processor, "ptr", NodeNumber, "int") */
	static GetNumaProcessorNode(Processor, NodeNumber) => DllCall("Kernel32\GetNumaProcessorNode", "uchar", Processor, "ptr", NodeNumber, "int")

	/** @example DllCall("Kernel32\GetNumaProcessorNodeEx", "ptr", Processor, "ptr", NodeNumber, "int") */
	static GetNumaProcessorNodeEx(Processor, NodeNumber) => DllCall("Kernel32\GetNumaProcessorNodeEx", "ptr", Processor, "ptr", NodeNumber, "int")

	/** @example DllCall("Kernel32\GetNumaProximityNode", "uint", ProximityId, "ptr", NodeNumber, "int") */
	static GetNumaProximityNode(ProximityId, NodeNumber) => DllCall("Kernel32\GetNumaProximityNode", "uint", ProximityId, "ptr", NodeNumber, "int")

	/** @example DllCall("Kernel32\GetNumaProximityNodeEx", "uint", ProximityId, "ptr", NodeNumber, "int") */
	static GetNumaProximityNodeEx(ProximityId, NodeNumber) => DllCall("Kernel32\GetNumaProximityNodeEx", "uint", ProximityId, "ptr", NodeNumber, "int")

	/** @example DllCall("Kernel32\GetNumberFormat", "uint", Locale, "uint", dwFlags, "str", lpValue, "ptr", lpFormat, "str", lpNumberStr, "int", cchNumber, "int") */
	static GetNumberFormat(Locale, dwFlags, lpValue, lpFormat, lpNumberStr, cchNumber) => DllCall("Kernel32\GetNumberFormat", "uint", Locale, "uint", dwFlags, "str", lpValue, "ptr", lpFormat, "str", lpNumberStr, "int", cchNumber, "int")

	/** @example DllCall("Kernel32\GetNumberFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "wstr", lpValue, "ptr", lpFormat, "wstr", lpNumberStr, "int", cchNumber, "int") */
	static GetNumberFormatEx(lpLocaleName, dwFlags, lpValue, lpFormat, lpNumberStr, cchNumber) => DllCall("Kernel32\GetNumberFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "wstr", lpValue, "ptr", lpFormat, "wstr", lpNumberStr, "int", cchNumber, "int")

	/** @example DllCall("Kernel32\GetNumberOfConsoleInputEvents", "ptr", hConsoleInput, "ptr", lpcNumberOfEvents, "int") */
	static GetNumberOfConsoleInputEvents(hConsoleInput, lpcNumberOfEvents) => DllCall("Kernel32\GetNumberOfConsoleInputEvents", "ptr", hConsoleInput, "ptr", lpcNumberOfEvents, "int")

	/** @example DllCall("Kernel32\GetNumberOfConsoleMouseButtons", "ptr", lpNumberOfMouseButtons, "int") */
	static GetNumberOfConsoleMouseButtons(lpNumberOfMouseButtons) => DllCall("Kernel32\GetNumberOfConsoleMouseButtons", "ptr", lpNumberOfMouseButtons, "int")

	/** @example DllCall("Kernel32\GetOEMCP", "uint") */
	static GetOEMCP() => DllCall("Kernel32\GetOEMCP", "uint")

	/** @example DllCall("Kernel32\GetOverlappedResult", "ptr", hFile, "ptr", lpOverlapped, "ptr", lpNumberOfBytesTransferred, "int", bWait, "int") */
	static GetOverlappedResult(hFile, lpOverlapped, lpNumberOfBytesTransferred, bWait) => DllCall("Kernel32\GetOverlappedResult", "ptr", hFile, "ptr", lpOverlapped, "ptr", lpNumberOfBytesTransferred, "int", bWait, "int")

	/** @example DllCall("Kernel32\GetPhysicallyInstalledSystemMemory", "ptr", TotalMemoryInKilobytes, "int") */
	static GetPhysicallyInstalledSystemMemory(TotalMemoryInKilobytes) => DllCall("Kernel32\GetPhysicallyInstalledSystemMemory", "ptr", TotalMemoryInKilobytes, "int")

	/** @example DllCall("Kernel32\GetPriorityClass", "ptr", hProcess, "uint") */
	static GetPriorityClass(hProcess) => DllCall("Kernel32\GetPriorityClass", "ptr", hProcess, "uint")

	/** @example DllCall("Kernel32\GetPrivateProfileInt", "str", lpAppName, "str", lpKeyName, "int", nDefault, "str", lpFileName, "uint") */
	static GetPrivateProfileInt(lpAppName, lpKeyName, nDefault, lpFileName) => DllCall("Kernel32\GetPrivateProfileInt", "str", lpAppName, "str", lpKeyName, "int", nDefault, "str", lpFileName, "uint")

	/** @example DllCall("Kernel32\GetPrivateProfileSection", "str", lpAppName, "str", lpReturnedString, "uint", nSize, "str", lpFileName, "uint") */
	static GetPrivateProfileSection(lpAppName, lpReturnedString, nSize, lpFileName) => DllCall("Kernel32\GetPrivateProfileSection", "str", lpAppName, "str", lpReturnedString, "uint", nSize, "str", lpFileName, "uint")

	/** @example DllCall("Kernel32\GetPrivateProfileSectionNames", "str", lpszReturnBuffer, "uint", nSize, "str", lpFileName, "uint") */
	static GetPrivateProfileSectionNames(lpszReturnBuffer, nSize, lpFileName) => DllCall("Kernel32\GetPrivateProfileSectionNames", "str", lpszReturnBuffer, "uint", nSize, "str", lpFileName, "uint")

	/** @example DllCall("Kernel32\GetPrivateProfileString", "str", lpAppName, "str", lpKeyName, "str", lpDefault, "str", lpReturnedString, "uint", nSize, "str", lpFileName, "uint") */
	static GetPrivateProfileString(lpAppName, lpKeyName, lpDefault, lpReturnedString, nSize, lpFileName) => DllCall("Kernel32\GetPrivateProfileString", "str", lpAppName, "str", lpKeyName, "str", lpDefault, "str", lpReturnedString, "uint", nSize, "str", lpFileName, "uint")

	/** @example DllCall("Kernel32\GetPrivateProfileStruct", "str", lpszSection, "str", lpszKey, "ptr", lpStruct, "uint", uSizeStruct, "str", szFile, "int") */
	static GetPrivateProfileStruct(lpszSection, lpszKey, lpStruct, uSizeStruct, szFile) => DllCall("Kernel32\GetPrivateProfileStruct", "str", lpszSection, "str", lpszKey, "ptr", lpStruct, "uint", uSizeStruct, "str", szFile, "int")

	/** @example DllCall("Kernel32\GetProcAddress", "ptr", hModule, "astr", lpProcName, "ptr") */
	static GetProcAddress(hModule, lpProcName) => DllCall("Kernel32\GetProcAddress", "ptr", hModule, "astr", lpProcName, "ptr")

	/** @example DllCall("Kernel32\GetProcessAffinityMask", "ptr", hProcess, "uptr", lpProcessAffinityMask, "uptr", lpSystemAffinityMask, "int") */
	static GetProcessAffinityMask(hProcess, lpProcessAffinityMask, lpSystemAffinityMask) => DllCall("Kernel32\GetProcessAffinityMask", "ptr", hProcess, "uptr", lpProcessAffinityMask, "uptr", lpSystemAffinityMask, "int")

	/** @example DllCall("Kernel32\GetProcessDEPPolicy", "ptr", hProcess, "ptr", lpFlags, "ptr", lpPermanent, "int") */
	static GetProcessDEPPolicy(hProcess, lpFlags, lpPermanent) => DllCall("Kernel32\GetProcessDEPPolicy", "ptr", hProcess, "ptr", lpFlags, "ptr", lpPermanent, "int")

	/** @example DllCall("Kernel32\GetProcessGroupAffinity", "ptr", hProcess, "ptr", GroupCount, "ptr", GroupArray, "int") */
	static GetProcessGroupAffinity(hProcess, GroupCount, GroupArray) => DllCall("Kernel32\GetProcessGroupAffinity", "ptr", hProcess, "ptr", GroupCount, "ptr", GroupArray, "int")

	/** @example DllCall("Kernel32\GetProcessHandleCount", "ptr", hProcess, "ptr", pdwHandleCount, "int") */
	static GetProcessHandleCount(hProcess, pdwHandleCount) => DllCall("Kernel32\GetProcessHandleCount", "ptr", hProcess, "ptr", pdwHandleCount, "int")

	/** @example DllCall("Kernel32\GetProcessHeap", "ptr") */
	static GetProcessHeap() => DllCall("Kernel32\GetProcessHeap", "ptr")

	/** @example DllCall("Kernel32\GetProcessHeaps", "uint", NumberOfHeaps, "ptr", ProcessHeaps, "uint") */
	static GetProcessHeaps(NumberOfHeaps, ProcessHeaps) => DllCall("Kernel32\GetProcessHeaps", "uint", NumberOfHeaps, "ptr", ProcessHeaps, "uint")

	/** @example DllCall("Kernel32\GetProcessId", "ptr", Process, "uint") */
	static GetProcessId(Process) => DllCall("Kernel32\GetProcessId", "ptr", Process, "uint")

	/** @example DllCall("Kernel32\GetProcessIdOfThread", "ptr", Thread, "uint") */
	static GetProcessIdOfThread(Thread) => DllCall("Kernel32\GetProcessIdOfThread", "ptr", Thread, "uint")

	/** @example DllCall("Kernel32\GetProcessIoCounters", "ptr", hProcess, "ptr", lpIoCounters, "int") */
	static GetProcessIoCounters(hProcess, lpIoCounters) => DllCall("Kernel32\GetProcessIoCounters", "ptr", hProcess, "ptr", lpIoCounters, "int")

	/** @example DllCall("Kernel32\GetProcessPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int") */
	static GetProcessPreferredUILanguages(dwFlags, pulNumLanguages, pwszLanguagesBuffer, pcchLanguagesBuffer) => DllCall("Kernel32\GetProcessPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int")

	/** @example DllCall("Kernel32\GetProcessPriorityBoost", "ptr", hProcess, "ptr", pDisablePriorityBoost, "int") */
	static GetProcessPriorityBoost(hProcess, pDisablePriorityBoost) => DllCall("Kernel32\GetProcessPriorityBoost", "ptr", hProcess, "ptr", pDisablePriorityBoost, "int")

	/** @example DllCall("Kernel32\GetProcessShutdownParameters", "ptr", lpdwLevel, "ptr", lpdwFlags, "int") */
	static GetProcessShutdownParameters(lpdwLevel, lpdwFlags) => DllCall("Kernel32\GetProcessShutdownParameters", "ptr", lpdwLevel, "ptr", lpdwFlags, "int")

	/** @example DllCall("Kernel32\GetProcessTimes", "ptr", hProcess, "ptr", lpCreationTime, "ptr", lpExitTime, "ptr", lpKernelTime, "ptr", lpUserTime, "int") */
	static GetProcessTimes(hProcess, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime) => DllCall("Kernel32\GetProcessTimes", "ptr", hProcess, "ptr", lpCreationTime, "ptr", lpExitTime, "ptr", lpKernelTime, "ptr", lpUserTime, "int")

	/** @example DllCall("Kernel32\GetProcessVersion", "uint", ProcessId, "uint") */
	static GetProcessVersion(ProcessId) => DllCall("Kernel32\GetProcessVersion", "uint", ProcessId, "uint")

	/** @example DllCall("Kernel32\GetProcessWorkingSetSize", "ptr", hProcess, "ptr", lpMinimumWorkingSetSize, "ptr", lpMaximumWorkingSetSize, "int") */
	static GetProcessWorkingSetSize(hProcess, lpMinimumWorkingSetSize, lpMaximumWorkingSetSize) => DllCall("Kernel32\GetProcessWorkingSetSize", "ptr", hProcess, "ptr", lpMinimumWorkingSetSize, "ptr", lpMaximumWorkingSetSize, "int")

	/** @example DllCall("Kernel32\GetProcessWorkingSetSizeEx", "ptr", hProcess, "ptr", lpMinimumWorkingSetSize, "ptr", lpMaximumWorkingSetSize, "ptr", Flags, "int") */
	static GetProcessWorkingSetSizeEx(hProcess, lpMinimumWorkingSetSize, lpMaximumWorkingSetSize, Flags) => DllCall("Kernel32\GetProcessWorkingSetSizeEx", "ptr", hProcess, "ptr", lpMinimumWorkingSetSize, "ptr", lpMaximumWorkingSetSize, "ptr", Flags, "int")

	/** @example DllCall("Kernel32\GetProcessorSystemCycleTime", "ushort", Group, "ptr", Buffer, "ptr", ReturnedLength, "int") */
	static GetProcessorSystemCycleTime(Group, Buffer, ReturnedLength) => DllCall("Kernel32\GetProcessorSystemCycleTime", "ushort", Group, "ptr", Buffer, "ptr", ReturnedLength, "int")

	/** @example DllCall("Kernel32\GetProductInfo", "uint", dwOSMajorVersion, "uint", dwOSMinorVersion, "uint", dwSpMajorVersion, "uint", dwSpMinorVersion, "ptr", pdwReturnedProductType, "int") */
	static GetProductInfo(dwOSMajorVersion, dwOSMinorVersion, dwSpMajorVersion, dwSpMinorVersion, pdwReturnedProductType) => DllCall("Kernel32\GetProductInfo", "uint", dwOSMajorVersion, "uint", dwOSMinorVersion, "uint", dwSpMajorVersion, "uint", dwSpMinorVersion, "ptr", pdwReturnedProductType, "int")

	/** @example DllCall("Kernel32\GetProfileInt", "str", lpAppName, "str", lpKeyName, "int", nDefault, "uint") */
	static GetProfileInt(lpAppName, lpKeyName, nDefault) => DllCall("Kernel32\GetProfileInt", "str", lpAppName, "str", lpKeyName, "int", nDefault, "uint")

	/** @example DllCall("Kernel32\GetProfileSection", "str", lpAppName, "str", lpReturnedString, "uint", nSize, "uint") */
	static GetProfileSection(lpAppName, lpReturnedString, nSize) => DllCall("Kernel32\GetProfileSection", "str", lpAppName, "str", lpReturnedString, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\GetProfileString", "str", lpAppName, "str", lpKeyName, "str", lpDefault, "str", lpReturnedString, "uint", nSize, "uint") */
	static GetProfileString(lpAppName, lpKeyName, lpDefault, lpReturnedString, nSize) => DllCall("Kernel32\GetProfileString", "str", lpAppName, "str", lpKeyName, "str", lpDefault, "str", lpReturnedString, "uint", nSize, "uint")

	/** @example DllCall("Kernel32\GetQueuedCompletionStatus", "ptr", CompletionPort, "ptr", lpNumberOfBytes, "uptr", lpCompletionKey, "ptr", lpOverlapped, "uint", dwMilliseconds, "int") */
	static GetQueuedCompletionStatus(CompletionPort, lpNumberOfBytes, lpCompletionKey, lpOverlapped, dwMilliseconds) => DllCall("Kernel32\GetQueuedCompletionStatus", "ptr", CompletionPort, "ptr", lpNumberOfBytes, "uptr", lpCompletionKey, "ptr", lpOverlapped, "uint", dwMilliseconds, "int")

	/** @example DllCall("Kernel32\GetQueuedCompletionStatusEx", "ptr", CompletionPort, "ptr", lpCompletionPortEntries, "uint", ulCount, "ptr", ulNumEntriesRemoved, "uint", dwMilliseconds, "int", fAlertable, "int") */
	static GetQueuedCompletionStatusEx(CompletionPort, lpCompletionPortEntries, ulCount, ulNumEntriesRemoved, dwMilliseconds, fAlertable) => DllCall("Kernel32\GetQueuedCompletionStatusEx", "ptr", CompletionPort, "ptr", lpCompletionPortEntries, "uint", ulCount, "ptr", ulNumEntriesRemoved, "uint", dwMilliseconds, "int", fAlertable, "int")

	/** @example DllCall("Kernel32\GetShortPathName", "str", lpszLongPath, "str", lpszShortPath, "uint", cchBuffer, "uint") */
	static GetShortPathName(lpszLongPath, lpszShortPath, cchBuffer) => DllCall("Kernel32\GetShortPathName", "str", lpszLongPath, "str", lpszShortPath, "uint", cchBuffer, "uint")

	/** @example DllCall("Kernel32\GetStartupInfo", "ptr", lpStartupInfo, "int") */
	static GetStartupInfo(lpStartupInfo) => DllCall("Kernel32\GetStartupInfo", "ptr", lpStartupInfo, "int")

	/** @example DllCall("Kernel32\GetStdHandle", "uint", nStdHandle, "ptr") */
	static GetStdHandle(nStdHandle) => DllCall("Kernel32\GetStdHandle", "uint", nStdHandle, "ptr")

	/** @example DllCall("Kernel32\GetStringScripts", "uint", dwFlags, "wstr", lpString, "int", cchString, "wstr", lpScripts, "int", cchScripts, "int") */
	static GetStringScripts(dwFlags, lpString, cchString, lpScripts, cchScripts) => DllCall("Kernel32\GetStringScripts", "uint", dwFlags, "wstr", lpString, "int", cchString, "wstr", lpScripts, "int", cchScripts, "int")

	/** @example DllCall("Kernel32\GetStringType", "uint", Locale, "uint", dwInfoType, "str", lpSrcStr, "int", cchSrc, "ptr", lpCharType, "int") */
	static GetStringType(Locale, dwInfoType, lpSrcStr, cchSrc, lpCharType) => DllCall("Kernel32\GetStringType", "uint", Locale, "uint", dwInfoType, "str", lpSrcStr, "int", cchSrc, "ptr", lpCharType, "int")

	/** @example DllCall("Kernel32\GetStringTypeEx", "uint", Locale, "uint", dwInfoType, "str", lpSrcStr, "int", cchSrc, "ptr", lpCharType, "int") */
	static GetStringTypeEx(Locale, dwInfoType, lpSrcStr, cchSrc, lpCharType) => DllCall("Kernel32\GetStringTypeEx", "uint", Locale, "uint", dwInfoType, "str", lpSrcStr, "int", cchSrc, "ptr", lpCharType, "int")

	/** @example DllCall("Kernel32\GetSystemDEPPolicy", "uint") */
	static GetSystemDEPPolicy() => DllCall("Kernel32\GetSystemDEPPolicy", "uint")

	/** @example DllCall("Kernel32\GetSystemDefaultLCID", "uint") */
	static GetSystemDefaultLCID() => DllCall("Kernel32\GetSystemDefaultLCID", "uint")

	/** @example DllCall("Kernel32\GetSystemDefaultLangID", "ushort") */
	static GetSystemDefaultLangID() => DllCall("Kernel32\GetSystemDefaultLangID", "ushort")

	/** @example DllCall("Kernel32\GetSystemDefaultLocaleName", "wstr", lpLocaleName, "int", cchLocaleName, "int") */
	static GetSystemDefaultLocaleName(lpLocaleName, cchLocaleName) => DllCall("Kernel32\GetSystemDefaultLocaleName", "wstr", lpLocaleName, "int", cchLocaleName, "int")

	/** @example DllCall("Kernel32\GetSystemDefaultUILanguage", "ushort") */
	static GetSystemDefaultUILanguage() => DllCall("Kernel32\GetSystemDefaultUILanguage", "ushort")

	/** @example DllCall("Kernel32\GetSystemDirectory", "str", lpBuffer, "uint", uSize, "uint") */
	static GetSystemDirectory(lpBuffer, uSize) => DllCall("Kernel32\GetSystemDirectory", "str", lpBuffer, "uint", uSize, "uint")

	/** @example DllCall("Kernel32\GetSystemFileCacheSize", "ptr", lpMinimumFileCacheSize, "ptr", lpMaximumFileCacheSize, "ptr", lpFlags, "int") */
	static GetSystemFileCacheSize(lpMinimumFileCacheSize, lpMaximumFileCacheSize, lpFlags) => DllCall("Kernel32\GetSystemFileCacheSize", "ptr", lpMinimumFileCacheSize, "ptr", lpMaximumFileCacheSize, "ptr", lpFlags, "int")

	/** @example DllCall("Kernel32\GetSystemFirmwareTable", "uint", FirmwareTableProviderSignature, "uint", FirmwareTableID, "ptr", pFirmwareTableBuffer, "uint", BufferSize, "uint") */
	static GetSystemFirmwareTable(FirmwareTableProviderSignature, FirmwareTableID, pFirmwareTableBuffer, BufferSize) => DllCall("Kernel32\GetSystemFirmwareTable", "uint", FirmwareTableProviderSignature, "uint", FirmwareTableID, "ptr", pFirmwareTableBuffer, "uint", BufferSize, "uint")

	/** @example DllCall("Kernel32\GetSystemInfo", "ptr", lpSystemInfo, "int") */
	static GetSystemInfo(lpSystemInfo) => DllCall("Kernel32\GetSystemInfo", "ptr", lpSystemInfo, "int")

	/** @example DllCall("Kernel32\GetSystemPowerStatus", "ptr", lpSystemPowerStatus, "int") */
	static GetSystemPowerStatus(lpSystemPowerStatus) => DllCall("Kernel32\GetSystemPowerStatus", "ptr", lpSystemPowerStatus, "int")

	/** @example DllCall("Kernel32\GetSystemPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int") */
	static GetSystemPreferredUILanguages(dwFlags, pulNumLanguages, pwszLanguagesBuffer, pcchLanguagesBuffer) => DllCall("Kernel32\GetSystemPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int")

	/** @example DllCall("Kernel32\GetSystemRegistryQuota", "ptr", pdwQuotaAllowed, "ptr", pdwQuotaUsed, "int") */
	static GetSystemRegistryQuota(pdwQuotaAllowed, pdwQuotaUsed) => DllCall("Kernel32\GetSystemRegistryQuota", "ptr", pdwQuotaAllowed, "ptr", pdwQuotaUsed, "int")

	/** @example DllCall("Kernel32\GetSystemTime", "ptr", lpSystemTime, "int") */
	static GetSystemTime(lpSystemTime) => DllCall("Kernel32\GetSystemTime", "ptr", lpSystemTime, "int")

	/** @example DllCall("Kernel32\GetSystemTimeAdjustment", "ptr", lpTimeAdjustment, "ptr", lpTimeIncrement, "ptr", lpTimeAdjustmentDisabled, "int") */
	static GetSystemTimeAdjustment(lpTimeAdjustment, lpTimeIncrement, lpTimeAdjustmentDisabled) => DllCall("Kernel32\GetSystemTimeAdjustment", "ptr", lpTimeAdjustment, "ptr", lpTimeIncrement, "ptr", lpTimeAdjustmentDisabled, "int")

	/** @example DllCall("Kernel32\GetSystemTimeAsFileTime", "ptr", lpSystemTimeAsFileTime, "int") */
	static GetSystemTimeAsFileTime(lpSystemTimeAsFileTime) => DllCall("Kernel32\GetSystemTimeAsFileTime", "ptr", lpSystemTimeAsFileTime, "int")

	/** @example DllCall("Kernel32\GetSystemTimes", "ptr", lpIdleTime, "ptr", lpKernelTime, "ptr", lpUserTime, "int") */
	static GetSystemTimes(lpIdleTime, lpKernelTime, lpUserTime) => DllCall("Kernel32\GetSystemTimes", "ptr", lpIdleTime, "ptr", lpKernelTime, "ptr", lpUserTime, "int")

	/** @example DllCall("Kernel32\GetSystemWindowsDirectory", "str", lpBuffer, "uint", uSize, "uint") */
	static GetSystemWindowsDirectory(lpBuffer, uSize) => DllCall("Kernel32\GetSystemWindowsDirectory", "str", lpBuffer, "uint", uSize, "uint")

	/** @example DllCall("Kernel32\GetSystemWow64Directory", "str", lpBuffer, "uint", uSize, "uint") */
	static GetSystemWow64Directory(lpBuffer, uSize) => DllCall("Kernel32\GetSystemWow64Directory", "str", lpBuffer, "uint", uSize, "uint")

	/** @example DllCall("Kernel32\GetTapeParameters", "ptr", hDevice, "uint", dwOperation, "ptr", lpdwSize, "ptr", lpTapeInformation, "uint") */
	static GetTapeParameters(hDevice, dwOperation, lpdwSize, lpTapeInformation) => DllCall("Kernel32\GetTapeParameters", "ptr", hDevice, "uint", dwOperation, "ptr", lpdwSize, "ptr", lpTapeInformation, "uint")

	/** @example DllCall("Kernel32\GetTapePosition", "ptr", hDevice, "uint", dwPositionType, "ptr", lpdwPartition, "ptr", lpdwOffsetLow, "ptr", lpdwOffsetHigh, "uint") */
	static GetTapePosition(hDevice, dwPositionType, lpdwPartition, lpdwOffsetLow, lpdwOffsetHigh) => DllCall("Kernel32\GetTapePosition", "ptr", hDevice, "uint", dwPositionType, "ptr", lpdwPartition, "ptr", lpdwOffsetLow, "ptr", lpdwOffsetHigh, "uint")

	/** @example DllCall("Kernel32\GetTapeStatus", "ptr", hDevice, "uint") */
	static GetTapeStatus(hDevice) => DllCall("Kernel32\GetTapeStatus", "ptr", hDevice, "uint")

	/** @example DllCall("Kernel32\GetTempFileName", "str", lpPathName, "str", lpPrefixString, "uint", uUnique, "str", lpTempFileName, "uint") */
	static GetTempFileName(lpPathName, lpPrefixString, uUnique, lpTempFileName) => DllCall("Kernel32\GetTempFileName", "str", lpPathName, "str", lpPrefixString, "uint", uUnique, "str", lpTempFileName, "uint")

	/** @example DllCall("Kernel32\GetTempPath", "uint", nBufferLength, "str", lpBuffer, "uint") */
	static GetTempPath(nBufferLength, lpBuffer) => DllCall("Kernel32\GetTempPath", "uint", nBufferLength, "str", lpBuffer, "uint")

	/** @example DllCall("Kernel32\GetThreadContext", "ptr", hThread, "ptr", lpContext, "int") */
	static GetThreadContext(hThread, lpContext) => DllCall("Kernel32\GetThreadContext", "ptr", hThread, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\GetThreadErrorMode", "uint") */
	static GetThreadErrorMode() => DllCall("Kernel32\GetThreadErrorMode", "uint")

	/** @example DllCall("Kernel32\GetThreadGroupAffinity", "ptr", hThread, "ptr", GroupAffinity, "int") */
	static GetThreadGroupAffinity(hThread, GroupAffinity) => DllCall("Kernel32\GetThreadGroupAffinity", "ptr", hThread, "ptr", GroupAffinity, "int")

	/** @example DllCall("Kernel32\GetThreadIOPendingFlag", "ptr", hThread, "ptr", lpIOIsPending, "int") */
	static GetThreadIOPendingFlag(hThread, lpIOIsPending) => DllCall("Kernel32\GetThreadIOPendingFlag", "ptr", hThread, "ptr", lpIOIsPending, "int")

	/** @example DllCall("Kernel32\GetThreadId", "ptr", Thread, "uint") */
	static GetThreadId(Thread) => DllCall("Kernel32\GetThreadId", "ptr", Thread, "uint")

	/** @example DllCall("Kernel32\GetThreadIdealProcessorEx", "ptr", hThread, "ptr", lpIdealProcessor, "int") */
	static GetThreadIdealProcessorEx(hThread, lpIdealProcessor) => DllCall("Kernel32\GetThreadIdealProcessorEx", "ptr", hThread, "ptr", lpIdealProcessor, "int")

	/** @example DllCall("Kernel32\GetThreadLocale", "uint") */
	static GetThreadLocale() => DllCall("Kernel32\GetThreadLocale", "uint")

	/** @example DllCall("Kernel32\GetThreadPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int") */
	static GetThreadPreferredUILanguages(dwFlags, pulNumLanguages, pwszLanguagesBuffer, pcchLanguagesBuffer) => DllCall("Kernel32\GetThreadPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int")

	/** @example DllCall("Kernel32\GetThreadPriority", "ptr", hThread, "int") */
	static GetThreadPriority(hThread) => DllCall("Kernel32\GetThreadPriority", "ptr", hThread, "int")

	/** @example DllCall("Kernel32\GetThreadPriorityBoost", "ptr", hThread, "ptr", pDisablePriorityBoost, "int") */
	static GetThreadPriorityBoost(hThread, pDisablePriorityBoost) => DllCall("Kernel32\GetThreadPriorityBoost", "ptr", hThread, "ptr", pDisablePriorityBoost, "int")

	/** @example DllCall("Kernel32\GetThreadSelectorEntry", "ptr", hThread, "uint", dwSelector, "ptr", lpSelectorEntry, "int") */
	static GetThreadSelectorEntry(hThread, dwSelector, lpSelectorEntry) => DllCall("Kernel32\GetThreadSelectorEntry", "ptr", hThread, "uint", dwSelector, "ptr", lpSelectorEntry, "int")

	/** @example DllCall("Kernel32\GetThreadTimes", "ptr", hThread, "ptr", lpCreationTime, "ptr", lpExitTime, "ptr", lpKernelTime, "ptr", lpUserTime, "int") */
	static GetThreadTimes(hThread, lpCreationTime, lpExitTime, lpKernelTime, lpUserTime) => DllCall("Kernel32\GetThreadTimes", "ptr", hThread, "ptr", lpCreationTime, "ptr", lpExitTime, "ptr", lpKernelTime, "ptr", lpUserTime, "int")

	/** @example DllCall("Kernel32\GetThreadUILanguage", "ushort") */
	static GetThreadUILanguage() => DllCall("Kernel32\GetThreadUILanguage", "ushort")

	/** @example DllCall("Kernel32\GetTickCount", "uint") */
	static GetTickCount() => DllCall("Kernel32\GetTickCount", "uint")

	/** @example DllCall("Kernel32\GetTickCount64", "uint64") */
	static GetTickCount64() => DllCall("Kernel32\GetTickCount64", "uint64")

	/** @example DllCall("Kernel32\GetTimeFormat", "uint", Locale, "uint", dwFlags, "ptr", lpTime, "str", lpFormat, "str", lpTimeStr, "int", cchTime, "int") */
	static GetTimeFormat(Locale, dwFlags, lpTime, lpFormat, lpTimeStr, cchTime) => DllCall("Kernel32\GetTimeFormat", "uint", Locale, "uint", dwFlags, "ptr", lpTime, "str", lpFormat, "str", lpTimeStr, "int", cchTime, "int")

	/** @example DllCall("Kernel32\GetTimeFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "ptr", lpTime, "wstr", lpFormat, "wstr", lpTimeStr, "int", cchTime, "int") */
	static GetTimeFormatEx(lpLocaleName, dwFlags, lpTime, lpFormat, lpTimeStr, cchTime) => DllCall("Kernel32\GetTimeFormatEx", "wstr", lpLocaleName, "uint", dwFlags, "ptr", lpTime, "wstr", lpFormat, "wstr", lpTimeStr, "int", cchTime, "int")

	/** @example DllCall("Kernel32\GetTimeZoneInformation", "ptr", lpTimeZoneInformation, "uint") */
	static GetTimeZoneInformation(lpTimeZoneInformation) => DllCall("Kernel32\GetTimeZoneInformation", "ptr", lpTimeZoneInformation, "uint")

	/** @example DllCall("Kernel32\GetTimeZoneInformationForYear", "ushort", wYear, "ptr", pdtzi, "ptr", ptzi, "int") */
	static GetTimeZoneInformationForYear(wYear, pdtzi, ptzi) => DllCall("Kernel32\GetTimeZoneInformationForYear", "ushort", wYear, "ptr", pdtzi, "ptr", ptzi, "int")

	/** @example DllCall("Kernel32\GetUILanguageInfo", "uint", dwFlags, "wstr", pwmszLanguage, "wstr", pwszFallbackLanguages, "ptr", pcchFallbackLanguages, "ptr", pdwAttributes, "int") */
	static GetUILanguageInfo(dwFlags, pwmszLanguage, pwszFallbackLanguages, pcchFallbackLanguages, pdwAttributes) => DllCall("Kernel32\GetUILanguageInfo", "uint", dwFlags, "wstr", pwmszLanguage, "wstr", pwszFallbackLanguages, "ptr", pcchFallbackLanguages, "ptr", pdwAttributes, "int")

	/** @example DllCall("Kernel32\GetUserDefaultLCID", "uint") */
	static GetUserDefaultLCID() => DllCall("Kernel32\GetUserDefaultLCID", "uint")

	/** @example DllCall("Kernel32\GetUserDefaultLangID", "ushort") */
	static GetUserDefaultLangID() => DllCall("Kernel32\GetUserDefaultLangID", "ushort")

	/** @example DllCall("Kernel32\GetUserDefaultLocaleName", "wstr", lpLocaleName, "int", cchLocaleName, "int") */
	static GetUserDefaultLocaleName(lpLocaleName, cchLocaleName) => DllCall("Kernel32\GetUserDefaultLocaleName", "wstr", lpLocaleName, "int", cchLocaleName, "int")

	/** @example DllCall("Kernel32\GetUserDefaultUILanguage", "ushort") */
	static GetUserDefaultUILanguage() => DllCall("Kernel32\GetUserDefaultUILanguage", "ushort")

	/** @example DllCall("Kernel32\GetUserGeoID", "uint", GeoClass, "uint") */
	static GetUserGeoID(GeoClass) => DllCall("Kernel32\GetUserGeoID", "uint", GeoClass, "uint")

	/** @example DllCall("Kernel32\GetUserPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int") */
	static GetUserPreferredUILanguages(dwFlags, pulNumLanguages, pwszLanguagesBuffer, pcchLanguagesBuffer) => DllCall("Kernel32\GetUserPreferredUILanguages", "uint", dwFlags, "ptr", pulNumLanguages, "wstr", pwszLanguagesBuffer, "ptr", pcchLanguagesBuffer, "int")

	/** @example DllCall("Kernel32\GetVersion", "uint") */
	static GetVersion() => DllCall("Kernel32\GetVersion", "uint")

	/** @example DllCall("Kernel32\GetVersionEx", "ptr", lpVersionInfo, "int") */
	static GetVersionEx(lpVersionInfo) => DllCall("Kernel32\GetVersionEx", "ptr", lpVersionInfo, "int")

	/** @example DllCall("Kernel32\GetVolumeInformation", "str", lpRootPathName, "str", lpVolumeNameBuffer, "uint", nVolumeNameSize, "ptr", lpVolumeSerialNumber, "ptr", lpMaximumComponentLength, "ptr", lpFileSystemFlags, "str", lpFileSystemNameBuffer, "uint", nFileSystemNameSize, "int") */
	static GetVolumeInformation(lpRootPathName, lpVolumeNameBuffer, nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize) => DllCall("Kernel32\GetVolumeInformation", "str", lpRootPathName, "str", lpVolumeNameBuffer, "uint", nVolumeNameSize, "ptr", lpVolumeSerialNumber, "ptr", lpMaximumComponentLength, "ptr", lpFileSystemFlags, "str", lpFileSystemNameBuffer, "uint", nFileSystemNameSize, "int")

	/** @example DllCall("Kernel32\GetVolumeInformationByHandleW", "ptr", hFile, "wstr", lpVolumeNameBuffer, "uint", nVolumeNameSize, "ptr", lpVolumeSerialNumber, "ptr", lpMaximumComponentLength, "ptr", lpFileSystemFlags, "wstr", lpFileSystemNameBuffer, "uint", nFileSystemNameSize, "int") */
	static GetVolumeInformationByHandleW(hFile, lpVolumeNameBuffer, nVolumeNameSize, lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags, lpFileSystemNameBuffer, nFileSystemNameSize) => DllCall("Kernel32\GetVolumeInformationByHandleW", "ptr", hFile, "wstr", lpVolumeNameBuffer, "uint", nVolumeNameSize, "ptr", lpVolumeSerialNumber, "ptr", lpMaximumComponentLength, "ptr", lpFileSystemFlags, "wstr", lpFileSystemNameBuffer, "uint", nFileSystemNameSize, "int")

	/** @example DllCall("Kernel32\GetVolumeNameForVolumeMountPoint", "str", lpszVolumeMountPoint, "str", lpszVolumeName, "uint", cchBufferLength, "int") */
	static GetVolumeNameForVolumeMountPoint(lpszVolumeMountPoint, lpszVolumeName, cchBufferLength) => DllCall("Kernel32\GetVolumeNameForVolumeMountPoint", "str", lpszVolumeMountPoint, "str", lpszVolumeName, "uint", cchBufferLength, "int")

	/** @example DllCall("Kernel32\GetVolumePathName", "str", lpszFileName, "str", lpszVolumePathName, "uint", cchBufferLength, "int") */
	static GetVolumePathName(lpszFileName, lpszVolumePathName, cchBufferLength) => DllCall("Kernel32\GetVolumePathName", "str", lpszFileName, "str", lpszVolumePathName, "uint", cchBufferLength, "int")

	/** @example DllCall("Kernel32\GetVolumePathNamesForVolumeName", "str", lpszVolumeName, "str", lpszVolumePathNames, "uint", cchBufferLength, "ptr", lpcchReturnLength, "int") */
	static GetVolumePathNamesForVolumeName(lpszVolumeName, lpszVolumePathNames, cchBufferLength, lpcchReturnLength) => DllCall("Kernel32\GetVolumePathNamesForVolumeName", "str", lpszVolumeName, "str", lpszVolumePathNames, "uint", cchBufferLength, "ptr", lpcchReturnLength, "int")

	/** @example DllCall("Kernel32\GetWindowsDirectory", "str", lpBuffer, "uint", uSize, "uint") */
	static GetWindowsDirectory(lpBuffer, uSize) => DllCall("Kernel32\GetWindowsDirectory", "str", lpBuffer, "uint", uSize, "uint")

	/** @example DllCall("Kernel32\GetWriteWatch", "uint", dwFlags, "ptr", lpBaseAddress, "uptr", dwRegionSize, "ptr", lpAddresses, "uptr", lpdwCount, "ptr", lpdwGranularity, "uint") */
	static GetWriteWatch(dwFlags, lpBaseAddress, dwRegionSize, lpAddresses, lpdwCount, lpdwGranularity) => DllCall("Kernel32\GetWriteWatch", "uint", dwFlags, "ptr", lpBaseAddress, "uptr", dwRegionSize, "ptr", lpAddresses, "uptr", lpdwCount, "ptr", lpdwGranularity, "uint")

	/** @example DllCall("Kernel32\GetXStateFeaturesMask", "ptr", Context, "ptr", FeatureMask, "int") */
	static GetXStateFeaturesMask(Context, FeatureMask) => DllCall("Kernel32\GetXStateFeaturesMask", "ptr", Context, "ptr", FeatureMask, "int")

	/** @example DllCall("Kernel32\GlobalAddAtom", "str", lpString, "ushort") */
	static GlobalAddAtom(lpString) => DllCall("Kernel32\GlobalAddAtom", "str", lpString, "ushort")

	/** @example DllCall("Kernel32\GlobalAlloc", "uint", uFlags, "uptr", dwBytes, "ptr") */
	static GlobalAlloc(uFlags, dwBytes) => DllCall("Kernel32\GlobalAlloc", "uint", uFlags, "uptr", dwBytes, "ptr")

	/** @example DllCall("Kernel32\GlobalCompact", "uint", dwMinFree, "uptr") */
	static GlobalCompact(dwMinFree) => DllCall("Kernel32\GlobalCompact", "uint", dwMinFree, "uptr")

	/** @example DllCall("Kernel32\GlobalDeleteAtom", "ushort", nAtom, "ushort") */
	static GlobalDeleteAtom(nAtom) => DllCall("Kernel32\GlobalDeleteAtom", "ushort", nAtom, "ushort")

	/** @example DllCall("Kernel32\GlobalFindAtom", "str", lpString, "ushort") */
	static GlobalFindAtom(lpString) => DllCall("Kernel32\GlobalFindAtom", "str", lpString, "ushort")

	/** @example DllCall("Kernel32\GlobalFix", "ptr", hMem, "int") */
	static GlobalFix(hMem) => DllCall("Kernel32\GlobalFix", "ptr", hMem, "int")

	/** @example DllCall("Kernel32\GlobalFlags", "ptr", hMem, "uint") */
	static GlobalFlags(hMem) => DllCall("Kernel32\GlobalFlags", "ptr", hMem, "uint")

	/** @example DllCall("Kernel32\GlobalFree", "ptr", hMem, "ptr") */
	static GlobalFree(hMem) => DllCall("Kernel32\GlobalFree", "ptr", hMem, "ptr")

	/** @example DllCall("Kernel32\GlobalGetAtomName", "ushort", nAtom, "str", lpBuffer, "int", nSize, "uint") */
	static GlobalGetAtomName(nAtom, lpBuffer, nSize) => DllCall("Kernel32\GlobalGetAtomName", "ushort", nAtom, "str", lpBuffer, "int", nSize, "uint")

	/** @example DllCall("Kernel32\GlobalHandle", "ptr", pMem, "ptr") */
	static GlobalHandle(pMem) => DllCall("Kernel32\GlobalHandle", "ptr", pMem, "ptr")

	/** @example DllCall("Kernel32\GlobalLock", "ptr", hMem, "ptr") */
	static GlobalLock(hMem) => DllCall("Kernel32\GlobalLock", "ptr", hMem, "ptr")

	/** @example DllCall("Kernel32\GlobalMemoryStatus", "ptr", lpBuffer, "int") */
	static GlobalMemoryStatus(lpBuffer) => DllCall("Kernel32\GlobalMemoryStatus", "ptr", lpBuffer, "int")

	/** @example DllCall("Kernel32\GlobalMemoryStatusEx", "ptr", lpBuffer, "int") */
	static GlobalMemoryStatusEx(lpBuffer) => DllCall("Kernel32\GlobalMemoryStatusEx", "ptr", lpBuffer, "int")

	/** @example DllCall("Kernel32\GlobalReAlloc", "ptr", hMem, "uptr", dwBytes, "uint", uFlags, "ptr") */
	static GlobalReAlloc(hMem, dwBytes, uFlags) => DllCall("Kernel32\GlobalReAlloc", "ptr", hMem, "uptr", dwBytes, "uint", uFlags, "ptr")

	/** @example DllCall("Kernel32\GlobalSize", "ptr", hMem, "uptr") */
	static GlobalSize(hMem) => DllCall("Kernel32\GlobalSize", "ptr", hMem, "uptr")

	/** @example DllCall("Kernel32\GlobalUnWire", "ptr", hMem, "int") */
	static GlobalUnWire(hMem) => DllCall("Kernel32\GlobalUnWire", "ptr", hMem, "int")

	/** @example DllCall("Kernel32\GlobalUnfix", "ptr", hMem, "int") */
	static GlobalUnfix(hMem) => DllCall("Kernel32\GlobalUnfix", "ptr", hMem, "int")

	/** @example DllCall("Kernel32\GlobalUnlock", "ptr", hMem, "int") */
	static GlobalUnlock(hMem) => DllCall("Kernel32\GlobalUnlock", "ptr", hMem, "int")

	/** @example DllCall("Kernel32\GlobalWire", "ptr", hMem, "ptr") */
	static GlobalWire(hMem) => DllCall("Kernel32\GlobalWire", "ptr", hMem, "ptr")

	/** @example DllCall("Kernel32\Heap32First", "ptr", lphe, "uint", th32ProcessID, "uptr", th32HeapID, "int") */
	static Heap32First(lphe, th32ProcessID, th32HeapID) => DllCall("Kernel32\Heap32First", "ptr", lphe, "uint", th32ProcessID, "uptr", th32HeapID, "int")

	/** @example DllCall("Kernel32\Heap32ListFirst", "ptr", hSnapshot, "ptr", lphl, "int") */
	static Heap32ListFirst(hSnapshot, lphl) => DllCall("Kernel32\Heap32ListFirst", "ptr", hSnapshot, "ptr", lphl, "int")

	/** @example DllCall("Kernel32\Heap32ListNext", "ptr", hSnapshot, "ptr", lphl, "int") */
	static Heap32ListNext(hSnapshot, lphl) => DllCall("Kernel32\Heap32ListNext", "ptr", hSnapshot, "ptr", lphl, "int")

	/** @example DllCall("Kernel32\Heap32Next", "ptr", lphe, "int") */
	static Heap32Next(lphe) => DllCall("Kernel32\Heap32Next", "ptr", lphe, "int")

	/** @example DllCall("Kernel32\HeapAlloc", "ptr", hHeap, "uint", dwFlags, "uptr", dwBytes, "ptr") */
	static HeapAlloc(hHeap, dwFlags, dwBytes) => DllCall("Kernel32\HeapAlloc", "ptr", hHeap, "uint", dwFlags, "uptr", dwBytes, "ptr")

	/** @example DllCall("Kernel32\HeapCompact", "ptr", hHeap, "uint", dwFlags, "uptr") */
	static HeapCompact(hHeap, dwFlags) => DllCall("Kernel32\HeapCompact", "ptr", hHeap, "uint", dwFlags, "uptr")

	/** @example DllCall("Kernel32\HeapCreate", "uint", flOptions, "uptr", dwInitialSize, "uptr", dwMaximumSize, "ptr") */
	static HeapCreate(flOptions, dwInitialSize, dwMaximumSize) => DllCall("Kernel32\HeapCreate", "uint", flOptions, "uptr", dwInitialSize, "uptr", dwMaximumSize, "ptr")

	/** @example DllCall("Kernel32\HeapDestroy", "ptr", hHeap, "int") */
	static HeapDestroy(hHeap) => DllCall("Kernel32\HeapDestroy", "ptr", hHeap, "int")

	/** @example DllCall("Kernel32\HeapFree", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "int") */
	static HeapFree(hHeap, dwFlags, lpMem) => DllCall("Kernel32\HeapFree", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "int")

	/** @example DllCall("Kernel32\HeapLock", "ptr", hHeap, "int") */
	static HeapLock(hHeap) => DllCall("Kernel32\HeapLock", "ptr", hHeap, "int")

	/** @example DllCall("Kernel32\HeapQueryInformation", "ptr", HeapHandle, "int", HeapInformationClass, "ptr", HeapInformation, "uptr", HeapInformationLength, "ptr", ReturnLength, "int") */
	static HeapQueryInformation(HeapHandle, HeapInformationClass, HeapInformation, HeapInformationLength, ReturnLength) => DllCall("Kernel32\HeapQueryInformation", "ptr", HeapHandle, "int", HeapInformationClass, "ptr", HeapInformation, "uptr", HeapInformationLength, "ptr", ReturnLength, "int")

	/** @example DllCall("Kernel32\HeapReAlloc", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "uptr", dwBytes, "ptr") */
	static HeapReAlloc(hHeap, dwFlags, lpMem, dwBytes) => DllCall("Kernel32\HeapReAlloc", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "uptr", dwBytes, "ptr")

	/** @example DllCall("Kernel32\HeapSetInformation", "ptr", HeapHandle, "int", HeapInformationClass, "ptr", HeapInformation, "uptr", HeapInformationLength, "int") */
	static HeapSetInformation(HeapHandle, HeapInformationClass, HeapInformation, HeapInformationLength) => DllCall("Kernel32\HeapSetInformation", "ptr", HeapHandle, "int", HeapInformationClass, "ptr", HeapInformation, "uptr", HeapInformationLength, "int")

	/** @example DllCall("Kernel32\HeapSize", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "uptr") */
	static HeapSize(hHeap, dwFlags, lpMem) => DllCall("Kernel32\HeapSize", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "uptr")

	/** @example DllCall("Kernel32\HeapUnlock", "ptr", hHeap, "int") */
	static HeapUnlock(hHeap) => DllCall("Kernel32\HeapUnlock", "ptr", hHeap, "int")

	/** @example DllCall("Kernel32\HeapValidate", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "int") */
	static HeapValidate(hHeap, dwFlags, lpMem) => DllCall("Kernel32\HeapValidate", "ptr", hHeap, "uint", dwFlags, "ptr", lpMem, "int")

	/** @example DllCall("Kernel32\HeapWalk", "ptr", hHeap, "ptr", lpEntry, "int") */
	static HeapWalk(hHeap, lpEntry) => DllCall("Kernel32\HeapWalk", "ptr", hHeap, "ptr", lpEntry, "int")

	/** @example DllCall("Kernel32\IdnToAscii", "uint", dwFlags, "wstr", lpUnicodeCharStr, "int", cchUnicodeChar, "wstr", lpASCIICharStr, "int", cchASCIIChar, "int") */
	static IdnToAscii(dwFlags, lpUnicodeCharStr, cchUnicodeChar, lpASCIICharStr, cchASCIIChar) => DllCall("Kernel32\IdnToAscii", "uint", dwFlags, "wstr", lpUnicodeCharStr, "int", cchUnicodeChar, "wstr", lpASCIICharStr, "int", cchASCIIChar, "int")

	/** @example DllCall("Kernel32\IdnToNameprepUnicode", "uint", dwFlags, "wstr", lpUnicodeCharStr, "int", cchUnicodeChar, "wstr", lpNameprepCharStr, "int", cchNameprepChar, "int") */
	static IdnToNameprepUnicode(dwFlags, lpUnicodeCharStr, cchUnicodeChar, lpNameprepCharStr, cchNameprepChar) => DllCall("Kernel32\IdnToNameprepUnicode", "uint", dwFlags, "wstr", lpUnicodeCharStr, "int", cchUnicodeChar, "wstr", lpNameprepCharStr, "int", cchNameprepChar, "int")

	/** @example DllCall("Kernel32\IdnToUnicode", "uint", dwFlags, "wstr", lpASCIICharStr, "int", cchASCIIChar, "wstr", lpUnicodeCharStr, "int", cchUnicodeChar, "int") */
	static IdnToUnicode(dwFlags, lpASCIICharStr, cchASCIIChar, lpUnicodeCharStr, cchUnicodeChar) => DllCall("Kernel32\IdnToUnicode", "uint", dwFlags, "wstr", lpASCIICharStr, "int", cchASCIIChar, "wstr", lpUnicodeCharStr, "int", cchUnicodeChar, "int")

	/** @example DllCall("Kernel32\InitAtomTable", "uint", nSize, "int") */
	static InitAtomTable(nSize) => DllCall("Kernel32\InitAtomTable", "uint", nSize, "int")

	/** @example DllCall("Kernel32\InitOnceBeginInitialize", "ptr", lpInitOnce, "uint", dwFlags, "ptr", fPending, "ptr", lpContext, "int") */
	static InitOnceBeginInitialize(lpInitOnce, dwFlags, fPending, lpContext) => DllCall("Kernel32\InitOnceBeginInitialize", "ptr", lpInitOnce, "uint", dwFlags, "ptr", fPending, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\InitOnceComplete", "ptr", lpInitOnce, "uint", dwFlags, "ptr", lpContext, "int") */
	static InitOnceComplete(lpInitOnce, dwFlags, lpContext) => DllCall("Kernel32\InitOnceComplete", "ptr", lpInitOnce, "uint", dwFlags, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\InitOnceExecuteOnce", "ptr", InitOnce, "ptr", InitFn, "ptr", Parameter, "ptr", Context, "int") */
	static InitOnceExecuteOnce(InitOnce, InitFn, Parameter, Context) => DllCall("Kernel32\InitOnceExecuteOnce", "ptr", InitOnce, "ptr", InitFn, "ptr", Parameter, "ptr", Context, "int")

	/** @example DllCall("Kernel32\InitOnceInitialize", "ptr", InitOnce, "int") */
	static InitOnceInitialize(InitOnce) => DllCall("Kernel32\InitOnceInitialize", "ptr", InitOnce, "int")

	/** @example DllCall("Kernel32\InitializeConditionVariable", "ptr", ConditionVariable, "int") */
	static InitializeConditionVariable(ConditionVariable) => DllCall("Kernel32\InitializeConditionVariable", "ptr", ConditionVariable, "int")

	/** @example DllCall("Kernel32\InitializeContext", "ptr", Buffer, "uint", ContextFlags, "ptr", Context, "ptr", ContextLength, "int") */
	static InitializeContext(Buffer, ContextFlags, Context, ContextLength) => DllCall("Kernel32\InitializeContext", "ptr", Buffer, "uint", ContextFlags, "ptr", Context, "ptr", ContextLength, "int")

	/** @example DllCall("Kernel32\InitializeCriticalSection", "ptr", lpCriticalSection, "int") */
	static InitializeCriticalSection(lpCriticalSection) => DllCall("Kernel32\InitializeCriticalSection", "ptr", lpCriticalSection, "int")

	/** @example DllCall("Kernel32\InitializeCriticalSectionAndSpinCount", "ptr", lpCriticalSection, "uint", dwSpinCount, "int") */
	static InitializeCriticalSectionAndSpinCount(lpCriticalSection, dwSpinCount) => DllCall("Kernel32\InitializeCriticalSectionAndSpinCount", "ptr", lpCriticalSection, "uint", dwSpinCount, "int")

	/** @example DllCall("Kernel32\InitializeCriticalSectionEx", "ptr", lpCriticalSection, "uint", dwSpinCount, "uint", Flags, "int") */
	static InitializeCriticalSectionEx(lpCriticalSection, dwSpinCount, Flags) => DllCall("Kernel32\InitializeCriticalSectionEx", "ptr", lpCriticalSection, "uint", dwSpinCount, "uint", Flags, "int")

	/** @example DllCall("Kernel32\InitializeProcThreadAttributeList", "ptr", lpAttributeList, "uint", dwAttributeCount, "uint", dwFlags, "ptr", lpSize, "int") */
	static InitializeProcThreadAttributeList(lpAttributeList, dwAttributeCount, dwFlags, lpSize) => DllCall("Kernel32\InitializeProcThreadAttributeList", "ptr", lpAttributeList, "uint", dwAttributeCount, "uint", dwFlags, "ptr", lpSize, "int")

	/** @example DllCall("Kernel32\InitializeSListHead", "ptr", ListHead, "int") */
	static InitializeSListHead(ListHead) => DllCall("Kernel32\InitializeSListHead", "ptr", ListHead, "int")

	/** @example DllCall("Kernel32\InitializeSRWLock", "ptr", SRWLock, "int") */
	static InitializeSRWLock(SRWLock) => DllCall("Kernel32\InitializeSRWLock", "ptr", SRWLock, "int")

	/** @example DllCall("Kernel32\InterlockedCompareExchange", "ptr", Destination, "int", Exchange, "int", Comparand, "int") */
	static InterlockedCompareExchange(Destination, Exchange, Comparand) => DllCall("Kernel32\InterlockedCompareExchange", "ptr", Destination, "int", Exchange, "int", Comparand, "int")

	/** @example DllCall("Kernel32\InterlockedCompareExchange64", "ptr", Destination, "int64", Exchange, "int64", Comparand, "int64") */
	static InterlockedCompareExchange64(Destination, Exchange, Comparand) => DllCall("Kernel32\InterlockedCompareExchange64", "ptr", Destination, "int64", Exchange, "int64", Comparand, "int64")

	/** @example DllCall("Kernel32\InterlockedDecrement", "ptr", Addend, "int") */
	static InterlockedDecrement(Addend) => DllCall("Kernel32\InterlockedDecrement", "ptr", Addend, "int")

	/** @example DllCall("Kernel32\InterlockedExchange", "ptr", Target, "int", Value, "int") */
	static InterlockedExchange(Target, Value) => DllCall("Kernel32\InterlockedExchange", "ptr", Target, "int", Value, "int")

	/** @example DllCall("Kernel32\InterlockedExchangeAdd", "ptr", Addend, "int", Value, "int") */
	static InterlockedExchangeAdd(Addend, Value) => DllCall("Kernel32\InterlockedExchangeAdd", "ptr", Addend, "int", Value, "int")

	/** @example DllCall("Kernel32\InterlockedFlushSList", "ptr", ListHead, "ptr") */
	static InterlockedFlushSList(ListHead) => DllCall("Kernel32\InterlockedFlushSList", "ptr", ListHead, "ptr")

	/** @example DllCall("Kernel32\InterlockedIncrement", "ptr", Addend, "int") */
	static InterlockedIncrement(Addend) => DllCall("Kernel32\InterlockedIncrement", "ptr", Addend, "int")

	/** @example DllCall("Kernel32\InterlockedPopEntrySList", "ptr", ListHead, "ptr") */
	static InterlockedPopEntrySList(ListHead) => DllCall("Kernel32\InterlockedPopEntrySList", "ptr", ListHead, "ptr")

	/** @example DllCall("Kernel32\InterlockedPushEntrySList", "ptr", ListHead, "ptr", ListEntry, "ptr") */
	static InterlockedPushEntrySList(ListHead, ListEntry) => DllCall("Kernel32\InterlockedPushEntrySList", "ptr", ListHead, "ptr", ListEntry, "ptr")

	/** @example DllCall("Kernel32\InterlockedPushListSList", "ptr", ListHead, "ptr", List, "ptr", ListEnd, "uint", Count, "ptr") */
	static InterlockedPushListSList(ListHead, List, ListEnd, Count) => DllCall("Kernel32\InterlockedPushListSList", "ptr", ListHead, "ptr", List, "ptr", ListEnd, "uint", Count, "ptr")

	/** @example DllCall("Kernel32\IsBadCodePtr", "ptr", lpfn, "int") */
	static IsBadCodePtr(lpfn) => DllCall("Kernel32\IsBadCodePtr", "ptr", lpfn, "int")

	/** @example DllCall("Kernel32\IsBadHugeReadPtr", "ptr", lp, "uptr", ucb, "int") */
	static IsBadHugeReadPtr(lp, ucb) => DllCall("Kernel32\IsBadHugeReadPtr", "ptr", lp, "uptr", ucb, "int")

	/** @example DllCall("Kernel32\IsBadHugeWritePtr", "ptr", lp, "uptr", ucb, "int") */
	static IsBadHugeWritePtr(lp, ucb) => DllCall("Kernel32\IsBadHugeWritePtr", "ptr", lp, "uptr", ucb, "int")

	/** @example DllCall("Kernel32\IsBadReadPtr", "ptr", lp, "uptr", ucb, "int") */
	static IsBadReadPtr(lp, ucb) => DllCall("Kernel32\IsBadReadPtr", "ptr", lp, "uptr", ucb, "int")

	/** @example DllCall("Kernel32\IsBadStringPtr", "str", lpsz, "uptr", ucchMax, "int") */
	static IsBadStringPtr(lpsz, ucchMax) => DllCall("Kernel32\IsBadStringPtr", "str", lpsz, "uptr", ucchMax, "int")

	/** @example DllCall("Kernel32\IsBadWritePtr", "ptr", lp, "uptr", ucb, "int") */
	static IsBadWritePtr(lp, ucb) => DllCall("Kernel32\IsBadWritePtr", "ptr", lp, "uptr", ucb, "int")

	/** @example DllCall("Kernel32\IsCalendarLeapYear", "uint", calId, "uint", year, "uint", era, "int") */
	static IsCalendarLeapYear(calId, year, era) => DllCall("Kernel32\IsCalendarLeapYear", "uint", calId, "uint", year, "uint", era, "int")

	/** @example DllCall("Kernel32\IsDBCSLeadByte", "uchar", TestChar, "int") */
	static IsDBCSLeadByte(TestChar) => DllCall("Kernel32\IsDBCSLeadByte", "uchar", TestChar, "int")

	/** @example DllCall("Kernel32\IsDBCSLeadByteEx", "uint", CodePage, "uchar", TestChar, "int") */
	static IsDBCSLeadByteEx(CodePage, TestChar) => DllCall("Kernel32\IsDBCSLeadByteEx", "uint", CodePage, "uchar", TestChar, "int")

	/** @example DllCall("Kernel32\IsDebuggerPresent", "int") */
	static IsDebuggerPresent() => DllCall("Kernel32\IsDebuggerPresent", "int")

	/** @example DllCall("Kernel32\IsNLSDefinedString", "uint", Function, "uint", dwFlags, "ptr", lpVersionInformation, "wstr", lpString, "int", cchStr, "int") */
	static IsNLSDefinedString(Function, dwFlags, lpVersionInformation, lpString, cchStr) => DllCall("Kernel32\IsNLSDefinedString", "uint", Function, "uint", dwFlags, "ptr", lpVersionInformation, "wstr", lpString, "int", cchStr, "int")

	/** @example DllCall("Kernel32\IsNormalizedString", "uint", NormForm, "wstr", lpString, "int", cwLength, "int") */
	static IsNormalizedString(NormForm, lpString, cwLength) => DllCall("Kernel32\IsNormalizedString", "uint", NormForm, "wstr", lpString, "int", cwLength, "int")

	/** @example DllCall("Kernel32\IsProcessInJob", "ptr", ProcessHandle, "ptr", JobHandle, "ptr", Result, "int") */
	static IsProcessInJob(ProcessHandle, JobHandle, Result) => DllCall("Kernel32\IsProcessInJob", "ptr", ProcessHandle, "ptr", JobHandle, "ptr", Result, "int")

	/** @example DllCall("Kernel32\IsProcessorFeaturePresent", "uint", ProcessorFeature, "int") */
	static IsProcessorFeaturePresent(ProcessorFeature) => DllCall("Kernel32\IsProcessorFeaturePresent", "uint", ProcessorFeature, "int")

	/** @example DllCall("Kernel32\IsSystemResumeAutomatic", "int") */
	static IsSystemResumeAutomatic() => DllCall("Kernel32\IsSystemResumeAutomatic", "int")

	/** @example DllCall("Kernel32\IsThreadAFiber", "int") */
	static IsThreadAFiber() => DllCall("Kernel32\IsThreadAFiber", "int")

	/** @example DllCall("Kernel32\IsThreadpoolTimerSet", "ptr", pti, "int") */
	static IsThreadpoolTimerSet(pti) => DllCall("Kernel32\IsThreadpoolTimerSet", "ptr", pti, "int")

	/** @example DllCall("Kernel32\IsValidCodePage", "uint", CodePage, "int") */
	static IsValidCodePage(CodePage) => DllCall("Kernel32\IsValidCodePage", "uint", CodePage, "int")

	/** @example DllCall("Kernel32\IsValidLanguageGroup", "uint", LanguageGroup, "uint", dwFlags, "int") */
	static IsValidLanguageGroup(LanguageGroup, dwFlags) => DllCall("Kernel32\IsValidLanguageGroup", "uint", LanguageGroup, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\IsValidLocale", "uint", Locale, "uint", dwFlags, "int") */
	static IsValidLocale(Locale, dwFlags) => DllCall("Kernel32\IsValidLocale", "uint", Locale, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\IsValidLocaleName", "wstr", lpLocaleName, "int") */
	static IsValidLocaleName(lpLocaleName) => DllCall("Kernel32\IsValidLocaleName", "wstr", lpLocaleName, "int")

	/** @example DllCall("Kernel32\IsWow64Process", "ptr", hProcess, "ptr", Wow64Process, "int") */
	static IsWow64Process(hProcess, Wow64Process) => DllCall("Kernel32\IsWow64Process", "ptr", hProcess, "ptr", Wow64Process, "int")

	/** @example DllCall("Kernel32\LCIDToLocaleName", "uint", Locale, "wstr", lpName, "int", cchName, "uint", dwFlags, "int") */
	static LCIDToLocaleName(Locale, lpName, cchName, dwFlags) => DllCall("Kernel32\LCIDToLocaleName", "uint", Locale, "wstr", lpName, "int", cchName, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\LCMapString", "uint", Locale, "uint", dwMapFlags, "str", lpSrcStr, "int", cchSrc, "str", lpDestStr, "int", cchDest, "int") */
	static LCMapString(Locale, dwMapFlags, lpSrcStr, cchSrc, lpDestStr, cchDest) => DllCall("Kernel32\LCMapString", "uint", Locale, "uint", dwMapFlags, "str", lpSrcStr, "int", cchSrc, "str", lpDestStr, "int", cchDest, "int")

	/** @example DllCall("Kernel32\LCMapStringEx", "wstr", lpLocaleName, "uint", dwMapFlags, "wstr", lpSrcStr, "int", cchSrc, "wstr", lpDestStr, "int", cchDest, "ptr", lpVersionInformation, "ptr", lpReserved, "uptr", sortHandle, "int") */
	static LCMapStringEx(lpLocaleName, dwMapFlags, lpSrcStr, cchSrc, lpDestStr, cchDest, lpVersionInformation, lpReserved, sortHandle) => DllCall("Kernel32\LCMapStringEx", "wstr", lpLocaleName, "uint", dwMapFlags, "wstr", lpSrcStr, "int", cchSrc, "wstr", lpDestStr, "int", cchDest, "ptr", lpVersionInformation, "ptr", lpReserved, "uptr", sortHandle, "int")

	/** @example DllCall("Kernel32\LZClose", "int", hFile, "int") */
	static LZClose(hFile) => DllCall("Kernel32\LZClose", "int", hFile, "int")

	/** @example DllCall("Kernel32\LZCopy", "int", hfSource, "int", hfDest, "int") */
	static LZCopy(hfSource, hfDest) => DllCall("Kernel32\LZCopy", "int", hfSource, "int", hfDest, "int")

	/** @example DllCall("Kernel32\LZDone", "int") */
	static LZDone() => DllCall("Kernel32\LZDone", "int")

	/** @example DllCall("Kernel32\LZInit", "int", hfSource, "int") */
	static LZInit(hfSource) => DllCall("Kernel32\LZInit", "int", hfSource, "int")

	/** @example DllCall("Kernel32\LZOpenFile", "str", lpFileName, "ptr", lpReOpenBuf, "ushort", wStyle, "int") */
	static LZOpenFile(lpFileName, lpReOpenBuf, wStyle) => DllCall("Kernel32\LZOpenFile", "str", lpFileName, "ptr", lpReOpenBuf, "ushort", wStyle, "int")

	/** @example DllCall("Kernel32\LZRead", "int", hFile, "astr", lpBuffer, "int", cbRead, "int") */
	static LZRead(hFile, lpBuffer, cbRead) => DllCall("Kernel32\LZRead", "int", hFile, "astr", lpBuffer, "int", cbRead, "int")

	/** @example DllCall("Kernel32\LZSeek", "int", hFile, "int", lOffset, "int", iOrigin, "int") */
	static LZSeek(hFile, lOffset, iOrigin) => DllCall("Kernel32\LZSeek", "int", hFile, "int", lOffset, "int", iOrigin, "int")

	/** @example DllCall("Kernel32\LZStart", "int") */
	static LZStart() => DllCall("Kernel32\LZStart", "int")

	/** @example DllCall("Kernel32\LeaveCriticalSection", "ptr", lpCriticalSection, "int") */
	static LeaveCriticalSection(lpCriticalSection) => DllCall("Kernel32\LeaveCriticalSection", "ptr", lpCriticalSection, "int")

	/** @example DllCall("Kernel32\LeaveCriticalSectionWhenCallbackReturns", "ptr", pci, "ptr", pcs, "int") */
	static LeaveCriticalSectionWhenCallbackReturns(pci, pcs) => DllCall("Kernel32\LeaveCriticalSectionWhenCallbackReturns", "ptr", pci, "ptr", pcs, "int")

	/** @example DllCall("Kernel32\LoadLibrary", "str", lpFileName, "ptr") */
	static LoadLibrary(lpFileName) => DllCall("Kernel32\LoadLibrary", "str", lpFileName, "ptr")

	/** @example DllCall("Kernel32\LoadLibraryEx", "str", lpFileName, "ptr", hFile, "uint", dwFlags, "ptr") */
	static LoadLibraryEx(lpFileName, hFile, dwFlags) => DllCall("Kernel32\LoadLibraryEx", "str", lpFileName, "ptr", hFile, "uint", dwFlags, "ptr")

	/** @example DllCall("Kernel32\LoadModule", "astr", lpModuleName, "ptr", lpParameterBlock, "uint") */
	static LoadModule(lpModuleName, lpParameterBlock) => DllCall("Kernel32\LoadModule", "astr", lpModuleName, "ptr", lpParameterBlock, "uint")

	/** @example DllCall("Kernel32\LoadResource", "ptr", hModule, "ptr", hResInfo, "ptr") */
	static LoadResource(hModule, hResInfo) => DllCall("Kernel32\LoadResource", "ptr", hModule, "ptr", hResInfo, "ptr")

	/** @example DllCall("Kernel32\LoadStringByReference", "uint", Flags, "wstr", Language, "wstr", SourceString, "ptr", Buffer, "uint", cchBuffer, "wstr", Directory, "ptr", pcchBufferOut, "int") */
	static LoadStringByReference(Flags, Language, SourceString, Buffer, cchBuffer, Directory, pcchBufferOut) => DllCall("Kernel32\LoadStringByReference", "uint", Flags, "wstr", Language, "wstr", SourceString, "ptr", Buffer, "uint", cchBuffer, "wstr", Directory, "ptr", pcchBufferOut, "int")

	/** @example DllCall("Kernel32\LocalAlloc", "uint", uFlags, "uptr", uBytes, "ptr") */
	static LocalAlloc(uFlags, uBytes) => DllCall("Kernel32\LocalAlloc", "uint", uFlags, "uptr", uBytes, "ptr")

	/** @example DllCall("Kernel32\LocalCompact", "uint", uMinFree, "uptr") */
	static LocalCompact(uMinFree) => DllCall("Kernel32\LocalCompact", "uint", uMinFree, "uptr")

	/** @example DllCall("Kernel32\LocalFileTimeToFileTime", "ptr", lpLocalFileTime, "ptr", lpFileTime, "int") */
	static LocalFileTimeToFileTime(lpLocalFileTime, lpFileTime) => DllCall("Kernel32\LocalFileTimeToFileTime", "ptr", lpLocalFileTime, "ptr", lpFileTime, "int")

	/** @example DllCall("Kernel32\LocalFlags", "ptr", hMem, "uint") */
	static LocalFlags(hMem) => DllCall("Kernel32\LocalFlags", "ptr", hMem, "uint")

	/** @example DllCall("Kernel32\LocalFree", "ptr", hMem, "ptr") */
	static LocalFree(hMem) => DllCall("Kernel32\LocalFree", "ptr", hMem, "ptr")

	/** @example DllCall("Kernel32\LocalHandle", "ptr", pMem, "ptr") */
	static LocalHandle(pMem) => DllCall("Kernel32\LocalHandle", "ptr", pMem, "ptr")

	/** @example DllCall("Kernel32\LocalLock", "ptr", hMem, "ptr") */
	static LocalLock(hMem) => DllCall("Kernel32\LocalLock", "ptr", hMem, "ptr")

	/** @example DllCall("Kernel32\LocalReAlloc", "ptr", hMem, "uptr", uBytes, "uint", uFlags, "ptr") */
	static LocalReAlloc(hMem, uBytes, uFlags) => DllCall("Kernel32\LocalReAlloc", "ptr", hMem, "uptr", uBytes, "uint", uFlags, "ptr")

	/** @example DllCall("Kernel32\LocalShrink", "ptr", hMem, "uint", cbNewSize, "uptr") */
	static LocalShrink(hMem, cbNewSize) => DllCall("Kernel32\LocalShrink", "ptr", hMem, "uint", cbNewSize, "uptr")

	/** @example DllCall("Kernel32\LocalSize", "ptr", hMem, "uint") */
	static LocalSize(hMem) => DllCall("Kernel32\LocalSize", "ptr", hMem, "uint")

	/** @example DllCall("Kernel32\LocalUnlock", "ptr", hMem, "int") */
	static LocalUnlock(hMem) => DllCall("Kernel32\LocalUnlock", "ptr", hMem, "int")

	/** @example DllCall("Kernel32\LocaleNameToLCID", "wstr", lpName, "uint", dwFlags, "uint") */
	static LocaleNameToLCID(lpName, dwFlags := 0) => DllCall("Kernel32\LocaleNameToLCID", "ptr", StrPtr(lpName), "uint", dwFlags, "uint")

	/** @example DllCall("Kernel32\LocateXStateFeature", "ptr", Context, "uint", FeatureId, "ptr", Length, "ptr") */
	static LocateXStateFeature(Context, FeatureId, Length) => DllCall("Kernel32\LocateXStateFeature", "ptr", Context, "uint", FeatureId, "ptr", Length, "ptr")

	/** @example DllCall("Kernel32\LockFile", "ptr", hFile, "uint", dwFileOffsetLow, "uint", dwFileOffsetHigh, "uint", nNumberOfBytesToLockLow, "uint", nNumberOfBytesToLockHigh, "int") */
	static LockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToLockLow, nNumberOfBytesToLockHigh) => DllCall("Kernel32\LockFile", "ptr", hFile, "uint", dwFileOffsetLow, "uint", dwFileOffsetHigh, "uint", nNumberOfBytesToLockLow, "uint", nNumberOfBytesToLockHigh, "int")

	/** @example DllCall("Kernel32\LockFileEx", "ptr", hFile, "uint", dwFlags, "uint", dwReserved, "uint", nNumberOfBytesToLockLow, "uint", nNumberOfBytesToLockHigh, "ptr", lpOverlapped, "int") */
	static LockFileEx(hFile, dwFlags, dwReserved, nNumberOfBytesToLockLow, nNumberOfBytesToLockHigh, lpOverlapped) => DllCall("Kernel32\LockFileEx", "ptr", hFile, "uint", dwFlags, "uint", dwReserved, "uint", nNumberOfBytesToLockLow, "uint", nNumberOfBytesToLockHigh, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\LockResource", "ptr", hResData, "ptr") */
	static LockResource(hResData) => DllCall("Kernel32\LockResource", "ptr", hResData, "ptr")

	/** @example DllCall("Kernel32\MapUserPhysicalPages", "ptr", lpAddress, "uptr", NumberOfPages, "uptr", UserPfnArray, "int") */
	static MapUserPhysicalPages(lpAddress, NumberOfPages, UserPfnArray) => DllCall("Kernel32\MapUserPhysicalPages", "ptr", lpAddress, "uptr", NumberOfPages, "uptr", UserPfnArray, "int")

	/** @example DllCall("Kernel32\MapUserPhysicalPagesScatter", "ptr", VirtualAddresses, "uptr", NumberOfPages, "uptr", PageArray, "int") */
	static MapUserPhysicalPagesScatter(VirtualAddresses, NumberOfPages, PageArray) => DllCall("Kernel32\MapUserPhysicalPagesScatter", "ptr", VirtualAddresses, "uptr", NumberOfPages, "uptr", PageArray, "int")

	/** @example DllCall("Kernel32\MapViewOfFile", "ptr", hFileMappingObject, "uint", dwDesiredAccess, "uint", dwFileOffsetHigh, "uint", dwFileOffsetLow, "uptr", dwNumberOfBytesToMap, "ptr") */
	static MapViewOfFile(hFileMappingObject, dwDesiredAccess, dwFileOffsetHigh, dwFileOffsetLow, dwNumberOfBytesToMap) => DllCall("Kernel32\MapViewOfFile", "ptr", hFileMappingObject, "uint", dwDesiredAccess, "uint", dwFileOffsetHigh, "uint", dwFileOffsetLow, "uptr", dwNumberOfBytesToMap, "ptr")

	/** @example DllCall("Kernel32\MapViewOfFileEx", "ptr", hFileMappingObject, "uint", dwDesiredAccess, "uint", dwFileOffsetHigh, "uint", dwFileOffsetLow, "uptr", dwNumberOfBytesToMap, "ptr", lpBaseAddress, "ptr") */
	static MapViewOfFileEx(hFileMappingObject, dwDesiredAccess, dwFileOffsetHigh, dwFileOffsetLow, dwNumberOfBytesToMap, lpBaseAddress) => DllCall("Kernel32\MapViewOfFileEx", "ptr", hFileMappingObject, "uint", dwDesiredAccess, "uint", dwFileOffsetHigh, "uint", dwFileOffsetLow, "uptr", dwNumberOfBytesToMap, "ptr", lpBaseAddress, "ptr")

	/** @example DllCall("Kernel32\MapViewOfFileExNuma", "ptr", hFileMappingObject, "uint", dwDesiredAccess, "uint", dwFileOffsetHigh, "uint", dwFileOffsetLow, "uptr", dwNumberOfBytesToMap, "ptr", lpBaseAddress, "uint", nndPreferred, "ptr") */
	static MapViewOfFileExNuma(hFileMappingObject, dwDesiredAccess, dwFileOffsetHigh, dwFileOffsetLow, dwNumberOfBytesToMap, lpBaseAddress, nndPreferred) => DllCall("Kernel32\MapViewOfFileExNuma", "ptr", hFileMappingObject, "uint", dwDesiredAccess, "uint", dwFileOffsetHigh, "uint", dwFileOffsetLow, "uptr", dwNumberOfBytesToMap, "ptr", lpBaseAddress, "uint", nndPreferred, "ptr")

	/** @example DllCall("Kernel32\Module32First", "ptr", hSnapshot, "ptr", lpme, "int") */
	static Module32First(hSnapshot, lpme) => DllCall("Kernel32\Module32First", "ptr", hSnapshot, "ptr", lpme, "int")

	/** @example DllCall("Kernel32\Module32Next", "ptr", hSnapshot, "ptr", lpme, "int") */
	static Module32Next(hSnapshot, lpme) => DllCall("Kernel32\Module32Next", "ptr", hSnapshot, "ptr", lpme, "int")

	/** @example DllCall("Kernel32\MoveFile", "str", lpExistingFileName, "str", lpNewFileName, "int") */
	static MoveFile(lpExistingFileName, lpNewFileName) => DllCall("Kernel32\MoveFile", "str", lpExistingFileName, "str", lpNewFileName, "int")

	/** @example DllCall("Kernel32\MoveFileEx", "str", lpExistingFileName, "str", lpNewFileName, "uint", dwFlags, "int") */
	static MoveFileEx(lpExistingFileName, lpNewFileName, dwFlags) => DllCall("Kernel32\MoveFileEx", "str", lpExistingFileName, "str", lpNewFileName, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\MoveFileTransacted", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "uint", dwFlags, "ptr", hTransaction, "int") */
	static MoveFileTransacted(lpExistingFileName, lpNewFileName, lpProgressRoutine, lpData, dwFlags, hTransaction) => DllCall("Kernel32\MoveFileTransacted", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "uint", dwFlags, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\MoveFileWithProgress", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "uint", dwFlags, "int") */
	static MoveFileWithProgress(lpExistingFileName, lpNewFileName, lpProgressRoutine, lpData, dwFlags) => DllCall("Kernel32\MoveFileWithProgress", "str", lpExistingFileName, "str", lpNewFileName, "ptr", lpProgressRoutine, "ptr", lpData, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\MulDiv", "int", nNumber, "int", nNumerator, "int", nDenominator, "int") */
	static MulDiv(nNumber, nNumerator, nDenominator) => DllCall("Kernel32\MulDiv", "int", nNumber, "int", nNumerator, "int", nDenominator, "int")

	/** @example DllCall("Kernel32\MultiByteToWideChar", "uint", CodePage, "uint", dwFlags, "astr", lpMultiByteStr, "int", cbMultiByte, "wstr", lpWideCharStr, "int", cchWideChar, "int") */
	static MultiByteToWideChar(CodePage, dwFlags, lpMultiByteStr, cbMultiByte, lpWideCharStr, cchWideChar) => DllCall("Kernel32\MultiByteToWideChar", "uint", CodePage, "uint", dwFlags, "astr", lpMultiByteStr, "int", cbMultiByte, "wstr", lpWideCharStr, "int", cchWideChar, "int")

	/** @example DllCall("Kernel32\NeedCurrentDirectoryForExePath", "str", ExeName, "int") */
	static NeedCurrentDirectoryForExePath(ExeName) => DllCall("Kernel32\NeedCurrentDirectoryForExePath", "str", ExeName, "int")

	/** @example DllCall("Kernel32\NotifyUILanguageChange", "uint", dwFlags, "wstr", pcwstrNewLanguage, "wstr", pcwstrPreviousLanguage, "uint", dwReserved, "ptr", pdwStatusRtrn, "int") */
	static NotifyUILanguageChange(dwFlags, pcwstrNewLanguage, pcwstrPreviousLanguage, dwReserved, pdwStatusRtrn) => DllCall("Kernel32\NotifyUILanguageChange", "uint", dwFlags, "wstr", pcwstrNewLanguage, "wstr", pcwstrPreviousLanguage, "uint", dwReserved, "ptr", pdwStatusRtrn, "int")

	/** @example DllCall("Kernel32\OpenEvent", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr") */
	static OpenEvent(dwDesiredAccess, bInheritHandle, lpName) => DllCall("Kernel32\OpenEvent", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\OpenFile", "astr", lpFileName, "ptr", lpReOpenBuff, "uint", uStyle, "ptr") */
	static OpenFile(lpFileName, lpReOpenBuff, uStyle) => DllCall("Kernel32\OpenFile", "astr", lpFileName, "ptr", lpReOpenBuff, "uint", uStyle, "ptr")

	/** @example DllCall("Kernel32\OpenFileById", "ptr", hFile, "ptr", lpFileID, "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwFlags, "ptr") */
	static OpenFileById(hFile, lpFileID, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwFlags) => DllCall("Kernel32\OpenFileById", "ptr", hFile, "ptr", lpFileID, "uint", dwDesiredAccess, "uint", dwShareMode, "ptr", lpSecurityAttributes, "uint", dwFlags, "ptr")

	/** @example DllCall("Kernel32\OpenFileMapping", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr") */
	static OpenFileMapping(dwDesiredAccess, bInheritHandle, lpName) => DllCall("Kernel32\OpenFileMapping", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\OpenJobObject", "uint", dwDesiredAccess, "int", bInheritHandles, "str", lpName, "ptr") */
	static OpenJobObject(dwDesiredAccess, bInheritHandles, lpName) => DllCall("Kernel32\OpenJobObject", "uint", dwDesiredAccess, "int", bInheritHandles, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\OpenMutex", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr") */
	static OpenMutex(dwDesiredAccess, bInheritHandle, lpName) => DllCall("Kernel32\OpenMutex", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\OpenPrivateNamespace", "ptr", lpBoundaryDescriptor, "str", lpAliasPrefix, "ptr") */
	static OpenPrivateNamespace(lpBoundaryDescriptor, lpAliasPrefix) => DllCall("Kernel32\OpenPrivateNamespace", "ptr", lpBoundaryDescriptor, "str", lpAliasPrefix, "ptr")

	/** @example DllCall("Kernel32\OpenProcess", "uint", dwDesiredAccess, "int", bInheritHandle, "uint", dwProcessId, "ptr") */
	static OpenProcess(dwDesiredAccess, bInheritHandle, dwProcessId) => DllCall("Kernel32\OpenProcess", "uint", dwDesiredAccess, "int", bInheritHandle, "uint", dwProcessId, "ptr")

	/** @example DllCall("Kernel32\OpenSemaphore", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr") */
	static OpenSemaphore(dwDesiredAccess, bInheritHandle, lpName) => DllCall("Kernel32\OpenSemaphore", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpName, "ptr")

	/** @example DllCall("Kernel32\OpenThread", "uint", dwDesiredAccess, "int", bInheritHandle, "uint", dwThreadId, "ptr") */
	static OpenThread(dwDesiredAccess, bInheritHandle, dwThreadId) => DllCall("Kernel32\OpenThread", "uint", dwDesiredAccess, "int", bInheritHandle, "uint", dwThreadId, "ptr")

	/** @example DllCall("Kernel32\OpenWaitableTimer", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpTimerName, "ptr") */
	static OpenWaitableTimer(dwDesiredAccess, bInheritHandle, lpTimerName) => DllCall("Kernel32\OpenWaitableTimer", "uint", dwDesiredAccess, "int", bInheritHandle, "str", lpTimerName, "ptr")

	/** @example DllCall("Kernel32\OutputDebugString", "str", lpOutputString, "int") */
	static OutputDebugString(lpOutputString) => DllCall("Kernel32\OutputDebugString", "str", lpOutputString, "int")

	/** @example DllCall("Kernel32\PeekConsoleInput", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nLength, "ptr", lpNumberOfEventsRead, "int") */
	static PeekConsoleInput(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead) => DllCall("Kernel32\PeekConsoleInput", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nLength, "ptr", lpNumberOfEventsRead, "int")

	/** @example DllCall("Kernel32\PeekNamedPipe", "ptr", hNamedPipe, "ptr", lpBuffer, "uint", nBufferSize, "ptr", lpBytesRead, "ptr", lpTotalBytesAvail, "ptr", lpBytesLeftThisMessage, "int") */
	static PeekNamedPipe(hNamedPipe, lpBuffer, nBufferSize, lpBytesRead, lpTotalBytesAvail, lpBytesLeftThisMessage) => DllCall("Kernel32\PeekNamedPipe", "ptr", hNamedPipe, "ptr", lpBuffer, "uint", nBufferSize, "ptr", lpBytesRead, "ptr", lpTotalBytesAvail, "ptr", lpBytesLeftThisMessage, "int")

	/** @example DllCall("Kernel32\PostQueuedCompletionStatus", "ptr", CompletionPort, "uint", dwNumberOfBytesTransferred, "uptr", dwCompletionKey, "ptr", lpOverlapped, "int") */
	static PostQueuedCompletionStatus(CompletionPort, dwNumberOfBytesTransferred, dwCompletionKey, lpOverlapped) => DllCall("Kernel32\PostQueuedCompletionStatus", "ptr", CompletionPort, "uint", dwNumberOfBytesTransferred, "uptr", dwCompletionKey, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\PowerClearRequest", "ptr", PowerRequest, "int", RequestType, "int") */
	static PowerClearRequest(PowerRequest, RequestType) => DllCall("Kernel32\PowerClearRequest", "ptr", PowerRequest, "int", RequestType, "int")

	/** @example DllCall("Kernel32\PowerCreateRequest", "ptr", Context, "ptr") */
	static PowerCreateRequest(Context) => DllCall("Kernel32\PowerCreateRequest", "ptr", Context, "ptr")

	/** @example DllCall("Kernel32\PowerSetRequest", "ptr", PowerRequest, "int", RequestType, "int") */
	static PowerSetRequest(PowerRequest, RequestType) => DllCall("Kernel32\PowerSetRequest", "ptr", PowerRequest, "int", RequestType, "int")

	/** @example DllCall("Kernel32\PrepareTape", "ptr", hDevice, "uint", dwOperation, "int", bImmediate, "uint") */
	static PrepareTape(hDevice, dwOperation, bImmediate) => DllCall("Kernel32\PrepareTape", "ptr", hDevice, "uint", dwOperation, "int", bImmediate, "uint")

	/** @example DllCall("Kernel32\Process32First", "ptr", hSnapshot, "ptr", lppe, "int") */
	static Process32First(hSnapshot, lppe) => DllCall("Kernel32\Process32First", "ptr", hSnapshot, "ptr", lppe, "int")

	/** @example DllCall("Kernel32\Process32Next", "ptr", hSnapshot, "ptr", lppe, "int") */
	static Process32Next(hSnapshot, lppe) => DllCall("Kernel32\Process32Next", "ptr", hSnapshot, "ptr", lppe, "int")

	/** @example DllCall("Kernel32\ProcessIdToSessionId", "uint", dwProcessId, "uint*", &pSessionId, "int") */
	static ProcessIdToSessionId(dwProcessId, &pSessionId) => DllCall("Kernel32\ProcessIdToSessionId", "uint", dwProcessId, "uint*", &pSessionId, "int")

	/** @example DllCall("Kernel32\PulseEvent", "ptr", hEvent, "int") */
	static PulseEvent(hEvent) => DllCall("Kernel32\PulseEvent", "ptr", hEvent, "int")

	/** @example DllCall("Kernel32\PurgeComm", "ptr", hFile, "uint", dwFlags, "int") */
	static PurgeComm(hFile, dwFlags) => DllCall("Kernel32\PurgeComm", "ptr", hFile, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\QueryActCtxSettingsW", "uint", dwFlags, "ptr", hActCtx, "wstr", settingsNameSpace, "wstr", settingName, "ptr", pvBuffer, "uptr", dwBuffer, "ptr", pdwWrittenOrRequired, "int") */
	static QueryActCtxSettingsW(dwFlags, hActCtx, settingsNameSpace, settingName, pvBuffer, dwBuffer, pdwWrittenOrRequired) => DllCall("Kernel32\QueryActCtxSettingsW", "uint", dwFlags, "ptr", hActCtx, "wstr", settingsNameSpace, "wstr", settingName, "ptr", pvBuffer, "uptr", dwBuffer, "ptr", pdwWrittenOrRequired, "int")

	/** @example DllCall("Kernel32\QueryActCtxW", "uint", dwFlags, "ptr", hActCtx, "ptr", pvSubInstance, "uint", ulInfoClass, "ptr", pvBuffer, "uptr", cbBuffer, "ptr", pcbWrittenOrRequired, "int") */
	static QueryActCtxW(dwFlags, hActCtx, pvSubInstance, ulInfoClass, pvBuffer, cbBuffer, pcbWrittenOrRequired) => DllCall("Kernel32\QueryActCtxW", "uint", dwFlags, "ptr", hActCtx, "ptr", pvSubInstance, "uint", ulInfoClass, "ptr", pvBuffer, "uptr", cbBuffer, "ptr", pcbWrittenOrRequired, "int")

	/** @example DllCall("Kernel32\QueryDepthSList", "ptr", ListHead, "ushort") */
	static QueryDepthSList(ListHead) => DllCall("Kernel32\QueryDepthSList", "ptr", ListHead, "ushort")

	/** @example DllCall("Kernel32\QueryDosDevice", "str", lpDeviceName, "str", lpTargetPath, "uint", ucchMax, "uint") */
	static QueryDosDevice(lpDeviceName, lpTargetPath, ucchMax) => DllCall("Kernel32\QueryDosDevice", "str", lpDeviceName, "str", lpTargetPath, "uint", ucchMax, "uint")

	/** @example DllCall("Kernel32\QueryFullProcessImageName", "ptr", hProcess, "uint", dwFlags, "str", lpExeName, "ptr", lpdwSize, "int") */
	static QueryFullProcessImageName(hProcess, dwFlags, lpExeName, lpdwSize) => DllCall("Kernel32\QueryFullProcessImageName", "ptr", hProcess, "uint", dwFlags, "str", lpExeName, "ptr", lpdwSize, "int")

	/** @example DllCall("Kernel32\QueryIdleProcessorCycleTime", "ptr", BufferLength, "ptr", ProcessorIdleCycleTime, "int") */
	static QueryIdleProcessorCycleTime(BufferLength, ProcessorIdleCycleTime) => DllCall("Kernel32\QueryIdleProcessorCycleTime", "ptr", BufferLength, "ptr", ProcessorIdleCycleTime, "int")

	/** @example DllCall("Kernel32\QueryIdleProcessorCycleTimeEx", "ushort", Group, "ptr", BufferLength, "ptr", ProcessorIdleCycleTime, "int") */
	static QueryIdleProcessorCycleTimeEx(Group, BufferLength, ProcessorIdleCycleTime) => DllCall("Kernel32\QueryIdleProcessorCycleTimeEx", "ushort", Group, "ptr", BufferLength, "ptr", ProcessorIdleCycleTime, "int")

	/** @example DllCall("Kernel32\QueryInformationJobObject", "ptr", hJob, "uint", JobObjectInfoClass, "ptr", lpJobObjectInfo, "uint", cbJobObjectInfoLength, "ptr", lpReturnLength, "int") */
	static QueryInformationJobObject(hJob, JobObjectInfoClass, lpJobObjectInfo, cbJobObjectInfoLength, lpReturnLength) => DllCall("Kernel32\QueryInformationJobObject", "ptr", hJob, "uint", JobObjectInfoClass, "ptr", lpJobObjectInfo, "uint", cbJobObjectInfoLength, "ptr", lpReturnLength, "int")

	/** @example DllCall("Kernel32\QueryMemoryResourceNotification", "ptr", ResourceNotificationHandle, "ptr", ResourceState, "int") */
	static QueryMemoryResourceNotification(ResourceNotificationHandle, ResourceState) => DllCall("Kernel32\QueryMemoryResourceNotification", "ptr", ResourceNotificationHandle, "ptr", ResourceState, "int")

	/** @example DllCall("Kernel32\QueryPerformanceCounter", "ptr", lpPerformanceCount, "int") */
	static QueryPerformanceCounter(lpPerformanceCount) => DllCall("Kernel32\QueryPerformanceCounter", "ptr", lpPerformanceCount, "int")

	/** @example DllCall("Kernel32\QueryPerformanceFrequency", "ptr", lpFrequency, "int") */
	static QueryPerformanceFrequency(lpFrequency) => DllCall("Kernel32\QueryPerformanceFrequency", "ptr", lpFrequency, "int")

	/** @example DllCall("Kernel32\QueryProcessAffinityUpdateMode", "ptr", ProcessHandle, "uint", lpdwFlags, "int") */
	static QueryProcessAffinityUpdateMode(ProcessHandle, lpdwFlags) => DllCall("Kernel32\QueryProcessAffinityUpdateMode", "ptr", ProcessHandle, "uint", lpdwFlags, "int")

	/** @example DllCall("Kernel32\QueryProcessCycleTime", "ptr", ProcessHandle, "ptr", CycleTime, "int") */
	static QueryProcessCycleTime(ProcessHandle, CycleTime) => DllCall("Kernel32\QueryProcessCycleTime", "ptr", ProcessHandle, "ptr", CycleTime, "int")

	/** @example DllCall("Kernel32\QueryThreadCycleTime", "ptr", ThreadHandle, "ptr", CycleTime, "int") */
	static QueryThreadCycleTime(ThreadHandle, CycleTime) => DllCall("Kernel32\QueryThreadCycleTime", "ptr", ThreadHandle, "ptr", CycleTime, "int")

	/** @example DllCall("Kernel32\QueryThreadProfiling", "ptr", ThreadHandle, "ptr", Enabled, "uint") */
	static QueryThreadProfiling(ThreadHandle, Enabled) => DllCall("Kernel32\QueryThreadProfiling", "ptr", ThreadHandle, "ptr", Enabled, "uint")

	/** @example DllCall("Kernel32\QueryThreadpoolStackInformation", "ptr", ptpp, "ptr", ptpsi, "int") */
	static QueryThreadpoolStackInformation(ptpp, ptpsi) => DllCall("Kernel32\QueryThreadpoolStackInformation", "ptr", ptpp, "ptr", ptpsi, "int")

	/** @example DllCall("Kernel32\QueryUnbiasedInterruptTime", "ptr", UnbiasedTime, "int") */
	static QueryUnbiasedInterruptTime(UnbiasedTime) => DllCall("Kernel32\QueryUnbiasedInterruptTime", "ptr", UnbiasedTime, "int")

	/** @example DllCall("Kernel32\QueueUserAPC", "ptr", pfnAPC, "ptr", hThread, "uptr", dwData, "uint") */
	static QueueUserAPC(pfnAPC, hThread, dwData) => DllCall("Kernel32\QueueUserAPC", "ptr", pfnAPC, "ptr", hThread, "uptr", dwData, "uint")

	/** @example DllCall("Kernel32\QueueUserWorkItem", "ptr", Function, "ptr", Context, "uint", Flags, "int") */
	static QueueUserWorkItem(Function, Context, Flags) => DllCall("Kernel32\QueueUserWorkItem", "ptr", Function, "ptr", Context, "uint", Flags, "int")

	/** @example DllCall("Kernel32\RaiseException", "uint", dwExceptionCode, "uint", dwExceptionFlags, "uint", nNumberOfArguments, "uptr", lpArguments, "int") */
	static RaiseException(dwExceptionCode, dwExceptionFlags, nNumberOfArguments, lpArguments) => DllCall("Kernel32\RaiseException", "uint", dwExceptionCode, "uint", dwExceptionFlags, "uint", nNumberOfArguments, "uptr", lpArguments, "int")

	/** @example DllCall("Kernel32\RaiseFailFastException", "ptr", pExceptionRecord, "ptr", pContextRecord, "uint", dwFlags, "int") */
	static RaiseFailFastException(pExceptionRecord, pContextRecord, dwFlags) => DllCall("Kernel32\RaiseFailFastException", "ptr", pExceptionRecord, "ptr", pContextRecord, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\ReOpenFile", "ptr", hOriginalFile, "uint", dwDesiredAccess, "uint", dwShareMode, "uint", dwFlags, "ptr") */
	static ReOpenFile(hOriginalFile, dwDesiredAccess, dwShareMode, dwFlags) => DllCall("Kernel32\ReOpenFile", "ptr", hOriginalFile, "uint", dwDesiredAccess, "uint", dwShareMode, "uint", dwFlags, "ptr")

	/** @example DllCall("Kernel32\ReadConsole", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nNumberOfCharsToRead, "ptr", lpNumberOfCharsRead, "ptr", pInputControl, "int") */
	static ReadConsole(hConsoleInput, lpBuffer, nNumberOfCharsToRead, lpNumberOfCharsRead, pInputControl) => DllCall("Kernel32\ReadConsole", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nNumberOfCharsToRead, "ptr", lpNumberOfCharsRead, "ptr", pInputControl, "int")

	/** @example DllCall("Kernel32\ReadConsoleInput", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nLength, "ptr", lpNumberOfEventsRead, "int") */
	static ReadConsoleInput(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsRead) => DllCall("Kernel32\ReadConsoleInput", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nLength, "ptr", lpNumberOfEventsRead, "int")

	/** @example DllCall("Kernel32\ReadConsoleOutput", "ptr", hConsoleOutput, "ptr", lpBuffer, "uint", dwBufferSize, "uint", dwBufferCoord, "ptr", lpReadRegion, "int") */
	static ReadConsoleOutput(hConsoleOutput, lpBuffer, dwBufferSize, dwBufferCoord, lpReadRegion) => DllCall("Kernel32\ReadConsoleOutput", "ptr", hConsoleOutput, "ptr", lpBuffer, "uint", dwBufferSize, "uint", dwBufferCoord, "ptr", lpReadRegion, "int")

	/** @example DllCall("Kernel32\ReadConsoleOutputAttribute", "ptr", hConsoleOutput, "ptr", lpAttribute, "uint", nLength, "uint", dwReadCoord, "ptr", lpNumberOfAttrsRead, "int") */
	static ReadConsoleOutputAttribute(hConsoleOutput, lpAttribute, nLength, dwReadCoord, lpNumberOfAttrsRead) => DllCall("Kernel32\ReadConsoleOutputAttribute", "ptr", hConsoleOutput, "ptr", lpAttribute, "uint", nLength, "uint", dwReadCoord, "ptr", lpNumberOfAttrsRead, "int")

	/** @example DllCall("Kernel32\ReadConsoleOutputCharacter", "ptr", hConsoleOutput, "str", lpCharacter, "uint", nLength, "uint", dwReadCoord, "ptr", lpNumberOfCharsRead, "int") */
	static ReadConsoleOutputCharacter(hConsoleOutput, lpCharacter, nLength, dwReadCoord, lpNumberOfCharsRead) => DllCall("Kernel32\ReadConsoleOutputCharacter", "ptr", hConsoleOutput, "str", lpCharacter, "uint", nLength, "uint", dwReadCoord, "ptr", lpNumberOfCharsRead, "int")

	/** @example DllCall("Kernel32\ReadDirectoryChangesW", "ptr", hDirectory, "ptr", lpBuffer, "uint", nBufferLength, "int", bWatchSubtree, "uint", dwNotifyFilter, "ptr", lpBytesReturned, "ptr", lpOverlapped, "ptr", lpCompletionRoutine, "int") */
	static ReadDirectoryChangesW(hDirectory, lpBuffer, nBufferLength, bWatchSubtree, dwNotifyFilter, lpBytesReturned, lpOverlapped, lpCompletionRoutine) => DllCall("Kernel32\ReadDirectoryChangesW", "ptr", hDirectory, "ptr", lpBuffer, "uint", nBufferLength, "int", bWatchSubtree, "uint", dwNotifyFilter, "ptr", lpBytesReturned, "ptr", lpOverlapped, "ptr", lpCompletionRoutine, "int")

	/** @example DllCall("Kernel32\ReadFile", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToRead, "ptr", lpNumberOfBytesRead, "ptr", lpOverlapped, "int") */
	static ReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped) => DllCall("Kernel32\ReadFile", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToRead, "ptr", lpNumberOfBytesRead, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\ReadFileEx", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToRead, "ptr", lpOverlapped, "ptr", lpCompletionRoutine, "int") */
	static ReadFileEx(hFile, lpBuffer, nNumberOfBytesToRead, lpOverlapped, lpCompletionRoutine) => DllCall("Kernel32\ReadFileEx", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToRead, "ptr", lpOverlapped, "ptr", lpCompletionRoutine, "int")

	/** @example DllCall("Kernel32\ReadFileScatter", "ptr", hFile, "ptr", aSegmentArray, "uint", nNumberOfBytesToRead, "ptr", lpReserved, "ptr", lpOverlapped, "int") */
	static ReadFileScatter(hFile, aSegmentArray, nNumberOfBytesToRead, lpReserved, lpOverlapped) => DllCall("Kernel32\ReadFileScatter", "ptr", hFile, "ptr", aSegmentArray, "uint", nNumberOfBytesToRead, "ptr", lpReserved, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\ReadProcessMemory", "ptr", hProcess, "ptr", lpBaseAddress, "ptr", lpBuffer, "uptr", nSize, "ptr", lpNumberOfBytesRead, "int") */
	static ReadProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesRead) => DllCall("Kernel32\ReadProcessMemory", "ptr", hProcess, "ptr", lpBaseAddress, "ptr", lpBuffer, "uptr", nSize, "ptr", lpNumberOfBytesRead, "int")

	/** @example DllCall("Kernel32\ReadThreadProfilingData", "ptr", PerformanceDataHandle, "uint", Flags, "ptr", PerformanceData, "uint") */
	static ReadThreadProfilingData(PerformanceDataHandle, Flags, PerformanceData) => DllCall("Kernel32\ReadThreadProfilingData", "ptr", PerformanceDataHandle, "uint", Flags, "ptr", PerformanceData, "uint")

	/** @example DllCall("Kernel32\RegisterApplicationRecoveryCallback", "ptr", pRecoveryCallback, "ptr", pvParameter, "uint", dwPingInterval, "uint", dwFlags, "int") */
	static RegisterApplicationRecoveryCallback(pRecoveryCallback, pvParameter, dwPingInterval, dwFlags) => DllCall("Kernel32\RegisterApplicationRecoveryCallback", "ptr", pRecoveryCallback, "ptr", pvParameter, "uint", dwPingInterval, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\RegisterApplicationRestart", "wstr", pwzCommandline, "uint", dwFlags, "int") */
	static RegisterApplicationRestart(pwzCommandline, dwFlags) => DllCall("Kernel32\RegisterApplicationRestart", "wstr", pwzCommandline, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\RegisterWaitForSingleObject", "ptr", phNewWaitObject, "ptr", hObject, "ptr", Callback, "ptr", Context, "uint", dwMilliseconds, "uint", dwFlags, "int") */
	static RegisterWaitForSingleObject(phNewWaitObject, hObject, Callback, Context, dwMilliseconds, dwFlags) => DllCall("Kernel32\RegisterWaitForSingleObject", "ptr", phNewWaitObject, "ptr", hObject, "ptr", Callback, "ptr", Context, "uint", dwMilliseconds, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\RegisterWaitForSingleObjectEx", "ptr", hObject, "ptr", Callback, "ptr", Context, "uint", dwMilliseconds, "uint", dwFlags, "ptr") */
	static RegisterWaitForSingleObjectEx(hObject, Callback, Context, dwMilliseconds, dwFlags) => DllCall("Kernel32\RegisterWaitForSingleObjectEx", "ptr", hObject, "ptr", Callback, "ptr", Context, "uint", dwMilliseconds, "uint", dwFlags, "ptr")

	/** @example DllCall("Kernel32\ReleaseActCtx", "ptr", hActCtx, "int") */
	static ReleaseActCtx(hActCtx) => DllCall("Kernel32\ReleaseActCtx", "ptr", hActCtx, "int")

	/** @example DllCall("Kernel32\ReleaseMutex", "ptr", hMutex, "int") */
	static ReleaseMutex(hMutex) => DllCall("Kernel32\ReleaseMutex", "ptr", hMutex, "int")

	/** @example DllCall("Kernel32\ReleaseMutexWhenCallbackReturns", "ptr", pci, "ptr", mut, "int") */
	static ReleaseMutexWhenCallbackReturns(pci, mut) => DllCall("Kernel32\ReleaseMutexWhenCallbackReturns", "ptr", pci, "ptr", mut, "int")

	/** @example DllCall("Kernel32\ReleaseSRWLockExclusive", "ptr", SRWLock, "int") */
	static ReleaseSRWLockExclusive(SRWLock) => DllCall("Kernel32\ReleaseSRWLockExclusive", "ptr", SRWLock, "int")

	/** @example DllCall("Kernel32\ReleaseSRWLockShared", "ptr", SRWLock, "int") */
	static ReleaseSRWLockShared(SRWLock) => DllCall("Kernel32\ReleaseSRWLockShared", "ptr", SRWLock, "int")

	/** @example DllCall("Kernel32\ReleaseSemaphore", "ptr", hSemaphore, "int", lReleaseCount, "ptr", lpPreviousCount, "int") */
	static ReleaseSemaphore(hSemaphore, lReleaseCount, lpPreviousCount) => DllCall("Kernel32\ReleaseSemaphore", "ptr", hSemaphore, "int", lReleaseCount, "ptr", lpPreviousCount, "int")

	/** @example DllCall("Kernel32\ReleaseSemaphoreWhenCallbackReturns", "ptr", pci, "ptr", sem, "uint", crel, "int") */
	static ReleaseSemaphoreWhenCallbackReturns(pci, sem, crel) => DllCall("Kernel32\ReleaseSemaphoreWhenCallbackReturns", "ptr", pci, "ptr", sem, "uint", crel, "int")

	/** @example DllCall("Kernel32\RemoveDirectory", "str", lpPathName, "int") */
	static RemoveDirectory(lpPathName) => DllCall("Kernel32\RemoveDirectory", "str", lpPathName, "int")

	/** @example DllCall("Kernel32\RemoveDirectoryTransacted", "str", lpPathName, "ptr", hTransaction, "int") */
	static RemoveDirectoryTransacted(lpPathName, hTransaction) => DllCall("Kernel32\RemoveDirectoryTransacted", "str", lpPathName, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\RemoveDllDirectory", "ptr", Cookie, "int") */
	static RemoveDllDirectory(Cookie) => DllCall("Kernel32\RemoveDllDirectory", "ptr", Cookie, "int")

	/** @example DllCall("Kernel32\RemoveSecureMemoryCacheCallback", "ptr", pfnCallBack, "int") */
	static RemoveSecureMemoryCacheCallback(pfnCallBack) => DllCall("Kernel32\RemoveSecureMemoryCacheCallback", "ptr", pfnCallBack, "int")

	/** @example DllCall("Kernel32\RemoveVectoredContinueHandler", "ptr", Handler, "uint") */
	static RemoveVectoredContinueHandler(Handler) => DllCall("Kernel32\RemoveVectoredContinueHandler", "ptr", Handler, "uint")

	/** @example DllCall("Kernel32\RemoveVectoredExceptionHandler", "ptr", Handler, "uint") */
	static RemoveVectoredExceptionHandler(Handler) => DllCall("Kernel32\RemoveVectoredExceptionHandler", "ptr", Handler, "uint")

	/** @example DllCall("Kernel32\ReplaceFile", "str", lpReplacedFileName, "str", lpReplacementFileName, "str", lpBackupFileName, "uint", dwReplaceFlags, "ptr", lpExclude, "ptr", lpReserved, "int") */
	static ReplaceFile(lpReplacedFileName, lpReplacementFileName, lpBackupFileName, dwReplaceFlags, lpExclude, lpReserved) => DllCall("Kernel32\ReplaceFile", "str", lpReplacedFileName, "str", lpReplacementFileName, "str", lpBackupFileName, "uint", dwReplaceFlags, "ptr", lpExclude, "ptr", lpReserved, "int")

	/** @example DllCall("Kernel32\RequestDeviceWakeup", "ptr", hDevice, "int") */
	static RequestDeviceWakeup(hDevice) => DllCall("Kernel32\RequestDeviceWakeup", "ptr", hDevice, "int")

	/** @example DllCall("Kernel32\RequestWakeupLatency", "int", latency, "int") */
	static RequestWakeupLatency(latency) => DllCall("Kernel32\RequestWakeupLatency", "int", latency, "int")

	/** @example DllCall("Kernel32\ResetEvent", "ptr", hEvent, "int") */
	static ResetEvent(hEvent) => DllCall("Kernel32\ResetEvent", "ptr", hEvent, "int")

	/** @example DllCall("Kernel32\ResetWriteWatch", "ptr", lpBaseAddress, "uptr", dwRegionSize, "uint") */
	static ResetWriteWatch(lpBaseAddress, dwRegionSize) => DllCall("Kernel32\ResetWriteWatch", "ptr", lpBaseAddress, "uptr", dwRegionSize, "uint")

	/** @example DllCall("Kernel32\ResolveLocaleName", "wstr", lpNameToResolve, "wstr", lpLocaleName, "int", cchLocaleName, "int") */
	static ResolveLocaleName(lpNameToResolve, lpLocaleName, cchLocaleName) => DllCall("Kernel32\ResolveLocaleName", "wstr", lpNameToResolve, "wstr", lpLocaleName, "int", cchLocaleName, "int")

	/** @example DllCall("Kernel32\RestoreLastError", "uint", dwErrCode, "int") */
	static RestoreLastError(dwErrCode) => DllCall("Kernel32\RestoreLastError", "uint", dwErrCode, "int")

	/** @example DllCall("Kernel32\ResumeThread", "ptr", hThread, "uint") */
	static ResumeThread(hThread) => DllCall("Kernel32\ResumeThread", "ptr", hThread, "uint")

	/** @example DllCall("Kernel32\RtlCaptureContext", "ptr", ContextRecord, "int") */
	static RtlCaptureContext(ContextRecord) => DllCall("Kernel32\RtlCaptureContext", "ptr", ContextRecord, "int")

	/** @example DllCall("Kernel32\RtlFillMemory", "ptr", Destination, "uptr", Length, "uchar", Fill, "int") */
	static RtlFillMemory(Destination, Length, Fill) => DllCall("Kernel32\RtlFillMemory", "ptr", Destination, "uptr", Length, "uchar", Fill, "int")

	/** @example DllCall("Kernel32\RtlIsValidLocaleName", "wstr", LocaleName, "uint", Flags, "int") */
	static RtlIsValidLocaleName(LocaleName, Flags) => DllCall("Kernel32\RtlIsValidLocaleName", "wstr", LocaleName, "uint", Flags, "int")

	/** @example DllCall("Kernel32\RtlMoveMemory", "ptr", Destination, "ptr", Source, "uptr", Length, "int") */
	static RtlMoveMemory(Destination, Source, Length) => DllCall("Kernel32\RtlMoveMemory", "ptr", Destination, "ptr", Source, "uptr", Length, "int")

	/** @example DllCall("Kernel32\RtlPcToFileHeader", "ptr", PcValue, "ptr", BaseOfImage, "ptr") */
	static RtlPcToFileHeader(PcValue, BaseOfImage) => DllCall("Kernel32\RtlPcToFileHeader", "ptr", PcValue, "ptr", BaseOfImage, "ptr")

	/** @example DllCall("Kernel32\RtlUnwind", "ptr", TargetFrame, "ptr", TargetIp, "ptr", ExceptionRecord, "ptr", ReturnValue, "int") */
	static RtlUnwind(TargetFrame, TargetIp, ExceptionRecord, ReturnValue) => DllCall("Kernel32\RtlUnwind", "ptr", TargetFrame, "ptr", TargetIp, "ptr", ExceptionRecord, "ptr", ReturnValue, "int")

	/** @example DllCall("Kernel32\RtlZeroMemory", "ptr", Destination, "uptr", Length, "int") */
	static RtlZeroMemory(Destination, Length) => DllCall("Kernel32\RtlZeroMemory", "ptr", Destination, "uptr", Length, "int")

	/** @example DllCall("Kernel32\ScrollConsoleScreenBuffer", "ptr", hConsoleOutput, "ptr", lpScrollRectangle, "ptr", lpClipRectangle, "uint", dwDestinationOrigin, "ptr", lpFill, "int") */
	static ScrollConsoleScreenBuffer(hConsoleOutput, lpScrollRectangle, lpClipRectangle, dwDestinationOrigin, lpFill) => DllCall("Kernel32\ScrollConsoleScreenBuffer", "ptr", hConsoleOutput, "ptr", lpScrollRectangle, "ptr", lpClipRectangle, "uint", dwDestinationOrigin, "ptr", lpFill, "int")

	/** @example DllCall("Kernel32\SearchPath", "str", lpPath, "str", lpFileName, "str", lpExtension, "uint", nBufferLength, "str", lpBuffer, "ptr", lpFilePart, "uint") */
	static SearchPath(lpPath, lpFileName, lpExtension, nBufferLength, lpBuffer, lpFilePart) => DllCall("Kernel32\SearchPath", "str", lpPath, "str", lpFileName, "str", lpExtension, "uint", nBufferLength, "str", lpBuffer, "ptr", lpFilePart, "uint")

	/** @example DllCall("Kernel32\SetCalendarInfo", "uint", Locale, "uint", Calendar, "uint", CalType, "str", lpCalData, "int") */
	static SetCalendarInfo(Locale, Calendar, CalType, lpCalData) => DllCall("Kernel32\SetCalendarInfo", "uint", Locale, "uint", Calendar, "uint", CalType, "str", lpCalData, "int")

	/** @example DllCall("Kernel32\SetCommBreak", "ptr", hFile, "int") */
	static SetCommBreak(hFile) => DllCall("Kernel32\SetCommBreak", "ptr", hFile, "int")

	/** @example DllCall("Kernel32\SetCommConfig", "ptr", hCommDev, "ptr", lpCC, "uint", dwSize, "int") */
	static SetCommConfig(hCommDev, lpCC, dwSize) => DllCall("Kernel32\SetCommConfig", "ptr", hCommDev, "ptr", lpCC, "uint", dwSize, "int")

	/** @example DllCall("Kernel32\SetCommMask", "ptr", hFile, "uint", dwEvtMask, "int") */
	static SetCommMask(hFile, dwEvtMask) => DllCall("Kernel32\SetCommMask", "ptr", hFile, "uint", dwEvtMask, "int")

	/** @example DllCall("Kernel32\SetCommState", "ptr", hFile, "ptr", lpDCB, "int") */
	static SetCommState(hFile, lpDCB) => DllCall("Kernel32\SetCommState", "ptr", hFile, "ptr", lpDCB, "int")

	/** @example DllCall("Kernel32\SetCommTimeouts", "ptr", hFile, "ptr", lpCommTimeouts, "int") */
	static SetCommTimeouts(hFile, lpCommTimeouts) => DllCall("Kernel32\SetCommTimeouts", "ptr", hFile, "ptr", lpCommTimeouts, "int")

	/** @example DllCall("Kernel32\SetComputerName", "str", lpComputerName, "int") */
	static SetComputerName(lpComputerName) => DllCall("Kernel32\SetComputerName", "str", lpComputerName, "int")

	/** @example DllCall("Kernel32\SetComputerNameEx", "uint", NameType, "str", lpBuffer, "int") */
	static SetComputerNameEx(NameType, lpBuffer) => DllCall("Kernel32\SetComputerNameEx", "uint", NameType, "str", lpBuffer, "int")

	/** @example DllCall("Kernel32\SetConsoleActiveScreenBuffer", "ptr", hConsoleOutput, "int") */
	static SetConsoleActiveScreenBuffer(hConsoleOutput) => DllCall("Kernel32\SetConsoleActiveScreenBuffer", "ptr", hConsoleOutput, "int")

	/** @example DllCall("Kernel32\SetConsoleCP", "uint", wCodePageID, "int") */
	static SetConsoleCP(wCodePageID) => DllCall("Kernel32\SetConsoleCP", "uint", wCodePageID, "int")

	/** @example DllCall("Kernel32\SetConsoleCtrlHandler", "ptr", HandlerRoutine, "int", Add, "int") */
	static SetConsoleCtrlHandler(HandlerRoutine, Add) => DllCall("Kernel32\SetConsoleCtrlHandler", "ptr", HandlerRoutine, "int", Add, "int")

	/** @example DllCall("Kernel32\SetConsoleCursorInfo", "ptr", hConsoleOutput, "ptr", lpConsoleCursorInfo, "int") */
	static SetConsoleCursorInfo(hConsoleOutput, lpConsoleCursorInfo) => DllCall("Kernel32\SetConsoleCursorInfo", "ptr", hConsoleOutput, "ptr", lpConsoleCursorInfo, "int")

	/** @example DllCall("Kernel32\SetConsoleCursorPosition", "ptr", hConsoleOutput, "uint", dwCursorPosition, "int") */
	static SetConsoleCursorPosition(hConsoleOutput, dwCursorPosition) => DllCall("Kernel32\SetConsoleCursorPosition", "ptr", hConsoleOutput, "uint", dwCursorPosition, "int")

	/** @example DllCall("Kernel32\SetConsoleDisplayMode", "ptr", hConsoleOutput, "uint", dwFlags, "ptr", lpNewScreenBufferDimensions, "int") */
	static SetConsoleDisplayMode(hConsoleOutput, dwFlags, lpNewScreenBufferDimensions) => DllCall("Kernel32\SetConsoleDisplayMode", "ptr", hConsoleOutput, "uint", dwFlags, "ptr", lpNewScreenBufferDimensions, "int")

	/** @example DllCall("Kernel32\SetConsoleHistoryInfo", "ptr", lpConsoleHistoryInfo, "int") */
	static SetConsoleHistoryInfo(lpConsoleHistoryInfo) => DllCall("Kernel32\SetConsoleHistoryInfo", "ptr", lpConsoleHistoryInfo, "int")

	/** @example DllCall("Kernel32\SetConsoleMode", "ptr", hConsoleHandle, "uint", dwMode, "int") */
	static SetConsoleMode(hConsoleHandle, dwMode) => DllCall("Kernel32\SetConsoleMode", "ptr", hConsoleHandle, "uint", dwMode, "int")

	/** @example DllCall("Kernel32\SetConsoleOutputCP", "uint", wCodePageID, "int") */
	static SetConsoleOutputCP(wCodePageID) => DllCall("Kernel32\SetConsoleOutputCP", "uint", wCodePageID, "int")

	/** @example DllCall("Kernel32\SetConsoleScreenBufferInfoEx", "ptr", hConsoleOutput, "ptr", lpConsoleScreenBufferInfoEx, "int") */
	static SetConsoleScreenBufferInfoEx(hConsoleOutput, lpConsoleScreenBufferInfoEx) => DllCall("Kernel32\SetConsoleScreenBufferInfoEx", "ptr", hConsoleOutput, "ptr", lpConsoleScreenBufferInfoEx, "int")

	/** @example DllCall("Kernel32\SetConsoleScreenBufferSize", "ptr", hConsoleOutput, "uint", dwSize, "int") */
	static SetConsoleScreenBufferSize(hConsoleOutput, dwSize) => DllCall("Kernel32\SetConsoleScreenBufferSize", "ptr", hConsoleOutput, "uint", dwSize, "int")

	/** @example DllCall("Kernel32\SetConsoleTextAttribute", "ptr", hConsoleOutput, "ushort", wAttributes, "int") */
	static SetConsoleTextAttribute(hConsoleOutput, wAttributes) => DllCall("Kernel32\SetConsoleTextAttribute", "ptr", hConsoleOutput, "ushort", wAttributes, "int")

	/** @example DllCall("Kernel32\SetConsoleTitle", "str", lpConsoleTitle, "int") */
	static SetConsoleTitle(lpConsoleTitle) => DllCall("Kernel32\SetConsoleTitle", "str", lpConsoleTitle, "int")

	/** @example DllCall("Kernel32\SetConsoleWindowInfo", "ptr", hConsoleOutput, "int", bAbsolute, "ptr", lpConsoleWindow, "int") */
	static SetConsoleWindowInfo(hConsoleOutput, bAbsolute, lpConsoleWindow) => DllCall("Kernel32\SetConsoleWindowInfo", "ptr", hConsoleOutput, "int", bAbsolute, "ptr", lpConsoleWindow, "int")

	/** @example DllCall("Kernel32\SetCriticalSectionSpinCount", "ptr", lpCriticalSection, "uint", dwSpinCount, "uint") */
	static SetCriticalSectionSpinCount(lpCriticalSection, dwSpinCount) => DllCall("Kernel32\SetCriticalSectionSpinCount", "ptr", lpCriticalSection, "uint", dwSpinCount, "uint")

	/** @example DllCall("Kernel32\SetCurrentConsoleFontEx", "ptr", hConsoleOutput, "int", bMaximumWindow, "ptr", lpConsoleCurrentFontEx, "int") */
	static SetCurrentConsoleFontEx(hConsoleOutput, bMaximumWindow, lpConsoleCurrentFontEx) => DllCall("Kernel32\SetCurrentConsoleFontEx", "ptr", hConsoleOutput, "int", bMaximumWindow, "ptr", lpConsoleCurrentFontEx, "int")

	/** @example DllCall("Kernel32\SetCurrentDirectory", "str", lpPathName, "int") */
	static SetCurrentDirectory(lpPathName) => DllCall("Kernel32\SetCurrentDirectory", "str", lpPathName, "int")

	/** @example DllCall("Kernel32\SetDefaultCommConfig", "str", lpszName, "ptr", lpCC, "uint", dwSize, "int") */
	static SetDefaultCommConfig(lpszName, lpCC, dwSize) => DllCall("Kernel32\SetDefaultCommConfig", "str", lpszName, "ptr", lpCC, "uint", dwSize, "int")

	/** @example DllCall("Kernel32\SetDefaultDllDirectories", "uint", DirectoryFlags, "int") */
	static SetDefaultDllDirectories(DirectoryFlags) => DllCall("Kernel32\SetDefaultDllDirectories", "uint", DirectoryFlags, "int")

	/** @example DllCall("Kernel32\SetDllDirectory", "str", lpPathName, "int") */
	static SetDllDirectory(lpPathName) => DllCall("Kernel32\SetDllDirectory", "str", lpPathName, "int")

	/** @example DllCall("Kernel32\SetDynamicTimeZoneInformation", "ptr", lpTimeZoneInformation, "int") */
	static SetDynamicTimeZoneInformation(lpTimeZoneInformation) => DllCall("Kernel32\SetDynamicTimeZoneInformation", "ptr", lpTimeZoneInformation, "int")

	/** @example DllCall("Kernel32\SetEndOfFile", "ptr", hFile, "int") */
	static SetEndOfFile(hFile) => DllCall("Kernel32\SetEndOfFile", "ptr", hFile, "int")

	/** @example DllCall("Kernel32\SetEnvironmentVariable", "str", lpName, "str", lpValue, "int") */
	static SetEnvironmentVariable(lpName, lpValue) => DllCall("Kernel32\SetEnvironmentVariable", "str", lpName, "str", lpValue, "int")

	/** @example DllCall("Kernel32\SetErrorMode", "uint", uMode, "uint") */
	static SetErrorMode(uMode) => DllCall("Kernel32\SetErrorMode", "uint", uMode, "uint")

	/** @example DllCall("Kernel32\SetEvent", "ptr", hEvent, "int") */
	static SetEvent(hEvent) => DllCall("Kernel32\SetEvent", "ptr", hEvent, "int")

	/** @example DllCall("Kernel32\SetEventWhenCallbackReturns", "ptr", pci, "ptr", evt, "int") */
	static SetEventWhenCallbackReturns(pci, evt) => DllCall("Kernel32\SetEventWhenCallbackReturns", "ptr", pci, "ptr", evt, "int")

	/** @example DllCall("Kernel32\SetFileApisToANSI", "int") */
	static SetFileApisToANSI() => DllCall("Kernel32\SetFileApisToANSI", "int")

	/** @example DllCall("Kernel32\SetFileApisToOEM", "int") */
	static SetFileApisToOEM() => DllCall("Kernel32\SetFileApisToOEM", "int")

	/** @example DllCall("Kernel32\SetFileAttributes", "str", lpFileName, "uint", dwFileAttributes, "int") */
	static SetFileAttributes(lpFileName, dwFileAttributes) => DllCall("Kernel32\SetFileAttributes", "str", lpFileName, "uint", dwFileAttributes, "int")

	/** @example DllCall("Kernel32\SetFileAttributesTransacted", "str", lpFileName, "uint", dwFileAttributes, "ptr", hTransaction, "int") */
	static SetFileAttributesTransacted(lpFileName, dwFileAttributes, hTransaction) => DllCall("Kernel32\SetFileAttributesTransacted", "str", lpFileName, "uint", dwFileAttributes, "ptr", hTransaction, "int")

	/** @example DllCall("Kernel32\SetFileBandwidthReservation", "ptr", hFile, "uint", nPeriodMilliseconds, "uint", nBytesPerPeriod, "int", bDiscardable, "ptr", lpTransferSize, "ptr", lpNumOutstandingRequests, "int") */
	static SetFileBandwidthReservation(hFile, nPeriodMilliseconds, nBytesPerPeriod, bDiscardable, lpTransferSize, lpNumOutstandingRequests) => DllCall("Kernel32\SetFileBandwidthReservation", "ptr", hFile, "uint", nPeriodMilliseconds, "uint", nBytesPerPeriod, "int", bDiscardable, "ptr", lpTransferSize, "ptr", lpNumOutstandingRequests, "int")

	/** @example DllCall("Kernel32\SetFileCompletionNotificationModes", "ptr", FileHandle, "uchar", Flags, "int") */
	static SetFileCompletionNotificationModes(FileHandle, Flags) => DllCall("Kernel32\SetFileCompletionNotificationModes", "ptr", FileHandle, "uchar", Flags, "int")

	/** @example DllCall("Kernel32\SetFileInformationByHandle", "ptr", hFile, "int", FileInformationClass, "ptr", lpFileInformation, "uint", dwBufferSize, "int") */
	static SetFileInformationByHandle(hFile, FileInformationClass, lpFileInformation, dwBufferSize) => DllCall("Kernel32\SetFileInformationByHandle", "ptr", hFile, "int", FileInformationClass, "ptr", lpFileInformation, "uint", dwBufferSize, "int")

	/** @example DllCall("Kernel32\SetFileIoOverlappedRange", "ptr", FileHandle, "ptr", OverlappedRangeStart, "uint", Length, "int") */
	static SetFileIoOverlappedRange(FileHandle, OverlappedRangeStart, Length) => DllCall("Kernel32\SetFileIoOverlappedRange", "ptr", FileHandle, "ptr", OverlappedRangeStart, "uint", Length, "int")

	/** @example DllCall("Kernel32\SetFilePointer", "ptr", hFile, "int", lDistanceToMove, "ptr", lpDistanceToMoveHigh, "uint", dwMoveMethod, "uint") */
	static SetFilePointer(hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod) => DllCall("Kernel32\SetFilePointer", "ptr", hFile, "int", lDistanceToMove, "ptr", lpDistanceToMoveHigh, "uint", dwMoveMethod, "uint")

	/** @example DllCall("Kernel32\SetFilePointerEx", "ptr", hFile, "int64", liDistanceToMove, "ptr", lpNewFilePointer, "uint", dwMoveMethod, "int") */
	static SetFilePointerEx(hFile, liDistanceToMove, lpNewFilePointer, dwMoveMethod) => DllCall("Kernel32\SetFilePointerEx", "ptr", hFile, "int64", liDistanceToMove, "ptr", lpNewFilePointer, "uint", dwMoveMethod, "int")

	/** @example DllCall("Kernel32\SetFileShortName", "ptr", hFile, "str", lpShortName, "int") */
	static SetFileShortName(hFile, lpShortName) => DllCall("Kernel32\SetFileShortName", "ptr", hFile, "str", lpShortName, "int")

	/** @example DllCall("Kernel32\SetFileTime", "ptr", hFile, "ptr", lpCreationTime, "ptr", lpLastAccessTime, "ptr", lpLastWriteTime, "int") */
	static SetFileTime(hFile, lpCreationTime, lpLastAccessTime, lpLastWriteTime) => DllCall("Kernel32\SetFileTime", "ptr", hFile, "ptr", lpCreationTime, "ptr", lpLastAccessTime, "ptr", lpLastWriteTime, "int")

	/** @example DllCall("Kernel32\SetFileValidData", "ptr", hFile, "int64", ValidDataLength, "int") */
	static SetFileValidData(hFile, ValidDataLength) => DllCall("Kernel32\SetFileValidData", "ptr", hFile, "int64", ValidDataLength, "int")

	/** @example DllCall("Kernel32\SetFirmwareEnvironmentVariable", "str", lpName, "str", lpGuid, "ptr", pBuffer, "uint", nSize, "int") */
	static SetFirmwareEnvironmentVariable(lpName, lpGuid, pBuffer, nSize) => DllCall("Kernel32\SetFirmwareEnvironmentVariable", "str", lpName, "str", lpGuid, "ptr", pBuffer, "uint", nSize, "int")

	/** @example DllCall("Kernel32\SetHandleCount", "uint", uNumber, "uint") */
	static SetHandleCount(uNumber) => DllCall("Kernel32\SetHandleCount", "uint", uNumber, "uint")

	/** @example DllCall("Kernel32\SetHandleInformation", "ptr", hObject, "uint", dwMask, "uint", dwFlags, "int") */
	static SetHandleInformation(hObject, dwMask, dwFlags) => DllCall("Kernel32\SetHandleInformation", "ptr", hObject, "uint", dwMask, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\SetInformationJobObject", "ptr", hJob, "uint", JobObjectInfoClass, "ptr", lpJobObjectInfo, "uint", cbJobObjectInfoLength, "int") */
	static SetInformationJobObject(hJob, JobObjectInfoClass, lpJobObjectInfo, cbJobObjectInfoLength) => DllCall("Kernel32\SetInformationJobObject", "ptr", hJob, "uint", JobObjectInfoClass, "ptr", lpJobObjectInfo, "uint", cbJobObjectInfoLength, "int")

	/** @example DllCall("Kernel32\SetLastError", "uint", dwErrCode, "int") */
	static SetLastError(dwErrCode) => DllCall("Kernel32\SetLastError", "uint", dwErrCode, "int")

	/** @example DllCall("Kernel32\SetLocalTime", "ptr", lpSystemTime, "int") */
	static SetLocalTime(lpSystemTime) => DllCall("Kernel32\SetLocalTime", "ptr", lpSystemTime, "int")

	/** @example DllCall("Kernel32\SetLocaleInfo", "uint", Locale, "uint", LCType, "str", lpLCData, "int") */
	static SetLocaleInfo(Locale, LCType, lpLCData) => DllCall("Kernel32\SetLocaleInfo", "uint", Locale, "uint", LCType, "str", lpLCData, "int")

	/** @example DllCall("Kernel32\SetMailslotInfo", "ptr", hMailslot, "uint", lReadTimeout, "int") */
	static SetMailslotInfo(hMailslot, lReadTimeout) => DllCall("Kernel32\SetMailslotInfo", "ptr", hMailslot, "uint", lReadTimeout, "int")

	/** @example DllCall("Kernel32\SetMessageWaitingIndicator", "ptr", hMsgIndicator, "uint", ulMsgCount, "int") */
	static SetMessageWaitingIndicator(hMsgIndicator, ulMsgCount) => DllCall("Kernel32\SetMessageWaitingIndicator", "ptr", hMsgIndicator, "uint", ulMsgCount, "int")

	/** @example DllCall("Kernel32\SetNamedPipeHandleState", "ptr", hNamedPipe, "ptr", lpMode, "ptr", lpMaxCollectionCount, "ptr", lpCollectDataTimeout, "int") */
	static SetNamedPipeHandleState(hNamedPipe, lpMode, lpMaxCollectionCount, lpCollectDataTimeout) => DllCall("Kernel32\SetNamedPipeHandleState", "ptr", hNamedPipe, "ptr", lpMode, "ptr", lpMaxCollectionCount, "ptr", lpCollectDataTimeout, "int")

	/** @example DllCall("Kernel32\SetPriorityClass", "ptr", hProcess, "uint", dwPriorityClass, "int") */
	static SetPriorityClass(hProcess, dwPriorityClass) => DllCall("Kernel32\SetPriorityClass", "ptr", hProcess, "uint", dwPriorityClass, "int")

	/** @example DllCall("Kernel32\SetProcessAffinityMask", "ptr", hProcess, "uptr", dwProcessAffinityMask, "int") */
	static SetProcessAffinityMask(hProcess, dwProcessAffinityMask) => DllCall("Kernel32\SetProcessAffinityMask", "ptr", hProcess, "uptr", dwProcessAffinityMask, "int")

	/** @example DllCall("Kernel32\SetProcessAffinityUpdateMode", "ptr", ProcessHandle, "uint", dwFlags, "int") */
	static SetProcessAffinityUpdateMode(ProcessHandle, dwFlags) => DllCall("Kernel32\SetProcessAffinityUpdateMode", "ptr", ProcessHandle, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\SetProcessDEPPolicy", "uint", dwFlags, "int") */
	static SetProcessDEPPolicy(dwFlags) => DllCall("Kernel32\SetProcessDEPPolicy", "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\SetProcessPreferredUILanguages", "uint", dwFlags, "wstr", pwszLanguagesBuffer, "ptr", pulNumLanguages, "int") */
	static SetProcessPreferredUILanguages(dwFlags, pwszLanguagesBuffer, pulNumLanguages) => DllCall("Kernel32\SetProcessPreferredUILanguages", "uint", dwFlags, "wstr", pwszLanguagesBuffer, "ptr", pulNumLanguages, "int")

	/** @example DllCall("Kernel32\SetProcessPriorityBoost", "ptr", hProcess, "int", DisablePriorityBoost, "int") */
	static SetProcessPriorityBoost(hProcess, DisablePriorityBoost) => DllCall("Kernel32\SetProcessPriorityBoost", "ptr", hProcess, "int", DisablePriorityBoost, "int")

	/** @example DllCall("Kernel32\SetProcessShutdownParameters", "uint", dwLevel, "uint", dwFlags, "int") */
	static SetProcessShutdownParameters(dwLevel, dwFlags) => DllCall("Kernel32\SetProcessShutdownParameters", "uint", dwLevel, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\SetProcessWorkingSetSize", "ptr", hProcess, "uptr", dwMinimumWorkingSetSize, "uptr", dwMaximumWorkingSetSize, "int") */
	static SetProcessWorkingSetSize(hProcess, dwMinimumWorkingSetSize, dwMaximumWorkingSetSize) => DllCall("Kernel32\SetProcessWorkingSetSize", "ptr", hProcess, "uptr", dwMinimumWorkingSetSize, "uptr", dwMaximumWorkingSetSize, "int")

	/** @example DllCall("Kernel32\SetProcessWorkingSetSizeEx", "ptr", hProcess, "uptr", dwMinimumWorkingSetSize, "uptr", dwMaximumWorkingSetSize, "uint", Flags, "int") */
	static SetProcessWorkingSetSizeEx(hProcess, dwMinimumWorkingSetSize, dwMaximumWorkingSetSize, Flags) => DllCall("Kernel32\SetProcessWorkingSetSizeEx", "ptr", hProcess, "uptr", dwMinimumWorkingSetSize, "uptr", dwMaximumWorkingSetSize, "uint", Flags, "int")

	/** @example DllCall("Kernel32\SetSearchPathMode", "uint", Flags, "int") */
	static SetSearchPathMode(Flags) => DllCall("Kernel32\SetSearchPathMode", "uint", Flags, "int")

	/** @example DllCall("Kernel32\SetStdHandle", "uint", nStdHandle, "ptr", hHandle, "int") */
	static SetStdHandle(nStdHandle, hHandle) => DllCall("Kernel32\SetStdHandle", "uint", nStdHandle, "ptr", hHandle, "int")

	/** @example DllCall("Kernel32\SetSystemFileCacheSize", "uptr", MinimumFileCacheSize, "uptr", MaximumFileCacheSize, "uint", Flags, "int") */
	static SetSystemFileCacheSize(MinimumFileCacheSize, MaximumFileCacheSize, Flags) => DllCall("Kernel32\SetSystemFileCacheSize", "uptr", MinimumFileCacheSize, "uptr", MaximumFileCacheSize, "uint", Flags, "int")

	/** @example DllCall("Kernel32\SetSystemPowerState", "int", fSuspend, "int", fForce, "int") */
	static SetSystemPowerState(fSuspend, fForce) => DllCall("Kernel32\SetSystemPowerState", "int", fSuspend, "int", fForce, "int")

	/** @example DllCall("Kernel32\SetSystemTime", "ptr", lpSystemTime, "int") */
	static SetSystemTime(lpSystemTime) => DllCall("Kernel32\SetSystemTime", "ptr", lpSystemTime, "int")

	/** @example DllCall("Kernel32\SetSystemTimeAdjustment", "uint", dwTimeAdjustment, "int", bTimeAdjustmentDisabled, "int") */
	static SetSystemTimeAdjustment(dwTimeAdjustment, bTimeAdjustmentDisabled) => DllCall("Kernel32\SetSystemTimeAdjustment", "uint", dwTimeAdjustment, "int", bTimeAdjustmentDisabled, "int")

	/** @example DllCall("Kernel32\SetTapeParameters", "ptr", hDevice, "uint", dwOperation, "ptr", lpTapeInformation, "uint") */
	static SetTapeParameters(hDevice, dwOperation, lpTapeInformation) => DllCall("Kernel32\SetTapeParameters", "ptr", hDevice, "uint", dwOperation, "ptr", lpTapeInformation, "uint")

	/** @example DllCall("Kernel32\SetTapePosition", "ptr", hDevice, "uint", dwPositionMethod, "uint", dwPartition, "uint", dwOffsetLow, "uint", dwOffsetHigh, "int", bImmediate, "uint") */
	static SetTapePosition(hDevice, dwPositionMethod, dwPartition, dwOffsetLow, dwOffsetHigh, bImmediate) => DllCall("Kernel32\SetTapePosition", "ptr", hDevice, "uint", dwPositionMethod, "uint", dwPartition, "uint", dwOffsetLow, "uint", dwOffsetHigh, "int", bImmediate, "uint")

	/** @example DllCall("Kernel32\SetThreadAffinityMask", "ptr", hThread, "uptr", dwThreadAffinityMask, "uptr") */
	static SetThreadAffinityMask(hThread, dwThreadAffinityMask) => DllCall("Kernel32\SetThreadAffinityMask", "ptr", hThread, "uptr", dwThreadAffinityMask, "uptr")

	/** @example DllCall("Kernel32\SetThreadContext", "ptr", hThread, "ptr", lpContext, "int") */
	static SetThreadContext(hThread, lpContext) => DllCall("Kernel32\SetThreadContext", "ptr", hThread, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\SetThreadErrorMode", "uint", dwNewMode, "ptr", lpOldMode, "int") */
	static SetThreadErrorMode(dwNewMode, lpOldMode) => DllCall("Kernel32\SetThreadErrorMode", "uint", dwNewMode, "ptr", lpOldMode, "int")

	/** @example DllCall("Kernel32\SetThreadExecutionState", "uint", esFlags, "uint") */
	static SetThreadExecutionState(esFlags) => DllCall("Kernel32\SetThreadExecutionState", "uint", esFlags, "uint")

	/** @example DllCall("Kernel32\SetThreadGroupAffinity", "ptr", hThread, "ptr", GroupAffinity, "ptr", PreviousGroupAffinity, "int") */
	static SetThreadGroupAffinity(hThread, GroupAffinity, PreviousGroupAffinity) => DllCall("Kernel32\SetThreadGroupAffinity", "ptr", hThread, "ptr", GroupAffinity, "ptr", PreviousGroupAffinity, "int")

	/** @example DllCall("Kernel32\SetThreadIdealProcessor", "ptr", hThread, "uint", dwIdealProcessor, "uint") */
	static SetThreadIdealProcessor(hThread, dwIdealProcessor) => DllCall("Kernel32\SetThreadIdealProcessor", "ptr", hThread, "uint", dwIdealProcessor, "uint")

	/** @example DllCall("Kernel32\SetThreadIdealProcessorEx", "ptr", hThread, "ptr", lpIdealProcessor, "ptr", lpPreviousIdealProcessor, "int") */
	static SetThreadIdealProcessorEx(hThread, lpIdealProcessor, lpPreviousIdealProcessor) => DllCall("Kernel32\SetThreadIdealProcessorEx", "ptr", hThread, "ptr", lpIdealProcessor, "ptr", lpPreviousIdealProcessor, "int")

	/** @example DllCall("Kernel32\SetThreadLocale", "uint", Locale, "int") */
	static SetThreadLocale(Locale) => DllCall("Kernel32\SetThreadLocale", "uint", Locale, "int")

	/** @example DllCall("Kernel32\SetThreadPreferredUILanguages", "uint", dwFlags, "wstr", pwszLanguagesBuffer, "ptr", pulNumLanguages, "int") */
	static SetThreadPreferredUILanguages(dwFlags, pwszLanguagesBuffer, pulNumLanguages) => DllCall("Kernel32\SetThreadPreferredUILanguages", "uint", dwFlags, "wstr", pwszLanguagesBuffer, "ptr", pulNumLanguages, "int")

	/** @example DllCall("Kernel32\SetThreadPriority", "ptr", hThread, "int", nPriority, "int") */
	static SetThreadPriority(hThread, nPriority) => DllCall("Kernel32\SetThreadPriority", "ptr", hThread, "int", nPriority, "int")

	/** @example DllCall("Kernel32\SetThreadPriorityBoost", "ptr", hThread, "int", DisablePriorityBoost, "int") */
	static SetThreadPriorityBoost(hThread, DisablePriorityBoost) => DllCall("Kernel32\SetThreadPriorityBoost", "ptr", hThread, "int", DisablePriorityBoost, "int")

	/** @example DllCall("Kernel32\SetThreadStackGuarantee", "ptr", StackSizeInBytes, "int") */
	static SetThreadStackGuarantee(StackSizeInBytes) => DllCall("Kernel32\SetThreadStackGuarantee", "ptr", StackSizeInBytes, "int")

	/** @example DllCall("Kernel32\SetThreadUILanguage", "ushort", LangId, "ushort") */
	static SetThreadUILanguage(LangId) => DllCall("Kernel32\SetThreadUILanguage", "ushort", LangId, "ushort")

	/** @example DllCall("Kernel32\SetThreadpoolStackInformation", "ptr", ptpp, "ptr", ptpsi, "int") */
	static SetThreadpoolStackInformation(ptpp, ptpsi) => DllCall("Kernel32\SetThreadpoolStackInformation", "ptr", ptpp, "ptr", ptpsi, "int")

	/** @example DllCall("Kernel32\SetThreadpoolThreadMaximum", "ptr", ptpp, "uint", cthrdMost, "int") */
	static SetThreadpoolThreadMaximum(ptpp, cthrdMost) => DllCall("Kernel32\SetThreadpoolThreadMaximum", "ptr", ptpp, "uint", cthrdMost, "int")

	/** @example DllCall("Kernel32\SetThreadpoolThreadMinimum", "ptr", ptpp, "uint", cthrdMic, "int") */
	static SetThreadpoolThreadMinimum(ptpp, cthrdMic) => DllCall("Kernel32\SetThreadpoolThreadMinimum", "ptr", ptpp, "uint", cthrdMic, "int")

	/** @example DllCall("Kernel32\SetThreadpoolTimer", "ptr", pti, "ptr", pftDueTime, "uint", msPeriod, "uint", msWindowLength, "int") */
	static SetThreadpoolTimer(pti, pftDueTime, msPeriod, msWindowLength) => DllCall("Kernel32\SetThreadpoolTimer", "ptr", pti, "ptr", pftDueTime, "uint", msPeriod, "uint", msWindowLength, "int")

	/** @example DllCall("Kernel32\SetThreadpoolWait", "ptr", pwa, "ptr", h, "ptr", pftTimeout, "int") */
	static SetThreadpoolWait(pwa, h, pftTimeout) => DllCall("Kernel32\SetThreadpoolWait", "ptr", pwa, "ptr", h, "ptr", pftTimeout, "int")

	/** @example DllCall("Kernel32\SetTimeZoneInformation", "ptr", lpTimeZoneInformation, "int") */
	static SetTimeZoneInformation(lpTimeZoneInformation) => DllCall("Kernel32\SetTimeZoneInformation", "ptr", lpTimeZoneInformation, "int")

	/** @example DllCall("Kernel32\SetTimerQueueTimer", "ptr", TimerQueue, "ptr", Callback, "ptr", Parameter, "uint", DueTime, "uint", Period, "int", PreferIo, "ptr") */
	static SetTimerQueueTimer(TimerQueue, Callback, Parameter, DueTime, Period, PreferIo) => DllCall("Kernel32\SetTimerQueueTimer", "ptr", TimerQueue, "ptr", Callback, "ptr", Parameter, "uint", DueTime, "uint", Period, "int", PreferIo, "ptr")

	/** @example DllCall("Kernel32\SetUnhandledExceptionFilter", "ptr", lpTopLevelExceptionFilter, "ptr") */
	static SetUnhandledExceptionFilter(lpTopLevelExceptionFilter) => DllCall("Kernel32\SetUnhandledExceptionFilter", "ptr", lpTopLevelExceptionFilter, "ptr")

	/** @example DllCall("Kernel32\SetUserGeoID", "uint", GeoId, "int") */
	static SetUserGeoID(GeoId) => DllCall("Kernel32\SetUserGeoID", "uint", GeoId, "int")

	/** @example DllCall("Kernel32\SetVolumeLabel", "str", lpRootPathName, "str", lpVolumeName, "int") */
	static SetVolumeLabel(lpRootPathName, lpVolumeName) => DllCall("Kernel32\SetVolumeLabel", "str", lpRootPathName, "str", lpVolumeName, "int")

	/** @example DllCall("Kernel32\SetVolumeMountPoint", "str", lpszVolumeMountPoint, "str", lpszVolumeName, "int") */
	static SetVolumeMountPoint(lpszVolumeMountPoint, lpszVolumeName) => DllCall("Kernel32\SetVolumeMountPoint", "str", lpszVolumeMountPoint, "str", lpszVolumeName, "int")

	/** @example DllCall("Kernel32\SetWaitableTimer", "ptr", hTimer, "ptr", pDueTime, "int", lPeriod, "ptr", pfnCompletionRoutine, "ptr", lpArgToCompletionRoutine, "int", fResume, "int") */
	static SetWaitableTimer(hTimer, pDueTime, lPeriod, pfnCompletionRoutine, lpArgToCompletionRoutine, fResume) => DllCall("Kernel32\SetWaitableTimer", "ptr", hTimer, "ptr", pDueTime, "int", lPeriod, "ptr", pfnCompletionRoutine, "ptr", lpArgToCompletionRoutine, "int", fResume, "int")

	/** @example DllCall("Kernel32\SetWaitableTimerEx", "ptr", hTimer, "ptr", lpDueTime, "int", lPeriod, "ptr", pfnCompletionRoutine, "ptr", lpArgToCompletionRoutine, "ptr", WakeContext, "uint", TolerableDelay, "int") */
	static SetWaitableTimerEx(hTimer, lpDueTime, lPeriod, pfnCompletionRoutine, lpArgToCompletionRoutine, WakeContext, TolerableDelay) => DllCall("Kernel32\SetWaitableTimerEx", "ptr", hTimer, "ptr", lpDueTime, "int", lPeriod, "ptr", pfnCompletionRoutine, "ptr", lpArgToCompletionRoutine, "ptr", WakeContext, "uint", TolerableDelay, "int")

	/** @example DllCall("Kernel32\SetXStateFeaturesMask", "ptr", Context, "uint64", FeatureMask, "int") */
	static SetXStateFeaturesMask(Context, FeatureMask) => DllCall("Kernel32\SetXStateFeaturesMask", "ptr", Context, "uint64", FeatureMask, "int")

	/** @example DllCall("Kernel32\SetupComm", "ptr", hFile, "uint", dwInQueue, "uint", dwOutQueue, "int") */
	static SetupComm(hFile, dwInQueue, dwOutQueue) => DllCall("Kernel32\SetupComm", "ptr", hFile, "uint", dwInQueue, "uint", dwOutQueue, "int")

	/** @example DllCall("Kernel32\SignalObjectAndWait", "ptr", hObjectToSignal, "ptr", hObjectToWaitOn, "uint", dwMilliseconds, "int", bAlertable, "uint") */
	static SignalObjectAndWait(hObjectToSignal, hObjectToWaitOn, dwMilliseconds, bAlertable) => DllCall("Kernel32\SignalObjectAndWait", "ptr", hObjectToSignal, "ptr", hObjectToWaitOn, "uint", dwMilliseconds, "int", bAlertable, "uint")

	/** @example DllCall("Kernel32\SizeofResource", "ptr", hModule, "ptr", hResInfo, "uint") */
	static SizeofResource(hModule, hResInfo) => DllCall("Kernel32\SizeofResource", "ptr", hModule, "ptr", hResInfo, "uint")

	/** @example DllCall("Kernel32\SleepConditionVariableCS", "ptr", ConditionVariable, "ptr", CriticalSection, "uint", dwMilliseconds, "int") */
	static SleepConditionVariableCS(ConditionVariable, CriticalSection, dwMilliseconds) => DllCall("Kernel32\SleepConditionVariableCS", "ptr", ConditionVariable, "ptr", CriticalSection, "uint", dwMilliseconds, "int")

	/** @example DllCall("Kernel32\SleepConditionVariableSRW", "ptr", ConditionVariable, "ptr", SRWLock, "uint", dwMilliseconds, "uint", Flags, "int") */
	static SleepConditionVariableSRW(ConditionVariable, SRWLock, dwMilliseconds, Flags) => DllCall("Kernel32\SleepConditionVariableSRW", "ptr", ConditionVariable, "ptr", SRWLock, "uint", dwMilliseconds, "uint", Flags, "int")

	/** @example DllCall("Kernel32\SleepEx", "uint", dwMilliseconds, "int", bAlertable, "uint") */
	static SleepEx(dwMilliseconds, bAlertable) => DllCall("Kernel32\SleepEx", "uint", dwMilliseconds, "int", bAlertable, "uint")

	/** @example DllCall("Kernel32\Sleep_", "uint", dwMilliseconds, "int") */
	static Sleep_(dwMilliseconds) => DllCall("Kernel32\Sleep_", "uint", dwMilliseconds, "int")

	/** @example DllCall("Kernel32\StartThreadpoolIo", "ptr", pio, "int") */
	static StartThreadpoolIo(pio) => DllCall("Kernel32\StartThreadpoolIo", "ptr", pio, "int")

	/** @example DllCall("Kernel32\SubmitThreadpoolWork", "ptr", pwk, "int") */
	static SubmitThreadpoolWork(pwk) => DllCall("Kernel32\SubmitThreadpoolWork", "ptr", pwk, "int")

	/** @example DllCall("Kernel32\SuspendThread", "ptr", hThread, "uint") */
	static SuspendThread(hThread) => DllCall("Kernel32\SuspendThread", "ptr", hThread, "uint")

	/** @example DllCall("Kernel32\SwitchToFiber", "ptr", lpFiber, "int") */
	static SwitchToFiber(lpFiber) => DllCall("Kernel32\SwitchToFiber", "ptr", lpFiber, "int")

	/** @example DllCall("Kernel32\SwitchToThread", "int") */
	static SwitchToThread() => DllCall("Kernel32\SwitchToThread", "int")

	/** @example DllCall("Kernel32\SystemTimeToFileTime", "ptr", lpSystemTime, "ptr", lpFileTime, "int") */
	static SystemTimeToFileTime(lpSystemTime, lpFileTime) => DllCall("Kernel32\SystemTimeToFileTime", "ptr", lpSystemTime, "ptr", lpFileTime, "int")

	/** @example DllCall("Kernel32\SystemTimeToTzSpecificLocalTime", "ptr", lpTimeZone, "ptr", lpUniversalTime, "ptr", lpLocalTime, "int") */
	static SystemTimeToTzSpecificLocalTime(lpTimeZone, lpUniversalTime, lpLocalTime) => DllCall("Kernel32\SystemTimeToTzSpecificLocalTime", "ptr", lpTimeZone, "ptr", lpUniversalTime, "ptr", lpLocalTime, "int")

	/** @example DllCall("Kernel32\SystemTimeToTzSpecificLocalTimeEx", "ptr", lpTimeZoneInformation, "ptr", lpUniversalTime, "ptr", lpLocalTime, "int") */
	static SystemTimeToTzSpecificLocalTimeEx(lpTimeZoneInformation, lpUniversalTime, lpLocalTime) => DllCall("Kernel32\SystemTimeToTzSpecificLocalTimeEx", "ptr", lpTimeZoneInformation, "ptr", lpUniversalTime, "ptr", lpLocalTime, "int")

	/** @example DllCall("Kernel32\TerminateJobObject", "ptr", hJob, "uint", uExitCode, "int") */
	static TerminateJobObject(hJob, uExitCode) => DllCall("Kernel32\TerminateJobObject", "ptr", hJob, "uint", uExitCode, "int")

	/** @example DllCall("Kernel32\TerminateProcess", "ptr", hProcess, "uint", uExitCode, "int") */
	static TerminateProcess(hProcess, uExitCode) => DllCall("Kernel32\TerminateProcess", "ptr", hProcess, "uint", uExitCode, "int")

	/** @example DllCall("Kernel32\TerminateThread", "ptr", hThread, "uint", dwExitCode, "int") */
	static TerminateThread(hThread, dwExitCode) => DllCall("Kernel32\TerminateThread", "ptr", hThread, "uint", dwExitCode, "int")

	/** @example DllCall("Kernel32\Thread32First", "ptr", hSnapshot, "ptr", lpte, "int") */
	static Thread32First(hSnapshot, lpte) => DllCall("Kernel32\Thread32First", "ptr", hSnapshot, "ptr", lpte, "int")

	/** @example DllCall("Kernel32\Thread32Next", "ptr", hSnapshot, "ptr", lpte, "int") */
	static Thread32Next(hSnapshot, lpte) => DllCall("Kernel32\Thread32Next", "ptr", hSnapshot, "ptr", lpte, "int")

	/** @example DllCall("Kernel32\TlsAlloc", "uint") */
	static TlsAlloc() => DllCall("Kernel32\TlsAlloc", "uint")

	/** @example DllCall("Kernel32\TlsFree", "uint", dwTlsIndex, "int") */
	static TlsFree(dwTlsIndex) => DllCall("Kernel32\TlsFree", "uint", dwTlsIndex, "int")

	/** @example DllCall("Kernel32\TlsGetValue", "uint", dwTlsIndex, "ptr") */
	static TlsGetValue(dwTlsIndex) => DllCall("Kernel32\TlsGetValue", "uint", dwTlsIndex, "ptr")

	/** @example DllCall("Kernel32\TlsSetValue", "uint", dwTlsIndex, "ptr", lpTlsValue, "int") */
	static TlsSetValue(dwTlsIndex, lpTlsValue) => DllCall("Kernel32\TlsSetValue", "uint", dwTlsIndex, "ptr", lpTlsValue, "int")

	/** @example DllCall("Kernel32\Toolhelp32ReadProcessMemory", "uint", th32ProcessID, "ptr", lpBaseAddress, "ptr", lpBuffer, "uptr", cbRead, "uptr", lpNumberOfBytesRead, "int") */
	static Toolhelp32ReadProcessMemory(th32ProcessID, lpBaseAddress, lpBuffer, cbRead, lpNumberOfBytesRead) => DllCall("Kernel32\Toolhelp32ReadProcessMemory", "uint", th32ProcessID, "ptr", lpBaseAddress, "ptr", lpBuffer, "uptr", cbRead, "uptr", lpNumberOfBytesRead, "int")

	/** @example DllCall("Kernel32\TransactNamedPipe", "ptr", hNamedPipe, "ptr", lpInBuffer, "uint", nInBufferSize, "ptr", lpOutBuffer, "uint", nOutBufferSize, "ptr", lpBytesRead, "ptr", lpOverlapped, "int") */
	static TransactNamedPipe(hNamedPipe, lpInBuffer, nInBufferSize, lpOutBuffer, nOutBufferSize, lpBytesRead, lpOverlapped) => DllCall("Kernel32\TransactNamedPipe", "ptr", hNamedPipe, "ptr", lpInBuffer, "uint", nInBufferSize, "ptr", lpOutBuffer, "uint", nOutBufferSize, "ptr", lpBytesRead, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\TransmitCommChar", "ptr", hFile, "char", cChar, "int") */
	static TransmitCommChar(hFile, cChar) => DllCall("Kernel32\TransmitCommChar", "ptr", hFile, "char", cChar, "int")

	/** @example DllCall("Kernel32\TryAcquireSRWLockExclusive", "ptr", SRWLock, "uchar") */
	static TryAcquireSRWLockExclusive(SRWLock) => DllCall("Kernel32\TryAcquireSRWLockExclusive", "ptr", SRWLock, "uchar")

	/** @example DllCall("Kernel32\TryAcquireSRWLockShared", "ptr", SRWLock, "uchar") */
	static TryAcquireSRWLockShared(SRWLock) => DllCall("Kernel32\TryAcquireSRWLockShared", "ptr", SRWLock, "uchar")

	/** @example DllCall("Kernel32\TryEnterCriticalSection", "ptr", lpCriticalSection, "int") */
	static TryEnterCriticalSection(lpCriticalSection) => DllCall("Kernel32\TryEnterCriticalSection", "ptr", lpCriticalSection, "int")

	/** @example DllCall("Kernel32\TrySubmitThreadpoolCallback", "ptr", pfns, "ptr", pv, "ptr", pcbe, "int") */
	static TrySubmitThreadpoolCallback(pfns, pv, pcbe) => DllCall("Kernel32\TrySubmitThreadpoolCallback", "ptr", pfns, "ptr", pv, "ptr", pcbe, "int")

	/** @example DllCall("Kernel32\TzSpecificLocalTimeToSystemTime", "ptr", lpTimeZoneInformation, "ptr", lpLocalTime, "ptr", lpUniversalTime, "int") */
	static TzSpecificLocalTimeToSystemTime(lpTimeZoneInformation, lpLocalTime, lpUniversalTime) => DllCall("Kernel32\TzSpecificLocalTimeToSystemTime", "ptr", lpTimeZoneInformation, "ptr", lpLocalTime, "ptr", lpUniversalTime, "int")

	/** @example DllCall("Kernel32\TzSpecificLocalTimeToSystemTimeEx", "ptr", lpTimeZoneInformation, "ptr", lpLocalTime, "ptr", lpUniversalTime, "int") */
	static TzSpecificLocalTimeToSystemTimeEx(lpTimeZoneInformation, lpLocalTime, lpUniversalTime) => DllCall("Kernel32\TzSpecificLocalTimeToSystemTimeEx", "ptr", lpTimeZoneInformation, "ptr", lpLocalTime, "ptr", lpUniversalTime, "int")

	/** @example DllCall("Kernel32\UnhandledExceptionFilter", "ptr", ExceptionInfo, "int") */
	static UnhandledExceptionFilter(ExceptionInfo) => DllCall("Kernel32\UnhandledExceptionFilter", "ptr", ExceptionInfo, "int")

	/** @example DllCall("Kernel32\UnlockFile", "ptr", hFile, "uint", dwFileOffsetLow, "uint", dwFileOffsetHigh, "uint", nNumberOfBytesToUnlockLow, "uint", nNumberOfBytesToUnlockHigh, "int") */
	static UnlockFile(hFile, dwFileOffsetLow, dwFileOffsetHigh, nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh) => DllCall("Kernel32\UnlockFile", "ptr", hFile, "uint", dwFileOffsetLow, "uint", dwFileOffsetHigh, "uint", nNumberOfBytesToUnlockLow, "uint", nNumberOfBytesToUnlockHigh, "int")

	/** @example DllCall("Kernel32\UnlockFileEx", "ptr", hFile, "uint", dwReserved, "uint", nNumberOfBytesToUnlockLow, "uint", nNumberOfBytesToUnlockHigh, "ptr", lpOverlapped, "int") */
	static UnlockFileEx(hFile, dwReserved, nNumberOfBytesToUnlockLow, nNumberOfBytesToUnlockHigh, lpOverlapped) => DllCall("Kernel32\UnlockFileEx", "ptr", hFile, "uint", dwReserved, "uint", nNumberOfBytesToUnlockLow, "uint", nNumberOfBytesToUnlockHigh, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\UnmapViewOfFile", "ptr", lpBaseAddress, "int") */
	static UnmapViewOfFile(lpBaseAddress) => DllCall("Kernel32\UnmapViewOfFile", "ptr", lpBaseAddress, "int")

	/** @example DllCall("Kernel32\UnregisterApplicationRecoveryCallback", "int") */
	static UnregisterApplicationRecoveryCallback() => DllCall("Kernel32\UnregisterApplicationRecoveryCallback", "int")

	/** @example DllCall("Kernel32\UnregisterApplicationRestart", "int") */
	static UnregisterApplicationRestart() => DllCall("Kernel32\UnregisterApplicationRestart", "int")

	/** @example DllCall("Kernel32\UnregisterWait", "ptr", WaitHandle, "int") */
	static UnregisterWait(WaitHandle) => DllCall("Kernel32\UnregisterWait", "ptr", WaitHandle, "int")

	/** @example DllCall("Kernel32\UnregisterWaitEx", "ptr", WaitHandle, "ptr", CompletionEvent, "int") */
	static UnregisterWaitEx(WaitHandle, CompletionEvent) => DllCall("Kernel32\UnregisterWaitEx", "ptr", WaitHandle, "ptr", CompletionEvent, "int")

	/** @example DllCall("Kernel32\UpdateCalendarDayOfWeek", "ptr", lpCalDateTime, "int") */
	static UpdateCalendarDayOfWeek(lpCalDateTime) => DllCall("Kernel32\UpdateCalendarDayOfWeek", "ptr", lpCalDateTime, "int")

	/** @example DllCall("Kernel32\UpdateProcThreadAttribute", "ptr", lpAttributeList, "uint", dwFlags, "uptr", Attribute, "ptr", lpValue, "uptr", cbSize, "ptr", lpPreviousValue, "ptr", lpReturnSize, "int") */
	static UpdateProcThreadAttribute(lpAttributeList, dwFlags, Attribute, lpValue, cbSize, lpPreviousValue, lpReturnSize) => DllCall("Kernel32\UpdateProcThreadAttribute", "ptr", lpAttributeList, "uint", dwFlags, "uptr", Attribute, "ptr", lpValue, "uptr", cbSize, "ptr", lpPreviousValue, "ptr", lpReturnSize, "int")

	/** @example DllCall("Kernel32\UpdateResource", "ptr", hUpdate, "str", lpType, "str", lpName, "ushort", wLanguage, "ptr", lpData, "uint", cbData, "int") */
	static UpdateResource(hUpdate, lpType, lpName, wLanguage, lpData, cbData) => DllCall("Kernel32\UpdateResource", "ptr", hUpdate, "str", lpType, "str", lpName, "ushort", wLanguage, "ptr", lpData, "uint", cbData, "int")

	/** @example DllCall("Kernel32\VerLanguageName", "uint", wLang, "str", szLang, "uint", cchLang, "uint") */
	static VerLanguageName(wLang, szLang, cchLang) => DllCall("Kernel32\VerLanguageName", "uint", wLang, "str", szLang, "uint", cchLang, "uint")

	/** @example DllCall("Kernel32\VerSetConditionMask", "uint64", dwlConditionMask, "uint", dwTypeBitMask, "uchar", dwConditionMask, "uint64") */
	static VerSetConditionMask(dwlConditionMask, dwTypeBitMask, dwConditionMask) => DllCall("Kernel32\VerSetConditionMask", "uint64", dwlConditionMask, "uint", dwTypeBitMask, "uchar", dwConditionMask, "uint64")

	/** @example DllCall("Kernel32\VerifyScripts", "uint", dwFlags, "wstr", lpLocaleScripts, "int", cchLocaleScripts, "wstr", lpTestScripts, "int", cchTestScripts, "int") */
	static VerifyScripts(dwFlags, lpLocaleScripts, cchLocaleScripts, lpTestScripts, cchTestScripts) => DllCall("Kernel32\VerifyScripts", "uint", dwFlags, "wstr", lpLocaleScripts, "int", cchLocaleScripts, "wstr", lpTestScripts, "int", cchTestScripts, "int")

	/** @example DllCall("Kernel32\VerifyVersionInfo", "ptr", lpVersionInfo, "uint", dwTypeMask, "uint64", dwlConditionMask, "int") */
	static VerifyVersionInfo(lpVersionInfo, dwTypeMask, dwlConditionMask) => DllCall("Kernel32\VerifyVersionInfo", "ptr", lpVersionInfo, "uint", dwTypeMask, "uint64", dwlConditionMask, "int")

	/** @example DllCall("Kernel32\VirtualAlloc", "ptr", lpAddress, "uptr", dwSize, "uint", flAllocationType, "uint", flProtect, "ptr") */
	static VirtualAlloc(lpAddress, dwSize, flAllocationType, flProtect) => DllCall("Kernel32\VirtualAlloc", "ptr", lpAddress, "uptr", dwSize, "uint", flAllocationType, "uint", flProtect, "ptr")

	/** @example DllCall("Kernel32\VirtualAllocEx", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", flAllocationType, "uint", flProtect, "ptr") */
	static VirtualAllocEx(hProcess, lpAddress, dwSize, flAllocationType, flProtect) => DllCall("Kernel32\VirtualAllocEx", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", flAllocationType, "uint", flProtect, "ptr")

	/** @example DllCall("Kernel32\VirtualAllocExNuma", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", flAllocationType, "uint", flProtect, "uint", nndPreferred, "ptr") */
	static VirtualAllocExNuma(hProcess, lpAddress, dwSize, flAllocationType, flProtect, nndPreferred) => DllCall("Kernel32\VirtualAllocExNuma", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", flAllocationType, "uint", flProtect, "uint", nndPreferred, "ptr")

	/** @example DllCall("Kernel32\VirtualFree", "ptr", lpAddress, "uptr", dwSize, "uint", dwFreeType, "int") */
	static VirtualFree(lpAddress, dwSize, dwFreeType) => DllCall("Kernel32\VirtualFree", "ptr", lpAddress, "uptr", dwSize, "uint", dwFreeType, "int")

	/** @example DllCall("Kernel32\VirtualFreeEx", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", dwFreeType, "int") */
	static VirtualFreeEx(hProcess, lpAddress, dwSize, dwFreeType) => DllCall("Kernel32\VirtualFreeEx", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", dwFreeType, "int")

	/** @example DllCall("Kernel32\VirtualLock", "ptr", lpAddress, "uptr", dwSize, "int") */
	static VirtualLock(lpAddress, dwSize) => DllCall("Kernel32\VirtualLock", "ptr", lpAddress, "uptr", dwSize, "int")

	/** @example DllCall("Kernel32\VirtualProtect", "ptr", lpAddress, "uptr", dwSize, "uint", flNewProtect, "ptr", lpflOldProtect, "int") */
	static VirtualProtect(lpAddress, dwSize, flNewProtect, lpflOldProtect) => DllCall("Kernel32\VirtualProtect", "ptr", lpAddress, "uptr", dwSize, "uint", flNewProtect, "ptr", lpflOldProtect, "int")

	/** @example DllCall("Kernel32\VirtualProtectEx", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", flNewProtect, "ptr", lpflOldProtect, "int") */
	static VirtualProtectEx(hProcess, lpAddress, dwSize, flNewProtect, lpflOldProtect) => DllCall("Kernel32\VirtualProtectEx", "ptr", hProcess, "ptr", lpAddress, "uptr", dwSize, "uint", flNewProtect, "ptr", lpflOldProtect, "int")

	/** @example DllCall("Kernel32\VirtualQuery", "ptr", lpAddress, "ptr", lpBuffer, "uptr", dwLength, "uptr") */
	static VirtualQuery(lpAddress, lpBuffer, dwLength) => DllCall("Kernel32\VirtualQuery", "ptr", lpAddress, "ptr", lpBuffer, "uptr", dwLength, "uptr")

	/** @example DllCall("Kernel32\VirtualQueryEx", "ptr", hProcess, "ptr", lpAddress, "ptr", lpBuffer, "uptr", dwLength, "uptr") */
	static VirtualQueryEx(hProcess, lpAddress, lpBuffer, dwLength) => DllCall("Kernel32\VirtualQueryEx", "ptr", hProcess, "ptr", lpAddress, "ptr", lpBuffer, "uptr", dwLength, "uptr")

	/** @example DllCall("Kernel32\VirtualUnlock", "ptr", lpAddress, "uptr", dwSize, "int") */
	static VirtualUnlock(lpAddress, dwSize) => DllCall("Kernel32\VirtualUnlock", "ptr", lpAddress, "uptr", dwSize, "int")

	/** @example DllCall("Kernel32\WTSGetActiveConsoleSessionId", "uint") */
	static WTSGetActiveConsoleSessionId() => DllCall("Kernel32\WTSGetActiveConsoleSessionId", "uint")

	/** @example DllCall("Kernel32\WaitCommEvent", "ptr", hFile, "ptr", lpEvtMask, "ptr", lpOverlapped, "int") */
	static WaitCommEvent(hFile, lpEvtMask, lpOverlapped) => DllCall("Kernel32\WaitCommEvent", "ptr", hFile, "ptr", lpEvtMask, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\WaitForDebugEvent", "ptr", lpDebugEvent, "uint", dwMilliseconds, "int") */
	static WaitForDebugEvent(lpDebugEvent, dwMilliseconds) => DllCall("Kernel32\WaitForDebugEvent", "ptr", lpDebugEvent, "uint", dwMilliseconds, "int")

	/** @example DllCall("Kernel32\WaitForMultipleObjects", "uint", nCount, "ptr", lpHandles, "int", bWaitAll, "uint", dwMilliseconds, "uint") */
	static WaitForMultipleObjects(nCount, lpHandles, bWaitAll, dwMilliseconds) => DllCall("Kernel32\WaitForMultipleObjects", "uint", nCount, "ptr", lpHandles, "int", bWaitAll, "uint", dwMilliseconds, "uint")

	/** @example DllCall("Kernel32\WaitForMultipleObjectsEx", "uint", nCount, "ptr", lpHandles, "int", bWaitAll, "uint", dwMilliseconds, "int", bAlertable, "uint") */
	static WaitForMultipleObjectsEx(nCount, lpHandles, bWaitAll, dwMilliseconds, bAlertable) => DllCall("Kernel32\WaitForMultipleObjectsEx", "uint", nCount, "ptr", lpHandles, "int", bWaitAll, "uint", dwMilliseconds, "int", bAlertable, "uint")

	/** @example DllCall("Kernel32\WaitForSingleObject", "ptr", hHandle, "uint", dwMilliseconds, "uint") */
	static WaitForSingleObject(hHandle, dwMilliseconds) => DllCall("Kernel32\WaitForSingleObject", "ptr", hHandle, "uint", dwMilliseconds, "uint")

	/** @example DllCall("Kernel32\WaitForSingleObjectEx", "ptr", hHandle, "uint", dwMilliseconds, "int", bAlertable, "uint") */
	static WaitForSingleObjectEx(hHandle, dwMilliseconds, bAlertable) => DllCall("Kernel32\WaitForSingleObjectEx", "ptr", hHandle, "uint", dwMilliseconds, "int", bAlertable, "uint")

	/** @example DllCall("Kernel32\WaitForThreadpoolIoCallbacks", "ptr", pio, "int", fCancelPendingCallbacks, "int") */
	static WaitForThreadpoolIoCallbacks(pio, fCancelPendingCallbacks) => DllCall("Kernel32\WaitForThreadpoolIoCallbacks", "ptr", pio, "int", fCancelPendingCallbacks, "int")

	/** @example DllCall("Kernel32\WaitForThreadpoolTimerCallbacks", "ptr", pti, "int", fCancelPendingCallbacks, "int") */
	static WaitForThreadpoolTimerCallbacks(pti, fCancelPendingCallbacks) => DllCall("Kernel32\WaitForThreadpoolTimerCallbacks", "ptr", pti, "int", fCancelPendingCallbacks, "int")

	/** @example DllCall("Kernel32\WaitForThreadpoolWaitCallbacks", "ptr", pwa, "int", fCancelPendingCallbacks, "int") */
	static WaitForThreadpoolWaitCallbacks(pwa, fCancelPendingCallbacks) => DllCall("Kernel32\WaitForThreadpoolWaitCallbacks", "ptr", pwa, "int", fCancelPendingCallbacks, "int")

	/** @example DllCall("Kernel32\WaitForThreadpoolWorkCallbacks", "ptr", pwk, "int", fCancelPendingCallbacks, "int") */
	static WaitForThreadpoolWorkCallbacks(pwk, fCancelPendingCallbacks) => DllCall("Kernel32\WaitForThreadpoolWorkCallbacks", "ptr", pwk, "int", fCancelPendingCallbacks, "int")

	/** @example DllCall("Kernel32\WaitNamedPipe", "str", lpNamedPipeName, "uint", nTimeOut, "int") */
	static WaitNamedPipe(lpNamedPipeName, nTimeOut) => DllCall("Kernel32\WaitNamedPipe", "str", lpNamedPipeName, "uint", nTimeOut, "int")

	/** @example DllCall("Kernel32\WakeAllConditionVariable", "ptr", ConditionVariable, "int") */
	static WakeAllConditionVariable(ConditionVariable) => DllCall("Kernel32\WakeAllConditionVariable", "ptr", ConditionVariable, "int")

	/** @example DllCall("Kernel32\WakeConditionVariable", "ptr", ConditionVariable, "int") */
	static WakeConditionVariable(ConditionVariable) => DllCall("Kernel32\WakeConditionVariable", "ptr", ConditionVariable, "int")

	/** @example DllCall("Kernel32\WerGetFlags", "ptr", hProcess, "ptr", pdwFlags, "int") */
	static WerGetFlags(hProcess, pdwFlags) => DllCall("Kernel32\WerGetFlags", "ptr", hProcess, "ptr", pdwFlags, "int")

	/** @example DllCall("Kernel32\WerRegisterFile", "wstr", pwzFile, "uint", regFileType, "uint", dwFlags, "int") */
	static WerRegisterFile(pwzFile, regFileType, dwFlags) => DllCall("Kernel32\WerRegisterFile", "wstr", pwzFile, "uint", regFileType, "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\WerRegisterMemoryBlock", "ptr", pvAddress, "uint", dwSize, "int") */
	static WerRegisterMemoryBlock(pvAddress, dwSize) => DllCall("Kernel32\WerRegisterMemoryBlock", "ptr", pvAddress, "uint", dwSize, "int")

	/** @example DllCall("Kernel32\WerRegisterRuntimeExceptionModule", "wstr", pwszOutOfProcessCallbackDll, "ptr", pContext, "int") */
	static WerRegisterRuntimeExceptionModule(pwszOutOfProcessCallbackDll, pContext) => DllCall("Kernel32\WerRegisterRuntimeExceptionModule", "wstr", pwszOutOfProcessCallbackDll, "ptr", pContext, "int")

	/** @example DllCall("Kernel32\WerSetFlags", "uint", dwFlags, "int") */
	static WerSetFlags(dwFlags) => DllCall("Kernel32\WerSetFlags", "uint", dwFlags, "int")

	/** @example DllCall("Kernel32\WerUnregisterFile", "wstr", pwzFilePath, "int") */
	static WerUnregisterFile(pwzFilePath) => DllCall("Kernel32\WerUnregisterFile", "wstr", pwzFilePath, "int")

	/** @example DllCall("Kernel32\WerUnregisterMemoryBlock", "ptr", pvAddress, "int") */
	static WerUnregisterMemoryBlock(pvAddress) => DllCall("Kernel32\WerUnregisterMemoryBlock", "ptr", pvAddress, "int")

	/** @example DllCall("Kernel32\WerUnregisterRuntimeExceptionModule", "wstr", pwszOutOfProcessCallbackDll, "ptr", pContext, "int") */
	static WerUnregisterRuntimeExceptionModule(pwszOutOfProcessCallbackDll, pContext) => DllCall("Kernel32\WerUnregisterRuntimeExceptionModule", "wstr", pwszOutOfProcessCallbackDll, "ptr", pContext, "int")

	/** @example DllCall("Kernel32\WideCharToMultiByte", "uint", CodePage, "uint", dwFlags, "wstr", lpWideCharStr, "int", cchWideChar, "astr", lpMultiByteStr, "int", cbMultiByte, "astr", lpDefaultChar, "ptr", lpUsedDefaultChar, "int") */
	static WideCharToMultiByte(CodePage, dwFlags, lpWideCharStr, cchWideChar, lpMultiByteStr, cbMultiByte, lpDefaultChar, lpUsedDefaultChar) => DllCall("Kernel32\WideCharToMultiByte", "uint", CodePage, "uint", dwFlags, "wstr", lpWideCharStr, "int", cchWideChar, "astr", lpMultiByteStr, "int", cbMultiByte, "astr", lpDefaultChar, "ptr", lpUsedDefaultChar, "int")

	/** @example DllCall("Kernel32\WinExec", "astr", lpCmdLine, "uint", uCmdShow, "uint") */
	static WinExec(lpCmdLine, uCmdShow) => DllCall("Kernel32\WinExec", "astr", lpCmdLine, "uint", uCmdShow, "uint")

	/** @example DllCall("Kernel32\Wow64DisableWow64FsRedirection", "ptr", OldValue, "int") */
	static Wow64DisableWow64FsRedirection(OldValue) => DllCall("Kernel32\Wow64DisableWow64FsRedirection", "ptr", OldValue, "int")

	/** @example DllCall("Kernel32\Wow64EnableWow64FsRedirection", "uchar", Wow64FsEnableRedirection, "uchar") */
	static Wow64EnableWow64FsRedirection(Wow64FsEnableRedirection) => DllCall("Kernel32\Wow64EnableWow64FsRedirection", "uchar", Wow64FsEnableRedirection, "uchar")

	/** @example DllCall("Kernel32\Wow64GetThreadContext", "ptr", hThread, "ptr", lpContext, "int") */
	static Wow64GetThreadContext(hThread, lpContext) => DllCall("Kernel32\Wow64GetThreadContext", "ptr", hThread, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\Wow64GetThreadSelectorEntry", "ptr", hThread, "uint", dwSelector, "ptr", lpSelectorEntry, "int") */
	static Wow64GetThreadSelectorEntry(hThread, dwSelector, lpSelectorEntry) => DllCall("Kernel32\Wow64GetThreadSelectorEntry", "ptr", hThread, "uint", dwSelector, "ptr", lpSelectorEntry, "int")

	/** @example DllCall("Kernel32\Wow64RevertWow64FsRedirection", "ptr", OldValue, "int") */
	static Wow64RevertWow64FsRedirection(OldValue) => DllCall("Kernel32\Wow64RevertWow64FsRedirection", "ptr", OldValue, "int")

	/** @example DllCall("Kernel32\Wow64SetThreadContext", "ptr", hThread, "ptr", lpContext, "int") */
	static Wow64SetThreadContext(hThread, lpContext) => DllCall("Kernel32\Wow64SetThreadContext", "ptr", hThread, "ptr", lpContext, "int")

	/** @example DllCall("Kernel32\Wow64SuspendThread", "ptr", hThread, "uint") */
	static Wow64SuspendThread(hThread) => DllCall("Kernel32\Wow64SuspendThread", "ptr", hThread, "uint")

	/** @example DllCall("Kernel32\WriteConsole", "ptr", hConsoleOutput, "ptr", lpBuffer, "uint", nNumberOfCharsToWrite, "ptr", lpNumberOfCharsWritten, "ptr", lpReserved, "int") */
	static WriteConsole(hConsoleOutput, lpBuffer, nNumberOfCharsToWrite, lpNumberOfCharsWritten, lpReserved) => DllCall("Kernel32\WriteConsole", "ptr", hConsoleOutput, "ptr", lpBuffer, "uint", nNumberOfCharsToWrite, "ptr", lpNumberOfCharsWritten, "ptr", lpReserved, "int")

	/** @example DllCall("Kernel32\WriteConsoleInput", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nLength, "ptr", lpNumberOfEventsWritten, "int") */
	static WriteConsoleInput(hConsoleInput, lpBuffer, nLength, lpNumberOfEventsWritten) => DllCall("Kernel32\WriteConsoleInput", "ptr", hConsoleInput, "ptr", lpBuffer, "uint", nLength, "ptr", lpNumberOfEventsWritten, "int")

	/** @example DllCall("Kernel32\WriteConsoleOutput", "ptr", hConsoleOutput, "ptr", lpBuffer, "uint", dwBufferSize, "uint", dwBufferCoord, "ptr", lpWriteRegion, "int") */
	static WriteConsoleOutput(hConsoleOutput, lpBuffer, dwBufferSize, dwBufferCoord, lpWriteRegion) => DllCall("Kernel32\WriteConsoleOutput", "ptr", hConsoleOutput, "ptr", lpBuffer, "uint", dwBufferSize, "uint", dwBufferCoord, "ptr", lpWriteRegion, "int")

	/** @example DllCall("Kernel32\WriteConsoleOutputAttribute", "ptr", hConsoleOutput, "ushort*", &lpAttribute, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfAttrsWritten, "int") */
	static WriteConsoleOutputAttribute(hConsoleOutput, &lpAttribute, nLength, dwWriteCoord, lpNumberOfAttrsWritten) => DllCall("Kernel32\WriteConsoleOutputAttribute", "ptr", hConsoleOutput, "ushort*", &lpAttribute, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfAttrsWritten, "int")

	/** @example DllCall("Kernel32\WriteConsoleOutputCharacter", "ptr", hConsoleOutput, "str", lpCharacter, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfCharsWritten, "int") */
	static WriteConsoleOutputCharacter(hConsoleOutput, lpCharacter, nLength, dwWriteCoord, lpNumberOfCharsWritten) => DllCall("Kernel32\WriteConsoleOutputCharacter", "ptr", hConsoleOutput, "str", lpCharacter, "uint", nLength, "uint", dwWriteCoord, "ptr", lpNumberOfCharsWritten, "int")

	/** @example DllCall("Kernel32\WriteFile", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToWrite, "ptr", lpNumberOfBytesWritten, "ptr", lpOverlapped, "int") */
	static WriteFile(hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, lpOverlapped) => DllCall("Kernel32\WriteFile", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToWrite, "ptr", lpNumberOfBytesWritten, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\WriteFileEx", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToWrite, "ptr", lpOverlapped, "ptr", lpCompletionRoutine, "int") */
	static WriteFileEx(hFile, lpBuffer, nNumberOfBytesToWrite, lpOverlapped, lpCompletionRoutine) => DllCall("Kernel32\WriteFileEx", "ptr", hFile, "ptr", lpBuffer, "uint", nNumberOfBytesToWrite, "ptr", lpOverlapped, "ptr", lpCompletionRoutine, "int")

	/** @example DllCall("Kernel32\WriteFileGather", "ptr", hFile, "ptr", aSegmentArray, "uint", nNumberOfBytesToWrite, "ptr", lpReserved, "ptr", lpOverlapped, "int") */
	static WriteFileGather(hFile, aSegmentArray, nNumberOfBytesToWrite, lpReserved, lpOverlapped) => DllCall("Kernel32\WriteFileGather", "ptr", hFile, "ptr", aSegmentArray, "uint", nNumberOfBytesToWrite, "ptr", lpReserved, "ptr", lpOverlapped, "int")

	/** @example DllCall("Kernel32\WritePrivateProfileSection", "str", lpAppName, "str", lpString, "str", lpFileName, "int") */
	static WritePrivateProfileSection(lpAppName, lpString, lpFileName) => DllCall("Kernel32\WritePrivateProfileSection", "str", lpAppName, "str", lpString, "str", lpFileName, "int")

	/** @example DllCall("Kernel32\WritePrivateProfileString", "str", lpAppName, "str", lpKeyName, "str", lpString, "str", lpFileName, "int") */
	static WritePrivateProfileString(lpAppName, lpKeyName, lpString, lpFileName) => DllCall("Kernel32\WritePrivateProfileString", "str", lpAppName, "str", lpKeyName, "str", lpString, "str", lpFileName, "int")

	/** @example DllCall("Kernel32\WritePrivateProfileStruct", "str", lpszSection, "str", lpszKey, "ptr", lpStruct, "uint", uSizeStruct, "str", szFile, "int") */
	static WritePrivateProfileStruct(lpszSection, lpszKey, lpStruct, uSizeStruct, szFile) => DllCall("Kernel32\WritePrivateProfileStruct", "str", lpszSection, "str", lpszKey, "ptr", lpStruct, "uint", uSizeStruct, "str", szFile, "int")

	/** @example DllCall("Kernel32\WriteProcessMemory", "ptr", hProcess, "ptr", lpBaseAddress, "ptr", lpBuffer, "uptr", nSize, "ptr", lpNumberOfBytesWritten, "int") */
	static WriteProcessMemory(hProcess, lpBaseAddress, lpBuffer, nSize, lpNumberOfBytesWritten) => DllCall("Kernel32\WriteProcessMemory", "ptr", hProcess, "ptr", lpBaseAddress, "ptr", lpBuffer, "uptr", nSize, "ptr", lpNumberOfBytesWritten, "int")

	/** @example DllCall("Kernel32\WriteProfileSection", "str", lpAppName, "str", lpString, "int") */
	static WriteProfileSection(lpAppName, lpString) => DllCall("Kernel32\WriteProfileSection", "str", lpAppName, "str", lpString, "int")

	/** @example DllCall("Kernel32\WriteProfileString", "str", lpAppName, "str", lpKeyName, "str", lpString, "int") */
	static WriteProfileString(lpAppName, lpKeyName, lpString) => DllCall("Kernel32\WriteProfileString", "str", lpAppName, "str", lpKeyName, "str", lpString, "int")

	/** @example DllCall("Kernel32\WriteTapemark", "ptr", hDevice, "uint", dwTapemarkType, "uint", dwTapemarkCount, "int", bImmediate, "uint") */
	static WriteTapemark(hDevice, dwTapemarkType, dwTapemarkCount, bImmediate) => DllCall("Kernel32\WriteTapemark", "ptr", hDevice, "uint", dwTapemarkType, "uint", dwTapemarkCount, "int", bImmediate, "uint")

	/** @example DllCall("Kernel32\ZombifyActCtx", "ptr", hActCtx, "int") */
	static ZombifyActCtx(hActCtx) => DllCall("Kernel32\ZombifyActCtx", "ptr", hActCtx, "int")

	/** @example DllCall("Kernel32\_hread", "int*", &hFile, "ptr", lpBuffer, "int", lBytes, "int") */
	static _hread(&hFile, lpBuffer, lBytes) => DllCall("Kernel32\_hread", "int*", &hFile, "ptr", lpBuffer, "int", lBytes, "int")

	/** @example DllCall("Kernel32\_hwrite", "int*", &hFile, "astr", lpBuffer, "int", lBytes, "int") */
	static _hwrite(&hFile, lpBuffer, lBytes) => DllCall("Kernel32\_hwrite", "int*", &hFile, "astr", lpBuffer, "int", lBytes, "int")

	/** @example DllCall("Kernel32\_lclose", "int*", &hFile, "ptr") */
	static _lclose(&hFile) => DllCall("Kernel32\_lclose", "int*", &hFile, "ptr")

	/** @example DllCall("Kernel32\_lcreat", "astr", lpPathName, "int", iAttribute, "ptr") */
	static _lcreat(lpPathName, iAttribute) => DllCall("Kernel32\_lcreat", "astr", lpPathName, "int", iAttribute, "ptr")

	/** @example DllCall("Kernel32\_llseek", "int*", &hFile, "int", lOffset, "int", iOrigin, "int") */
	static _llseek(&hFile, lOffset, iOrigin) => DllCall("Kernel32\_llseek", "int*", &hFile, "int", lOffset, "int", iOrigin, "int")

	/** @example DllCall("Kernel32\_lopen", "astr", lpPathName, "int", iReadWrite, "ptr") */
	static _lopen(lpPathName, iReadWrite) => DllCall("Kernel32\_lopen", "astr", lpPathName, "int", iReadWrite, "ptr")

	/** @example DllCall("Kernel32\_lread", "int*", &hFile, "ptr", lpBuffer, "uint", uBytes, "uint") */
	static _lread(&hFile, lpBuffer, uBytes) => DllCall("Kernel32\_lread", "int*", &hFile, "ptr", lpBuffer, "uint", uBytes, "uint")

	/** @example DllCall("Kernel32\_lwrite", "int*", &hFile, "astr", lpBuffer, "uint", uBytes, "uint") */
	static _lwrite(&hFile, lpBuffer, uBytes) => DllCall("Kernel32\_lwrite", "int*", &hFile, "astr", lpBuffer, "uint", uBytes, "uint")

	/** @example DllCall("Kernel32\lstrcat", "str", lpString1, "str", lpString2, "str") */
	static lstrcat(lpString1, lpString2) => DllCall("Kernel32\lstrcat", "str", lpString1, "str", lpString2, "str")

	/** @example DllCall("Kernel32\lstrcmp", "str", lpString1, "str", lpString2, "int") */
	static lstrcmp(lpString1, lpString2) => DllCall("Kernel32\lstrcmp", "str", lpString1, "str", lpString2, "int")

	/** @example DllCall("Kernel32\lstrcmpi", "str", lpString1, "str", lpString2, "int") */
	static lstrcmpi(lpString1, lpString2) => DllCall("Kernel32\lstrcmpi", "str", lpString1, "str", lpString2, "int")

	/** @example DllCall("Kernel32\lstrcpy", "str", lpString1, "str", lpString2, "str") */
	static lstrcpy(lpString1, lpString2) => DllCall("Kernel32\lstrcpy", "str", lpString1, "str", lpString2, "str")

	/** @example DllCall("Kernel32\lstrcpyn", "str", lpString1, "str", lpString2, "int", iMaxLength, "str") */
	static lstrcpyn(lpString1, lpString2, iMaxLength) => DllCall("Kernel32\lstrcpyn", "str", lpString1, "str", lpString2, "int", iMaxLength, "str")

	/** @example DllCall("Kernel32\lstrlen", "str", lpString, "int") */
	static lstrlen(lpString) => DllCall("Kernel32\lstrlen", "str", lpString, "int")

	;#endregion

	;#region __Shell32

	/** @example DllCall("Shell32\AssocCreateForClasses", "ptr", rgClasses, "uint", cClasses, "ptr", riid, "ptr", ppv, "int") */
	static AssocCreateForClasses(rgClasses, cClasses, riid, ppv) => DllCall("Shell32\AssocCreateForClasses", "ptr", rgClasses, "uint", cClasses, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\AssocGetDetailsOfPropKey", "ptr", psf, "ptr", pidl, "ptr", pkey, "ptr", pv, "int*", &pfFoundPropKey, "int") */
	static AssocGetDetailsOfPropKey(psf, pidl, pkey, pv, &pfFoundPropKey) => DllCall("Shell32\AssocGetDetailsOfPropKey", "ptr", psf, "ptr", pidl, "ptr", pkey, "ptr", pv, "int*", &pfFoundPropKey, "int")

	/** @example DllCall("Shell32\CDefFolderMenu_Create2", "ptr", pidlFolder, "ptr", hwnd, "uint", cidl, "ptr", apidl, "ptr", psf, "ptr", lpfn, "uint", nKeys, "ptr", ahkeys, "ptr", ppcm, "int") */
	static CDefFolderMenu_Create2(pidlFolder, hwnd, cidl, apidl, psf, lpfn, nKeys, ahkeys, ppcm) => DllCall("Shell32\CDefFolderMenu_Create2", "ptr", pidlFolder, "ptr", hwnd, "uint", cidl, "ptr", apidl, "ptr", psf, "ptr", lpfn, "uint", nKeys, "ptr", ahkeys, "ptr", ppcm, "int")

	/** @example DllCall("Shell32\CIDLData_CreateFromIDArray", "ptr", pidlFolder, "uint", cidl, "ptr", apidl, "ptr", ppdtobj, "int") */
	static CIDLData_CreateFromIDArray(pidlFolder, cidl, apidl, ppdtobj) => DllCall("Shell32\CIDLData_CreateFromIDArray", "ptr", pidlFolder, "uint", cidl, "ptr", apidl, "ptr", ppdtobj, "int")

	/** @example DllCall("Shell32\CommandLineToArgvW", "wstr", lpCmdLine, "int*", &pNumArgs, "ptr") */
	static CommandLineToArgvW(lpCmdLine, &pNumArgs) => DllCall("Shell32\CommandLineToArgvW", "wstr", lpCmdLine, "int*", &pNumArgs, "ptr")

	/** @example DllCall("Shell32\DAD_AutoScroll", "ptr", hwnd, "ptr", pad, "ptr", pptNow, "int") */
	static DAD_AutoScroll(hwnd, pad, pptNow) => DllCall("Shell32\DAD_AutoScroll", "ptr", hwnd, "ptr", pad, "ptr", pptNow, "int")

	/** @example DllCall("Shell32\DAD_DragEnterEx", "ptr", hwndTarget, "uint64", ptStart, "int") */
	static DAD_DragEnterEx(hwndTarget, ptStart) => DllCall("Shell32\DAD_DragEnterEx", "ptr", hwndTarget, "uint64", ptStart, "int")

	/** @example DllCall("Shell32\DAD_DragEnterEx2", "ptr", hwndTarget, "uint64", ptStart, "ptr", pdtObject, "int") */
	static DAD_DragEnterEx2(hwndTarget, ptStart, pdtObject) => DllCall("Shell32\DAD_DragEnterEx2", "ptr", hwndTarget, "uint64", ptStart, "ptr", pdtObject, "int")

	/** @example DllCall("Shell32\DAD_DragLeave", "int") */
	static DAD_DragLeave() => DllCall("Shell32\DAD_DragLeave", "int")

	/** @example DllCall("Shell32\DAD_DragMove", "uint64", pt, "int") */
	static DAD_DragMove(pt) => DllCall("Shell32\DAD_DragMove", "uint64", pt, "int")

	/** @example DllCall("Shell32\DAD_SetDragImage", "ptr", him, "ptr", pptOffset, "int") */
	static DAD_SetDragImage(him, pptOffset) => DllCall("Shell32\DAD_SetDragImage", "ptr", him, "ptr", pptOffset, "int")

	/** @example DllCall("Shell32\DAD_ShowDragImage", "int", fShow, "int") */
	static DAD_ShowDragImage(fShow) => DllCall("Shell32\DAD_ShowDragImage", "int", fShow, "int")

	/** @example DllCall("Shell32\DllGetVersion", "ptr", pdvi, "int") */
	static DllGetVersion(pdvi) => DllCall("Shell32\DllGetVersion", "ptr", pdvi, "int")

	/** @example DllCall("Shell32\DoEnvironmentSubst", "str", pszSrc, "uint", cchSrc, "uint") */
	static DoEnvironmentSubst(pszSrc, cchSrc) => DllCall("Shell32\DoEnvironmentSubst", "str", pszSrc, "uint", cchSrc, "uint")

	/** @example DllCall("Shell32\DragAcceptFiles", "ptr", hWnd, "int", fAccept, "int") */
	static DragAcceptFiles(hWnd, fAccept) => DllCall("Shell32\DragAcceptFiles", "ptr", hWnd, "int", fAccept, "int")

	/** @example DllCall("Shell32\DragFinish", "ptr", hDrop, "int") */
	static DragFinish(hDrop) => DllCall("Shell32\DragFinish", "ptr", hDrop, "int")

	/** @example DllCall("Shell32\DragQueryFile", "ptr", hDrop, "uint", iFile, "str", lpszFile, "uint", cch, "uint") */
	static DragQueryFile(hDrop, iFile, lpszFile, cch) => DllCall("Shell32\DragQueryFile", "ptr", hDrop, "uint", iFile, "str", lpszFile, "uint", cch, "uint")

	/** @example DllCall("Shell32\DragQueryPoint", "ptr", hDrop, "ptr", lppt, "int") */
	static DragQueryPoint(hDrop, lppt) => DllCall("Shell32\DragQueryPoint", "ptr", hDrop, "ptr", lppt, "int")

	/** @example DllCall("Shell32\DriveType", "int", iDrive, "int") */
	static DriveType(iDrive) => DllCall("Shell32\DriveType", "int", iDrive, "int")

	/** @example DllCall("Shell32\DuplicateIcon", "ptr", hInst, "ptr", hIcon, "ptr") */
	static DuplicateIcon(hInst, hIcon) => DllCall("Shell32\DuplicateIcon", "ptr", hInst, "ptr", hIcon, "ptr")

	/** @example DllCall("Shell32\ExtractAssociatedIcon", "ptr", hInst, "str", lpIconPath, "ushort*", &lpiIcon, "ptr") */
	static ExtractAssociatedIcon(hInst, lpIconPath, &lpiIcon) => DllCall("Shell32\ExtractAssociatedIcon", "ptr", hInst, "str", lpIconPath, "ushort*", &lpiIcon, "ptr")

	/** @example DllCall("Shell32\ExtractAssociatedIconEx", "ptr", hInst, "str", lpIconPath, "ptr", lpiIconIndex, "ptr", lpiIconId, "ptr") */
	static ExtractAssociatedIconEx(hInst, lpIconPath, lpiIconIndex, lpiIconId) => DllCall("Shell32\ExtractAssociatedIconEx", "ptr", hInst, "str", lpIconPath, "ptr", lpiIconIndex, "ptr", lpiIconId, "ptr")

	/** @example DllCall("Shell32\ExtractIcon", "ptr", hInst, "str", lpszExeFileName, "uint", nIconIndex, "ptr") */
	static ExtractIcon(hInst, lpszExeFileName, nIconIndex) => DllCall("Shell32\ExtractIcon", "ptr", hInst, "str", lpszExeFileName, "uint", nIconIndex, "ptr")

	/** @example DllCall("Shell32\ExtractIconEx", "str", lpszFile, "int", nIconIndex, "ptr", phiconLarge, "ptr", phiconSmall, "uint", nIcons, "uint") */
	static ExtractIconEx(lpszFile, nIconIndex, phiconLarge, phiconSmall, nIcons) => DllCall("Shell32\ExtractIconEx", "str", lpszFile, "int", nIconIndex, "ptr", phiconLarge, "ptr", phiconSmall, "uint", nIcons, "uint")

	/** @example DllCall("Shell32\FindExecutable", "str", lpFile, "str", lpDirectory, "str", lpResult, "ptr") */
	static FindExecutable(lpFile, lpDirectory, lpResult) => DllCall("Shell32\FindExecutable", "str", lpFile, "str", lpDirectory, "str", lpResult, "ptr")

	/** @example DllCall("Shell32\GetCurrentProcessExplicitAppUserModelID", "wstr", AppID, "int") */
	static GetCurrentProcessExplicitAppUserModelID(AppID) => DllCall("Shell32\GetCurrentProcessExplicitAppUserModelID", "wstr", AppID, "int")

	/** @example DllCall("Shell32\GetFileNameFromBrowse", "ptr", hwnd, "ptr", pszFilePath, "uint", cchFilePath, "wstr", pszWorkingDir, "wstr", pszDefExt, "wstr", pszFilters, "wstr", szTitle, "int") */
	static GetFileNameFromBrowse(hwnd, pszFilePath, cchFilePath, pszWorkingDir, pszDefExt, pszFilters, szTitle) => DllCall("Shell32\GetFileNameFromBrowse", "ptr", hwnd, "ptr", pszFilePath, "uint", cchFilePath, "wstr", pszWorkingDir, "wstr", pszDefExt, "wstr", pszFilters, "wstr", szTitle, "int")

	/** @example DllCall("Shell32\ILAppendID", "ptr", pidl, "ptr", pmkid, "int", fAppend, "ptr") */
	static ILAppendID(pidl, pmkid, fAppend) => DllCall("Shell32\ILAppendID", "ptr", pidl, "ptr", pmkid, "int", fAppend, "ptr")

	/** @example DllCall("Shell32\ILClone", "ptr", pidl, "ptr") */
	static ILClone(pidl) => DllCall("Shell32\ILClone", "ptr", pidl, "ptr")

	/** @example DllCall("Shell32\ILCloneFirst", "ptr", pidl, "ptr") */
	static ILCloneFirst(pidl) => DllCall("Shell32\ILCloneFirst", "ptr", pidl, "ptr")

	/** @example DllCall("Shell32\ILCombine", "ptr", pidl1, "ptr", pidl2, "ptr") */
	static ILCombine(pidl1, pidl2) => DllCall("Shell32\ILCombine", "ptr", pidl1, "ptr", pidl2, "ptr")

	/** @example DllCall("Shell32\ILCreateFromPath", "str", pszPath, "ptr") */
	static ILCreateFromPath(pszPath) => DllCall("Shell32\ILCreateFromPath", "str", pszPath, "ptr")

	/** @example DllCall("Shell32\ILFindChild", "ptr", pidlParent, "ptr", pidlChild, "ptr") */
	static ILFindChild(pidlParent, pidlChild) => DllCall("Shell32\ILFindChild", "ptr", pidlParent, "ptr", pidlChild, "ptr")

	/** @example DllCall("Shell32\ILFindLastID", "ptr", pidl, "ptr") */
	static ILFindLastID(pidl) => DllCall("Shell32\ILFindLastID", "ptr", pidl, "ptr")

	/** @example DllCall("Shell32\ILFree", "ptr", pidl, "int") */
	static ILFree(pidl) => DllCall("Shell32\ILFree", "ptr", pidl, "int")

	/** @example DllCall("Shell32\ILGetNext", "ptr", pidl, "ptr") */
	static ILGetNext(pidl) => DllCall("Shell32\ILGetNext", "ptr", pidl, "ptr")

	/** @example DllCall("Shell32\ILGetSize", "ptr", pidl, "uint") */
	static ILGetSize(pidl) => DllCall("Shell32\ILGetSize", "ptr", pidl, "uint")

	/** @example DllCall("Shell32\ILIsEqual", "ptr", pidl1, "ptr", pidl2, "int") */
	static ILIsEqual(pidl1, pidl2) => DllCall("Shell32\ILIsEqual", "ptr", pidl1, "ptr", pidl2, "int")

	/** @example DllCall("Shell32\ILIsParent", "ptr", pidl1, "ptr", pidl2, "int", fImmediate, "int") */
	static ILIsParent(pidl1, pidl2, fImmediate) => DllCall("Shell32\ILIsParent", "ptr", pidl1, "ptr", pidl2, "int", fImmediate, "int")

	/** @example DllCall("Shell32\ILLoadFromStreamEx", "ptr", pstm, "ptr", pidl, "int") */
	static ILLoadFromStreamEx(pstm, pidl) => DllCall("Shell32\ILLoadFromStreamEx", "ptr", pstm, "ptr", pidl, "int")

	/** @example DllCall("Shell32\ILRemoveLastID", "ptr", pidl, "int") */
	static ILRemoveLastID(pidl) => DllCall("Shell32\ILRemoveLastID", "ptr", pidl, "int")

	/** @example DllCall("Shell32\ILSaveToStream", "ptr", pstm, "ptr", pidl, "int") */
	static ILSaveToStream(pstm, pidl) => DllCall("Shell32\ILSaveToStream", "ptr", pstm, "ptr", pidl, "int")

	/** @example DllCall("Shell32\InitNetworkAddressControl", "int") */
	static InitNetworkAddressControl() => DllCall("Shell32\InitNetworkAddressControl", "int")

	/** @example DllCall("Shell32\IsNetDrive", "int", iDrive, "int") */
	static IsNetDrive(iDrive) => DllCall("Shell32\IsNetDrive", "int", iDrive, "int")

	/** @example DllCall("Shell32\IsUserAnAdmin", "int") */
	static IsUserAnAdmin() => DllCall("Shell32\IsUserAnAdmin", "int")

	/** @example DllCall("Shell32\OpenRegStream", "ptr", hkey, "wstr", pszSubkey, "wstr", pszValue, "uint", grfMode, "ptr") */
	static OpenRegStream(hkey, pszSubkey, pszValue, grfMode) => DllCall("Shell32\OpenRegStream", "ptr", hkey, "wstr", pszSubkey, "wstr", pszValue, "uint", grfMode, "ptr")

	/** @example DllCall("Shell32\PathCleanupSpec", "wstr", pszDir, "ptr", pszSpec, "int") */
	static PathCleanupSpec(pszDir, pszSpec) => DllCall("Shell32\PathCleanupSpec", "wstr", pszDir, "ptr", pszSpec, "int")

	/** @example DllCall("Shell32\PathGetShortPath", "ptr", pszLongPath, "int") */
	static PathGetShortPath(pszLongPath) => DllCall("Shell32\PathGetShortPath", "ptr", pszLongPath, "int")

	/** @example DllCall("Shell32\PathIsExe", "wstr", szfile, "int") */
	static PathIsExe(szfile) => DllCall("Shell32\PathIsExe", "wstr", szfile, "int")

	/** @example DllCall("Shell32\PathIsSlow", "str", pszFile, "uint", dwFileAttr, "int") */
	static PathIsSlow(pszFile, dwFileAttr) => DllCall("Shell32\PathIsSlow", "str", pszFile, "uint", dwFileAttr, "int")

	/** @example DllCall("Shell32\PathMakeUniqueName", "ptr", pszUniqueName, "uint", cchMax, "wstr", pszTemplate, "wstr", pszLongPlate, "wstr", pszDir, "int") */
	static PathMakeUniqueName(pszUniqueName, cchMax, pszTemplate, pszLongPlate, pszDir) => DllCall("Shell32\PathMakeUniqueName", "ptr", pszUniqueName, "uint", cchMax, "wstr", pszTemplate, "wstr", pszLongPlate, "wstr", pszDir, "int")

	/** @example DllCall("Shell32\PathResolve", "ptr", pszPath, "wstr", dirs, "uint", fFlags, "int") */
	static PathResolve(pszPath, dirs, fFlags) => DllCall("Shell32\PathResolve", "ptr", pszPath, "wstr", dirs, "uint", fFlags, "int")

	/** @example DllCall("Shell32\PathYetAnotherMakeUniqueName", "ptr", pszUniqueName, "wstr", pszPath, "wstr", pszShort, "wstr", pszFileSpec, "int") */
	static PathYetAnotherMakeUniqueName(pszUniqueName, pszPath, pszShort, pszFileSpec) => DllCall("Shell32\PathYetAnotherMakeUniqueName", "ptr", pszUniqueName, "wstr", pszPath, "wstr", pszShort, "wstr", pszFileSpec, "int")

	/** @example DllCall("Shell32\PickIconDlg", "ptr", hwnd, "ptr", pszIconPath, "uint", cchIconPath, "int*", &piIconIndex, "int") */
	static PickIconDlg(hwnd, pszIconPath, cchIconPath, &piIconIndex) => DllCall("Shell32\PickIconDlg", "ptr", hwnd, "ptr", pszIconPath, "uint", cchIconPath, "int*", &piIconIndex, "int")

	/** @example DllCall("Shell32\PifMgr_CloseProperties", "ptr", hProps, "uint", flOpt, "int") */
	static PifMgr_CloseProperties(hProps, flOpt) => DllCall("Shell32\PifMgr_CloseProperties", "ptr", hProps, "uint", flOpt, "int")

	/** @example DllCall("Shell32\PifMgr_GetProperties", "ptr", hProps, "astr", pszGroup, "ptr", lpProps, "int", cbProps, "uint", flOpt, "int") */
	static PifMgr_GetProperties(hProps, pszGroup, lpProps, cbProps, flOpt) => DllCall("Shell32\PifMgr_GetProperties", "ptr", hProps, "astr", pszGroup, "ptr", lpProps, "int", cbProps, "uint", flOpt, "int")

	/** @example DllCall("Shell32\PifMgr_OpenProperties", "wstr", pszApp, "wstr", lpszPIF, "uint", hInf, "uint", flOpt, "ptr") */
	static PifMgr_OpenProperties(pszApp, lpszPIF, hInf, flOpt) => DllCall("Shell32\PifMgr_OpenProperties", "wstr", pszApp, "wstr", lpszPIF, "uint", hInf, "uint", flOpt, "ptr")

	/** @example DllCall("Shell32\PifMgr_SetProperties", "ptr", hProps, "astr", pszGroup, "ptr", lpProps, "int", cbProps, "uint", flOpt, "int") */
	static PifMgr_SetProperties(hProps, pszGroup, lpProps, cbProps, flOpt) => DllCall("Shell32\PifMgr_SetProperties", "ptr", hProps, "astr", pszGroup, "ptr", lpProps, "int", cbProps, "uint", flOpt, "int")

	/** @example DllCall("Shell32\ReadCabinetState", "ptr", pcs, "int", cLength, "int") */
	static ReadCabinetState(pcs, cLength) => DllCall("Shell32\ReadCabinetState", "ptr", pcs, "int", cLength, "int")

	/** @example DllCall("Shell32\RealDriveType", "int", iDrive, "int", fOKToHitNet, "int") */
	static RealDriveType(iDrive, fOKToHitNet) => DllCall("Shell32\RealDriveType", "int", iDrive, "int", fOKToHitNet, "int")

	/** @example DllCall("Shell32\RestartDialog", "ptr", hParent, "wstr", pszPrompt, "uint", dwFlags, "int") */
	static RestartDialog(hParent, pszPrompt, dwFlags) => DllCall("Shell32\RestartDialog", "ptr", hParent, "wstr", pszPrompt, "uint", dwFlags, "int")

	/** @example DllCall("Shell32\RestartDialogEx", "ptr", hParent, "wstr", pszPrompt, "uint", dwFlags, "uint", dwReasonCode, "int") */
	static RestartDialogEx(hParent, pszPrompt, dwFlags, dwReasonCode) => DllCall("Shell32\RestartDialogEx", "ptr", hParent, "wstr", pszPrompt, "uint", dwFlags, "uint", dwReasonCode, "int")

	/** @example DllCall("Shell32\SHAddDefaultPropertiesByExt", "wstr", pszExt, "ptr", pPropStore, "int") */
	static SHAddDefaultPropertiesByExt(pszExt, pPropStore) => DllCall("Shell32\SHAddDefaultPropertiesByExt", "wstr", pszExt, "ptr", pPropStore, "int")

	/** @example DllCall("Shell32\SHAddFromPropSheetExtArray", "ptr", hpsxa, "ptr", lpfnAddPage, "uptr", lParam, "uint") */
	static SHAddFromPropSheetExtArray(hpsxa, lpfnAddPage, lParam) => DllCall("Shell32\SHAddFromPropSheetExtArray", "ptr", hpsxa, "ptr", lpfnAddPage, "uptr", lParam, "uint")

	/** @example DllCall("Shell32\SHAddToRecentDocs", "uint", uFlags, "ptr", pv, "int") */
	static SHAddToRecentDocs(uFlags, pv) => DllCall("Shell32\SHAddToRecentDocs", "uint", uFlags, "ptr", pv, "int")

	/** @example DllCall("Shell32\SHAlloc", "uptr", cb, "ptr") */
	static SHAlloc(cb) => DllCall("Shell32\SHAlloc", "uptr", cb, "ptr")

	/** @example DllCall("Shell32\SHAppBarMessage", "uint", dwMessage, "ptr", pData, "uptr") */
	static SHAppBarMessage(dwMessage, pData) => DllCall("Shell32\SHAppBarMessage", "uint", dwMessage, "ptr", pData, "uptr")

	/** @example DllCall("Shell32\SHAssocEnumHandlers", "wstr", pszExtra, "int", afFilter, "ptr", ppEnumHandler, "int") */
	static SHAssocEnumHandlers(pszExtra, afFilter, ppEnumHandler) => DllCall("Shell32\SHAssocEnumHandlers", "wstr", pszExtra, "int", afFilter, "ptr", ppEnumHandler, "int")

	/** @example DllCall("Shell32\SHAssocEnumHandlersForProtocolByApplication", "wstr", protocol, "ptr", riid, "ptr", enumHandlers, "int") */
	static SHAssocEnumHandlersForProtocolByApplication(protocol, riid, enumHandlers) => DllCall("Shell32\SHAssocEnumHandlersForProtocolByApplication", "wstr", protocol, "ptr", riid, "ptr", enumHandlers, "int")

	/** @example DllCall("Shell32\SHBindToFolderIDListParent", "ptr", psfRoot, "ptr", pidl, "ptr", riid, "ptr", ppv, "ptr", ppidlLast, "int") */
	static SHBindToFolderIDListParent(psfRoot, pidl, riid, ppv, ppidlLast) => DllCall("Shell32\SHBindToFolderIDListParent", "ptr", psfRoot, "ptr", pidl, "ptr", riid, "ptr", ppv, "ptr", ppidlLast, "int")

	/** @example DllCall("Shell32\SHBindToFolderIDListParentEx", "ptr", psfRoot, "ptr", pidl, "ptr", ppbc, "ptr", riid, "ptr", ppv, "ptr", ppidlLast, "int") */
	static SHBindToFolderIDListParentEx(psfRoot, pidl, ppbc, riid, ppv, ppidlLast) => DllCall("Shell32\SHBindToFolderIDListParentEx", "ptr", psfRoot, "ptr", pidl, "ptr", ppbc, "ptr", riid, "ptr", ppv, "ptr", ppidlLast, "int")

	/** @example DllCall("Shell32\SHBindToObject", "ptr", psf, "ptr", pidl, "ptr", pbc, "ptr", riid, "ptr", ppv, "int") */
	static SHBindToObject(psf, pidl, pbc, riid, ppv) => DllCall("Shell32\SHBindToObject", "ptr", psf, "ptr", pidl, "ptr", pbc, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHBindToParent", "ptr", pidl, "ptr", riid, "ptr", ppv, "ptr", ppidlLast, "int") */
	static SHBindToParent(pidl, riid, ppv, ppidlLast) => DllCall("Shell32\SHBindToParent", "ptr", pidl, "ptr", riid, "ptr", ppv, "ptr", ppidlLast, "int")

	/** @example DllCall("Shell32\SHBrowseForFolder", "ptr", lpbi, "ptr") */
	static SHBrowseForFolder(lpbi) => DllCall("Shell32\SHBrowseForFolder", "ptr", lpbi, "ptr")

	/** @example DllCall("Shell32\SHCLSIDFromString", "wstr", psz, "ptr", pcClsid, "int") */
	static SHCLSIDFromString(psz, pcClsid) => DllCall("Shell32\SHCLSIDFromString", "wstr", psz, "ptr", pcClsid, "int")

	/** @example DllCall("Shell32\SHChangeNotification_Lock", "ptr", hChange, "uint", dwProcId, "ptr", pppidl, "int*", &plEvent, "ptr") */
	static SHChangeNotification_Lock(hChange, dwProcId, pppidl, &plEvent) => DllCall("Shell32\SHChangeNotification_Lock", "ptr", hChange, "uint", dwProcId, "ptr", pppidl, "int*", &plEvent, "ptr")

	/** @example DllCall("Shell32\SHChangeNotification_Unlock", "ptr", hLock, "int") */
	static SHChangeNotification_Unlock(hLock) => DllCall("Shell32\SHChangeNotification_Unlock", "ptr", hLock, "int")

	/** @example DllCall("Shell32\SHChangeNotify", "int", wEventId, "uint", uFlags, "ptr", dwItem1, "ptr", dwItem2, "int") */
	static SHChangeNotify(wEventId, uFlags, dwItem1, dwItem2) => DllCall("Shell32\SHChangeNotify", "int", wEventId, "uint", uFlags, "ptr", dwItem1, "ptr", dwItem2, "int")

	/** @example DllCall("Shell32\SHChangeNotifyDeregister", "uint", ulID, "int") */
	static SHChangeNotifyDeregister(ulID) => DllCall("Shell32\SHChangeNotifyDeregister", "uint", ulID, "int")

	/** @example DllCall("Shell32\SHChangeNotifyRegister", "ptr", hwnd, "int", fSources, "int", fEvents, "uint", wMsg, "int", cEntries, "ptr", pshcne, "uint") */
	static SHChangeNotifyRegister(hwnd, fSources, fEvents, wMsg, cEntries, pshcne) => DllCall("Shell32\SHChangeNotifyRegister", "ptr", hwnd, "int", fSources, "int", fEvents, "uint", wMsg, "int", cEntries, "ptr", pshcne, "uint")

	/** @example DllCall("Shell32\SHChangeNotifyRegisterThread", "uint", status, "int") */
	static SHChangeNotifyRegisterThread(status) => DllCall("Shell32\SHChangeNotifyRegisterThread", "uint", status, "int")

	/** @example DllCall("Shell32\SHCloneSpecialIDList", "ptr", hwndOwner, "int", csidl, "int", fCreate, "ptr") */
	static SHCloneSpecialIDList(hwndOwner, csidl, fCreate) => DllCall("Shell32\SHCloneSpecialIDList", "ptr", hwndOwner, "int", csidl, "int", fCreate, "ptr")

	/** @example DllCall("Shell32\SHCoCreateInstance", "wstr", pszCLSID, "ptr", pclsid, "ptr", pUnkOuter, "ptr", riid, "ptr", ppv, "int") */
	static SHCoCreateInstance(pszCLSID, pclsid, pUnkOuter, riid, ppv) => DllCall("Shell32\SHCoCreateInstance", "wstr", pszCLSID, "ptr", pclsid, "ptr", pUnkOuter, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateAssociationRegistration", "ptr", riid, "ptr", ppv, "int") */
	static SHCreateAssociationRegistration(riid, ppv) => DllCall("Shell32\SHCreateAssociationRegistration", "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateDataObject", "ptr", pidlFolder, "uint", cidl, "ptr", apidl, "ptr", pdtInner, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateDataObject(pidlFolder, cidl, apidl, pdtInner, riid, ppv) => DllCall("Shell32\SHCreateDataObject", "ptr", pidlFolder, "uint", cidl, "ptr", apidl, "ptr", pdtInner, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateDefaultContextMenu", "ptr", pdcm, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateDefaultContextMenu(pdcm, riid, ppv) => DllCall("Shell32\SHCreateDefaultContextMenu", "ptr", pdcm, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateDefaultExtractIcon", "ptr", riid, "ptr", ppv, "int") */
	static SHCreateDefaultExtractIcon(riid, ppv) => DllCall("Shell32\SHCreateDefaultExtractIcon", "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateDefaultPropertiesOp", "ptr", psi, "ptr", ppFileOp, "int") */
	static SHCreateDefaultPropertiesOp(psi, ppFileOp) => DllCall("Shell32\SHCreateDefaultPropertiesOp", "ptr", psi, "ptr", ppFileOp, "int")

	/** @example DllCall("Shell32\SHCreateDirectory", "ptr", hwnd, "wstr", pszPath, "int") */
	static SHCreateDirectory(hwnd, pszPath) => DllCall("Shell32\SHCreateDirectory", "ptr", hwnd, "wstr", pszPath, "int")

	/** @example DllCall("Shell32\SHCreateDirectoryEx", "ptr", hwnd, "str", pszPath, "ptr", psa, "int") */
	static SHCreateDirectoryEx(hwnd, pszPath, psa) => DllCall("Shell32\SHCreateDirectoryEx", "ptr", hwnd, "str", pszPath, "ptr", psa, "int")

	/** @example DllCall("Shell32\SHCreateFileExtractIcon", "str", pszFile, "uint", dwFileAttributes, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateFileExtractIcon(pszFile, dwFileAttributes, riid, ppv) => DllCall("Shell32\SHCreateFileExtractIcon", "str", pszFile, "uint", dwFileAttributes, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateItemFromIDList", "ptr", pidl, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateItemFromIDList(pidl, riid, ppv) => DllCall("Shell32\SHCreateItemFromIDList", "ptr", pidl, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateItemFromParsingName", "wstr", pszPath, "ptr", pbc, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateItemFromParsingName(pszPath, pbc, riid, ppv) => DllCall("Shell32\SHCreateItemFromParsingName", "wstr", pszPath, "ptr", pbc, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateItemFromRelativeName", "ptr", psiParent, "wstr", pszName, "ptr", pbc, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateItemFromRelativeName(psiParent, pszName, pbc, riid, ppv) => DllCall("Shell32\SHCreateItemFromRelativeName", "ptr", psiParent, "wstr", pszName, "ptr", pbc, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateItemInKnownFolder", "ptr", kfid, "uint", dwKFFlags, "wstr", pszItem, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateItemInKnownFolder(kfid, dwKFFlags, pszItem, riid, ppv) => DllCall("Shell32\SHCreateItemInKnownFolder", "ptr", kfid, "uint", dwKFFlags, "wstr", pszItem, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateItemWithParent", "ptr", pidlParent, "ptr", psfParent, "ptr", pidl, "ptr", riid, "ptr", ppvItem, "int") */
	static SHCreateItemWithParent(pidlParent, psfParent, pidl, riid, ppvItem) => DllCall("Shell32\SHCreateItemWithParent", "ptr", pidlParent, "ptr", psfParent, "ptr", pidl, "ptr", riid, "ptr", ppvItem, "int")

	/** @example DllCall("Shell32\SHCreateProcessAsUserW", "ptr", pscpi, "int") */
	static SHCreateProcessAsUserW(pscpi) => DllCall("Shell32\SHCreateProcessAsUserW", "ptr", pscpi, "int")

	/** @example DllCall("Shell32\SHCreatePropSheetExtArray", "ptr", hkey, "wstr", pszSubkey, "uint", max_iface, "ptr") */
	static SHCreatePropSheetExtArray(hkey, pszSubkey, max_iface) => DllCall("Shell32\SHCreatePropSheetExtArray", "ptr", hkey, "wstr", pszSubkey, "uint", max_iface, "ptr")

	/** @example DllCall("Shell32\SHCreateQueryCancelAutoPlayMoniker", "ptr", ppmoniker, "int") */
	static SHCreateQueryCancelAutoPlayMoniker(ppmoniker) => DllCall("Shell32\SHCreateQueryCancelAutoPlayMoniker", "ptr", ppmoniker, "int")

	/** @example DllCall("Shell32\SHCreateShellFolderView", "ptr", pcsfv, "ptr", ppsv, "int") */
	static SHCreateShellFolderView(pcsfv, ppsv) => DllCall("Shell32\SHCreateShellFolderView", "ptr", pcsfv, "ptr", ppsv, "int")

	/** @example DllCall("Shell32\SHCreateShellFolderViewEx", "ptr", pcsfv, "ptr", ppsv, "int") */
	static SHCreateShellFolderViewEx(pcsfv, ppsv) => DllCall("Shell32\SHCreateShellFolderViewEx", "ptr", pcsfv, "ptr", ppsv, "int")

	/** @example DllCall("Shell32\SHCreateShellItem", "ptr", pidlParent, "ptr", psfParent, "ptr", pidl, "ptr", ppsi, "int") */
	static SHCreateShellItem(pidlParent, psfParent, pidl, ppsi) => DllCall("Shell32\SHCreateShellItem", "ptr", pidlParent, "ptr", psfParent, "ptr", pidl, "ptr", ppsi, "int")

	/** @example DllCall("Shell32\SHCreateShellItemArray", "ptr", pidlParent, "ptr", psf, "uint", cidl, "ptr", ppidl, "ptr", ppsiItemArray, "int") */
	static SHCreateShellItemArray(pidlParent, psf, cidl, ppidl, ppsiItemArray) => DllCall("Shell32\SHCreateShellItemArray", "ptr", pidlParent, "ptr", psf, "uint", cidl, "ptr", ppidl, "ptr", ppsiItemArray, "int")

	/** @example DllCall("Shell32\SHCreateShellItemArrayFromDataObject", "ptr", pdo, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateShellItemArrayFromDataObject(pdo, riid, ppv) => DllCall("Shell32\SHCreateShellItemArrayFromDataObject", "ptr", pdo, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateShellItemArrayFromIDLists", "uint", cidl, "ptr", rgpidl, "ptr", ppsiItemArray, "int") */
	static SHCreateShellItemArrayFromIDLists(cidl, rgpidl, ppsiItemArray) => DllCall("Shell32\SHCreateShellItemArrayFromIDLists", "uint", cidl, "ptr", rgpidl, "ptr", ppsiItemArray, "int")

	/** @example DllCall("Shell32\SHCreateShellItemArrayFromShellItem", "ptr", psi, "ptr", riid, "ptr", ppv, "int") */
	static SHCreateShellItemArrayFromShellItem(psi, riid, ppv) => DllCall("Shell32\SHCreateShellItemArrayFromShellItem", "ptr", psi, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHCreateStdEnumFmtEtc", "uint", cfmt, "uint", afmt, "ptr", ppenumFormatEtc, "int") */
	static SHCreateStdEnumFmtEtc(cfmt, afmt, ppenumFormatEtc) => DllCall("Shell32\SHCreateStdEnumFmtEtc", "uint", cfmt, "uint", afmt, "ptr", ppenumFormatEtc, "int")

	/** @example DllCall("Shell32\SHDefExtractIcon", "str", pszIconFile, "int", iIndex, "uint", uFlags, "ptr", phiconLarge, "ptr", phiconSmall, "uint", nIconSize, "int") */
	static SHDefExtractIcon(pszIconFile, iIndex, uFlags, phiconLarge, phiconSmall, nIconSize) => DllCall("Shell32\SHDefExtractIcon", "str", pszIconFile, "int", iIndex, "uint", uFlags, "ptr", phiconLarge, "ptr", phiconSmall, "uint", nIconSize, "int")

	/** @example DllCall("Shell32\SHDestroyPropSheetExtArray", "ptr", hpsxa, "int") */
	static SHDestroyPropSheetExtArray(hpsxa) => DllCall("Shell32\SHDestroyPropSheetExtArray", "ptr", hpsxa, "int")

	/** @example DllCall("Shell32\SHDoDragDrop", "ptr", hwnd, "ptr", pdtobj, "ptr", pdsrc, "uint", dwEffect, "uint*", &pdwEffect, "int") */
	static SHDoDragDrop(hwnd, pdtobj, pdsrc, dwEffect, &pdwEffect) => DllCall("Shell32\SHDoDragDrop", "ptr", hwnd, "ptr", pdtobj, "ptr", pdsrc, "uint", dwEffect, "uint*", &pdwEffect, "int")

	/** @example DllCall("Shell32\SHEmptyRecycleBin", "ptr", hwnd, "str", pszRootPath, "uint", dwFlags, "int") */
	static SHEmptyRecycleBin(hwnd, pszRootPath, dwFlags) => DllCall("Shell32\SHEmptyRecycleBin", "ptr", hwnd, "str", pszRootPath, "uint", dwFlags, "int")

	/** @example DllCall("Shell32\SHEnumerateUnreadMailAccounts", "ptr", hKeyUser, "uint", dwIndex, "str", pszMailAddress, "int", cchMailAddress, "int") */
	static SHEnumerateUnreadMailAccounts(hKeyUser, dwIndex, pszMailAddress, cchMailAddress) => DllCall("Shell32\SHEnumerateUnreadMailAccounts", "ptr", hKeyUser, "uint", dwIndex, "str", pszMailAddress, "int", cchMailAddress, "int")

	/** @example DllCall("Shell32\SHEvaluateSystemCommandTemplate", "wstr", pszCmdTemplate, "wstr", ppszApplication, "wstr", ppszCommandLine, "wstr", ppszParameters, "int") */
	static SHEvaluateSystemCommandTemplate(pszCmdTemplate, ppszApplication, ppszCommandLine, ppszParameters) => DllCall("Shell32\SHEvaluateSystemCommandTemplate", "wstr", pszCmdTemplate, "wstr", ppszApplication, "wstr", ppszCommandLine, "wstr", ppszParameters, "int")

	/** @example DllCall("Shell32\SHExtractIconsW", "wstr", pszFileName, "int", nIconIndex, "int", cxIcon, "int", cyIcon, "ptr", phIcon, "uint*", &pIconId, "uint", nIcons, "uint", flags, "uint") */
	static SHExtractIconsW(pszFileName, nIconIndex, cxIcon, cyIcon, phIcon, &pIconId, nIcons, flags) => DllCall("Shell32\SHExtractIconsW", "wstr", pszFileName, "int", nIconIndex, "int", cxIcon, "int", cyIcon, "ptr", phIcon, "uint*", &pIconId, "uint", nIcons, "uint", flags, "uint")

	/** @example DllCall("Shell32\SHFileOperation", "ptr", lpFileOp, "int") */
	static SHFileOperation(lpFileOp) => DllCall("Shell32\SHFileOperation", "ptr", lpFileOp, "int")

	/** @example DllCall("Shell32\SHFindFiles", "ptr", pidlFolder, "ptr", pidlSaveFile, "int") */
	static SHFindFiles(pidlFolder, pidlSaveFile) => DllCall("Shell32\SHFindFiles", "ptr", pidlFolder, "ptr", pidlSaveFile, "int")

	/** @example DllCall("Shell32\SHFind_InitMenuPopup", "ptr", hmenu, "ptr", hwnd, "uint", idCmdFirst, "uint", idCmdLast, "ptr") */
	static SHFind_InitMenuPopup(hmenu, hwnd, idCmdFirst, idCmdLast) => DllCall("Shell32\SHFind_InitMenuPopup", "ptr", hmenu, "ptr", hwnd, "uint", idCmdFirst, "uint", idCmdLast, "ptr")

	/** @example DllCall("Shell32\SHFlushSFCache", "int") */
	static SHFlushSFCache() => DllCall("Shell32\SHFlushSFCache", "int")

	/** @example DllCall("Shell32\SHFormatDrive", "ptr", hwnd, "uint", drive, "uint", fmtID, "uint", options, "uint") */
	static SHFormatDrive(hwnd, drive, fmtID, options) => DllCall("Shell32\SHFormatDrive", "ptr", hwnd, "uint", drive, "uint", fmtID, "uint", options, "uint")

	/** @example DllCall("Shell32\SHFree", "ptr", pv, "int") */
	static SHFree(pv) => DllCall("Shell32\SHFree", "ptr", pv, "int")

	/** @example DllCall("Shell32\SHFreeNameMappings", "ptr", hNameMappings, "int") */
	static SHFreeNameMappings(hNameMappings) => DllCall("Shell32\SHFreeNameMappings", "ptr", hNameMappings, "int")

	/** @example DllCall("Shell32\SHGetAttributesFromDataObject", "ptr", pdo, "uint", dwAttributeMask, "uint*", &pdwAttributes, "uint*", &pcItems, "int") */
	static SHGetAttributesFromDataObject(pdo, dwAttributeMask, &pdwAttributes, &pcItems) => DllCall("Shell32\SHGetAttributesFromDataObject", "ptr", pdo, "uint", dwAttributeMask, "uint*", &pdwAttributes, "uint*", &pcItems, "int")

	/** @example DllCall("Shell32\SHGetDataFromIDList", "ptr", psf, "ptr", pidl, "int", nFormat, "ptr", pv, "int", cb, "int") */
	static SHGetDataFromIDList(psf, pidl, nFormat, pv, cb) => DllCall("Shell32\SHGetDataFromIDList", "ptr", psf, "ptr", pidl, "int", nFormat, "ptr", pv, "int", cb, "int")

	/** @example DllCall("Shell32\SHGetDesktopFolder", "ptr", ppshf, "int") */
	static SHGetDesktopFolder(ppshf) => DllCall("Shell32\SHGetDesktopFolder", "ptr", ppshf, "int")

	/** @example DllCall("Shell32\SHGetDiskFreeSpace", "str", pszVolume, "ptr", pqwFreeCaller, "ptr", pqwTot, "ptr", pqwFree, "int") */
	static SHGetDiskFreeSpace(pszVolume, pqwFreeCaller, pqwTot, pqwFree) => DllCall("Shell32\SHGetDiskFreeSpace", "str", pszVolume, "ptr", pqwFreeCaller, "ptr", pqwTot, "ptr", pqwFree, "int")

	/** @example DllCall("Shell32\SHGetDiskFreeSpaceEx", "str", pszDirectoryName, "ptr", pulFreeBytesAvailableToCaller, "ptr", pulTotalNumberOfBytes, "ptr", pulTotalNumberOfFreeBytes, "int") */
	static SHGetDiskFreeSpaceEx(pszDirectoryName, pulFreeBytesAvailableToCaller, pulTotalNumberOfBytes, pulTotalNumberOfFreeBytes) => DllCall("Shell32\SHGetDiskFreeSpaceEx", "str", pszDirectoryName, "ptr", pulFreeBytesAvailableToCaller, "ptr", pulTotalNumberOfBytes, "ptr", pulTotalNumberOfFreeBytes, "int")

	/** @example DllCall("Shell32\SHGetDriveMedia", "wstr", pszDrive, "uint*", &pdwMediaContent, "int") */
	static SHGetDriveMedia(pszDrive, &pdwMediaContent) => DllCall("Shell32\SHGetDriveMedia", "wstr", pszDrive, "uint*", &pdwMediaContent, "int")

	/** @example DllCall("Shell32\SHGetFileInfo", "str", pszPath, "uint", dwFileAttributes, "ptr", psfi, "uint", cbFileInfo, "uint", uFlags, "uptr") */
	static SHGetFileInfo(pszPath, dwFileAttributes, psfi, cbFileInfo, uFlags) => DllCall("Shell32\SHGetFileInfo", "str", pszPath, "uint", dwFileAttributes, "ptr", psfi, "uint", cbFileInfo, "uint", uFlags, "uptr")

	/** @example DllCall("Shell32\SHGetFolderLocation", "ptr", hwndOwner, "int", nFolder, "ptr", hToken, "uint", dwReserved, "ptr", ppidl, "int") */
	static SHGetFolderLocation(hwndOwner, nFolder, hToken, dwReserved, ppidl) => DllCall("Shell32\SHGetFolderLocation", "ptr", hwndOwner, "int", nFolder, "ptr", hToken, "uint", dwReserved, "ptr", ppidl, "int")

	/** @example DllCall("Shell32\SHGetFolderPath", "ptr", hwndOwner, "int", nFolder, "ptr", hToken, "uint", dwFlags, "str", pszPath, "int") */
	static SHGetFolderPath(hwndOwner, nFolder, hToken, dwFlags, pszPath) => DllCall("Shell32\SHGetFolderPath", "ptr", hwndOwner, "int", nFolder, "ptr", hToken, "uint", dwFlags, "str", pszPath, "int")

	/** @example DllCall("Shell32\SHGetFolderPathAndSubDir", "ptr", hwnd, "int", csidl, "ptr", hToken, "uint", dwFlags, "str", pszSubDir, "str", pszPath, "int") */
	static SHGetFolderPathAndSubDir(hwnd, csidl, hToken, dwFlags, pszSubDir, pszPath) => DllCall("Shell32\SHGetFolderPathAndSubDir", "ptr", hwnd, "int", csidl, "ptr", hToken, "uint", dwFlags, "str", pszSubDir, "str", pszPath, "int")

	/** @example DllCall("Shell32\SHGetIDListFromObject", "ptr", punk, "ptr", ppidl, "int") */
	static SHGetIDListFromObject(punk, ppidl) => DllCall("Shell32\SHGetIDListFromObject", "ptr", punk, "ptr", ppidl, "int")

	/** @example DllCall("Shell32\SHGetIconOverlayIndex", "str", pszIconPath, "int", iIconIndex, "int") */
	static SHGetIconOverlayIndex(pszIconPath, iIconIndex) => DllCall("Shell32\SHGetIconOverlayIndex", "str", pszIconPath, "int", iIconIndex, "int")

	/** @example DllCall("Shell32\SHGetImageList", "int", iImageList, "ptr", riid, "ptr", ppv, "int") */
	static SHGetImageList(iImageList, riid, ppv) => DllCall("Shell32\SHGetImageList", "int", iImageList, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHGetInstanceExplorer", "ptr", ppunk, "int") */
	static SHGetInstanceExplorer(ppunk) => DllCall("Shell32\SHGetInstanceExplorer", "ptr", ppunk, "int")

	/** @example DllCall("Shell32\SHGetItemFromDataObject", "ptr", pdtobj, "uint", dwFlags, "ptr", riid, "ptr", ppv, "int") */
	static SHGetItemFromDataObject(pdtobj, dwFlags, riid, ppv) => DllCall("Shell32\SHGetItemFromDataObject", "ptr", pdtobj, "uint", dwFlags, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHGetItemFromObject", "ptr", punk, "ptr", riid, "ptr", ppv, "int") */
	static SHGetItemFromObject(punk, riid, ppv) => DllCall("Shell32\SHGetItemFromObject", "ptr", punk, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHGetKnownFolderIDList", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "ptr", ppidl, "int") */
	static SHGetKnownFolderIDList(rfid, dwFlags, hToken, ppidl) => DllCall("Shell32\SHGetKnownFolderIDList", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "ptr", ppidl, "int")

	/** @example DllCall("Shell32\SHGetKnownFolderItem", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "ptr", riid, "ptr", ppv, "int") */
	static SHGetKnownFolderItem(rfid, dwFlags, hToken, riid, ppv) => DllCall("Shell32\SHGetKnownFolderItem", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHGetKnownFolderPath", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "wstr", ppszPath, "int") */
	static SHGetKnownFolderPath(rfid, dwFlags, hToken, ppszPath) => DllCall("Shell32\SHGetKnownFolderPath", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "wstr", ppszPath, "int")

	/** @example DllCall("Shell32\SHGetLocalizedName", "wstr", pszPath, "ptr", pszResModule, "uint", cch, "int*", &pidsRes, "int") */
	static SHGetLocalizedName(pszPath, pszResModule, cch, &pidsRes) => DllCall("Shell32\SHGetLocalizedName", "wstr", pszPath, "ptr", pszResModule, "uint", cch, "int*", &pidsRes, "int")

	/** @example DllCall("Shell32\SHGetMalloc", "ptr", ppMalloc, "int") */
	static SHGetMalloc(ppMalloc) => DllCall("Shell32\SHGetMalloc", "ptr", ppMalloc, "int")

	/** @example DllCall("Shell32\SHGetNameFromIDList", "ptr", pidl, "uint", sigdnName, "wstr", ppszName, "int") */
	static SHGetNameFromIDList(pidl, sigdnName, ppszName) => DllCall("Shell32\SHGetNameFromIDList", "ptr", pidl, "uint", sigdnName, "wstr", ppszName, "int")

	/** @example DllCall("Shell32\SHGetNewLinkInfo", "str", pszLinkTo, "str", pszDir, "str", pszName, "int*", &pfMustCopy, "uint", uFlags, "int") */
	static SHGetNewLinkInfo(pszLinkTo, pszDir, pszName, &pfMustCopy, uFlags) => DllCall("Shell32\SHGetNewLinkInfo", "str", pszLinkTo, "str", pszDir, "str", pszName, "int*", &pfMustCopy, "uint", uFlags, "int")

	/** @example DllCall("Shell32\SHGetPathFromIDList", "ptr", pidl, "str", pszPath, "int") */
	static SHGetPathFromIDList(pidl, pszPath) => DllCall("Shell32\SHGetPathFromIDList", "ptr", pidl, "str", pszPath, "int")

	/** @example DllCall("Shell32\SHGetPathFromIDListEx", "ptr", pidl, "ptr", pszPath, "uint", cchPath, "int", uOpts, "int") */
	static SHGetPathFromIDListEx(pidl, pszPath, cchPath, uOpts) => DllCall("Shell32\SHGetPathFromIDListEx", "ptr", pidl, "ptr", pszPath, "uint", cchPath, "int", uOpts, "int")

	/** @example DllCall("Shell32\SHGetPropertyStoreForWindow", "ptr", hwnd, "ptr", riid, "ptr", ppv, "int") */
	static SHGetPropertyStoreForWindow(hwnd, riid, ppv) => DllCall("Shell32\SHGetPropertyStoreForWindow", "ptr", hwnd, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHGetPropertyStoreFromIDList", "ptr", pidl, "uint", flags, "ptr", riid, "ptr", ppv, "int") */
	static SHGetPropertyStoreFromIDList(pidl, flags, riid, ppv) => DllCall("Shell32\SHGetPropertyStoreFromIDList", "ptr", pidl, "uint", flags, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHGetPropertyStoreFromParsingName", "wstr", pszPath, "ptr", pbc, "uint", flags, "ptr", riid, "ptr", ppv, "int") */
	static SHGetPropertyStoreFromParsingName(pszPath, pbc, flags, riid, ppv) => DllCall("Shell32\SHGetPropertyStoreFromParsingName", "wstr", pszPath, "ptr", pbc, "uint", flags, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\SHGetRealIDL", "ptr", psf, "ptr", pidlSimple, "ptr", ppidlReal, "int") */
	static SHGetRealIDL(psf, pidlSimple, ppidlReal) => DllCall("Shell32\SHGetRealIDL", "ptr", psf, "ptr", pidlSimple, "ptr", ppidlReal, "int")

	/** @example DllCall("Shell32\SHGetSetFolderCustomSettings", "ptr", pfcs, "str", pszPath, "uint", dwReadWrite, "int") */
	static SHGetSetFolderCustomSettings(pfcs, pszPath, dwReadWrite) => DllCall("Shell32\SHGetSetFolderCustomSettings", "ptr", pfcs, "str", pszPath, "uint", dwReadWrite, "int")

	/** @example DllCall("Shell32\SHGetSetSettings", "ptr", lpss, "uint", dwMask, "int", bSet, "int") */
	static SHGetSetSettings(lpss, dwMask, bSet) => DllCall("Shell32\SHGetSetSettings", "ptr", lpss, "uint", dwMask, "int", bSet, "int")

	/** @example DllCall("Shell32\SHGetSettings", "ptr", lpsfs, "uint", dwMask, "int") */
	static SHGetSettings(lpsfs, dwMask) => DllCall("Shell32\SHGetSettings", "ptr", lpsfs, "uint", dwMask, "int")

	/** @example DllCall("Shell32\SHGetSpecialFolderLocation", "ptr", hwndOwner, "int", nFolder, "ptr", ppidl, "int") */
	static SHGetSpecialFolderLocation(hwndOwner, nFolder, ppidl) => DllCall("Shell32\SHGetSpecialFolderLocation", "ptr", hwndOwner, "int", nFolder, "ptr", ppidl, "int")

	/** @example DllCall("Shell32\SHGetSpecialFolderPath", "ptr", hwndOwner, "str", lpszPath, "int", csidl, "int", fCreate, "int") */
	static SHGetSpecialFolderPath(hwndOwner, lpszPath, csidl, fCreate) => DllCall("Shell32\SHGetSpecialFolderPath", "ptr", hwndOwner, "str", lpszPath, "int", csidl, "int", fCreate, "int")

	/** @example DllCall("Shell32\SHGetStockIconInfo", "uint", siid, "uint", uFlags, "ptr", psii, "int") */
	static SHGetStockIconInfo(siid, uFlags, psii) => DllCall("Shell32\SHGetStockIconInfo", "uint", siid, "uint", uFlags, "ptr", psii, "int")

	/** @example DllCall("Shell32\SHGetTemporaryPropertyForItem", "ptr", psi, "ptr", pk, "ptr", ppropvarInk, "int") */
	static SHGetTemporaryPropertyForItem(psi, pk, ppropvarInk) => DllCall("Shell32\SHGetTemporaryPropertyForItem", "ptr", psi, "ptr", pk, "ptr", ppropvarInk, "int")

	/** @example DllCall("Shell32\SHGetUnreadMailCount", "ptr", hKeyUser, "str", pszMailAddress, "uint*", &pdwCount, "ptr", pFileTime, "str", pszShellExecuteCommand, "int", cchShellExecuteCommand, "int") */
	static SHGetUnreadMailCount(hKeyUser, pszMailAddress, &pdwCount, pFileTime, pszShellExecuteCommand, cchShellExecuteCommand) => DllCall("Shell32\SHGetUnreadMailCount", "ptr", hKeyUser, "str", pszMailAddress, "uint*", &pdwCount, "ptr", pFileTime, "str", pszShellExecuteCommand, "int", cchShellExecuteCommand, "int")

	/** @example DllCall("Shell32\SHHandleUpdateImage", "ptr", pidlExtra, "int") */
	static SHHandleUpdateImage(pidlExtra) => DllCall("Shell32\SHHandleUpdateImage", "ptr", pidlExtra, "int")

	/** @example DllCall("Shell32\SHILCreateFromPath", "wstr", pszPath, "ptr", ppidl, "uint*", &rgflnOut, "int") */
	static SHILCreateFromPath(pszPath, ppidl, &rgflnOut) => DllCall("Shell32\SHILCreateFromPath", "wstr", pszPath, "ptr", ppidl, "uint*", &rgflnOut, "int")

	/** @example DllCall("Shell32\SHInvokePrinterCommand", "ptr", hwnd, "uint", uAction, "str", lpBuf1, "str", lpBuf2, "int", fModal, "int") */
	static SHInvokePrinterCommand(hwnd, uAction, lpBuf1, lpBuf2, fModal) => DllCall("Shell32\SHInvokePrinterCommand", "ptr", hwnd, "uint", uAction, "str", lpBuf1, "str", lpBuf2, "int", fModal, "int")

	/** @example DllCall("Shell32\SHIsFileAvailableOffline", "wstr", pszPath, "ptr", pdwStatus, "int") */
	static SHIsFileAvailableOffline(pszPath, pdwStatus) => DllCall("Shell32\SHIsFileAvailableOffline", "wstr", pszPath, "ptr", pdwStatus, "int")

	/** @example DllCall("Shell32\SHLimitInputEdit", "ptr", hwndEdit, "ptr", psf, "int") */
	static SHLimitInputEdit(hwndEdit, psf) => DllCall("Shell32\SHLimitInputEdit", "ptr", hwndEdit, "ptr", psf, "int")

	/** @example DllCall("Shell32\SHLoadInProc", "ptr", rclsid, "int") */
	static SHLoadInProc(rclsid) => DllCall("Shell32\SHLoadInProc", "ptr", rclsid, "int")

	/** @example DllCall("Shell32\SHLoadNonloadedIconOverlayIdentifiers", "int") */
	static SHLoadNonloadedIconOverlayIdentifiers() => DllCall("Shell32\SHLoadNonloadedIconOverlayIdentifiers", "int")

	/** @example DllCall("Shell32\SHMapPIDLToSystemImageListIndex", "ptr", psf, "ptr", pidl, "int*", &piIndex, "int") */
	static SHMapPIDLToSystemImageListIndex(psf, pidl, &piIndex) => DllCall("Shell32\SHMapPIDLToSystemImageListIndex", "ptr", psf, "ptr", pidl, "int*", &piIndex, "int")

	/** @example DllCall("Shell32\SHMultiFileProperties", "ptr", pdtobj, "uint", dwFlags, "int") */
	static SHMultiFileProperties(pdtobj, dwFlags) => DllCall("Shell32\SHMultiFileProperties", "ptr", pdtobj, "uint", dwFlags, "int")

	/** @example DllCall("Shell32\SHObjectProperties", "ptr", hwnd, "uint", shopObjectType, "wstr", pszObjectName, "wstr", pszPropertyPage, "int") */
	static SHObjectProperties(hwnd, shopObjectType, pszObjectName, pszPropertyPage) => DllCall("Shell32\SHObjectProperties", "ptr", hwnd, "uint", shopObjectType, "wstr", pszObjectName, "wstr", pszPropertyPage, "int")

	/** @example DllCall("Shell32\SHOpenFolderAndSelectItems", "ptr", pidlFolder, "uint", cidl, "ptr", apidl, "uint", dwFlags, "int") */
	static SHOpenFolderAndSelectItems(pidlFolder, cidl, apidl, dwFlags) => DllCall("Shell32\SHOpenFolderAndSelectItems", "ptr", pidlFolder, "uint", cidl, "ptr", apidl, "uint", dwFlags, "int")

	/** @example DllCall("Shell32\SHOpenPropSheet", "str", pszCaption, "ptr", ahkeys, "uint", ckeys, "ptr", pclsidDef, "ptr", pdtobj, "ptr", psb, "str", pStartPage, "int") */
	static SHOpenPropSheet(pszCaption, ahkeys, ckeys, pclsidDef, pdtobj, psb, pStartPage) => DllCall("Shell32\SHOpenPropSheet", "str", pszCaption, "ptr", ahkeys, "uint", ckeys, "ptr", pclsidDef, "ptr", pdtobj, "ptr", psb, "str", pStartPage, "int")

	/** @example DllCall("Shell32\SHOpenWithDialog", "ptr", hwndParent, "ptr", poainfo, "int") */
	static SHOpenWithDialog(hwndParent, poainfo) => DllCall("Shell32\SHOpenWithDialog", "ptr", hwndParent, "ptr", poainfo, "int")

	/** @example DllCall("Shell32\SHParseDisplayName", "wstr", pszName, "ptr", pbc, "ptr", ppidl, "uint", sfgaoIn, "ptr", psfgaoOut, "int") */
	static SHParseDisplayName(pszName, pbc, ppidl, sfgaoIn, psfgaoOut) => DllCall("Shell32\SHParseDisplayName", "wstr", pszName, "ptr", pbc, "ptr", ppidl, "uint", sfgaoIn, "ptr", psfgaoOut, "int")

	/** @example DllCall("Shell32\SHPathPrepareForWrite", "ptr", hwnd, "ptr", punkEnableModless, "str", pszPath, "uint", SHPPFW_DEFAULT, "int") */
	static SHPathPrepareForWrite(hwnd, punkEnableModless, pszPath, SHPPFW_DEFAULT) => DllCall("Shell32\SHPathPrepareForWrite", "ptr", hwnd, "ptr", punkEnableModless, "str", pszPath, "uint", SHPPFW_DEFAULT, "int")

	/** @example DllCall("Shell32\SHPropStgCreate", "ptr", psstg, "ptr", fmtid, "ptr", pclsid, "uint", grfFlags, "uint", grfMode, "uint", dwDisposition, "ptr", ppstg, "uint*", &puCodePage, "int") */
	static SHPropStgCreate(psstg, fmtid, pclsid, grfFlags, grfMode, dwDisposition, ppstg, &puCodePage) => DllCall("Shell32\SHPropStgCreate", "ptr", psstg, "ptr", fmtid, "ptr", pclsid, "uint", grfFlags, "uint", grfMode, "uint", dwDisposition, "ptr", ppstg, "uint*", &puCodePage, "int")

	/** @example DllCall("Shell32\SHPropStgReadMultiple", "ptr", pps, "uint", uCodePage, "uint", cpspec, "ptr", rgpspec, "ptr", rgvar, "int") */
	static SHPropStgReadMultiple(pps, uCodePage, cpspec, rgpspec, rgvar) => DllCall("Shell32\SHPropStgReadMultiple", "ptr", pps, "uint", uCodePage, "uint", cpspec, "ptr", rgpspec, "ptr", rgvar, "int")

	/** @example DllCall("Shell32\SHPropStgWriteMultiple", "ptr", pps, "uint*", &uCodePage, "uint", cpspec, "ptr", rgpspec, "ptr", rgvar, "uint", propidNameFirst, "int") */
	static SHPropStgWriteMultiple(pps, &uCodePage, cpspec, rgpspec, rgvar, propidNameFirst) => DllCall("Shell32\SHPropStgWriteMultiple", "ptr", pps, "uint*", &uCodePage, "uint", cpspec, "ptr", rgpspec, "ptr", rgvar, "uint", propidNameFirst, "int")

	/** @example DllCall("Shell32\SHQueryRecycleBin", "str", pszRootPath, "ptr", pSHQueryRBInfo, "int") */
	static SHQueryRecycleBin(pszRootPath, pSHQueryRBInfo) => DllCall("Shell32\SHQueryRecycleBin", "str", pszRootPath, "ptr", pSHQueryRBInfo, "int")

	/** @example DllCall("Shell32\SHQueryUserNotificationState", "ptr", pquns, "int") */
	static SHQueryUserNotificationState(pquns) => DllCall("Shell32\SHQueryUserNotificationState", "ptr", pquns, "int")

	/** @example DllCall("Shell32\SHRemoveLocalizedName", "wstr", pszPath, "int") */
	static SHRemoveLocalizedName(pszPath) => DllCall("Shell32\SHRemoveLocalizedName", "wstr", pszPath, "int")

	/** @example DllCall("Shell32\SHReplaceFromPropSheetExtArray", "ptr", hpsxa, "uint", uPageID, "ptr", lpfnReplaceWith, "uptr", lParam, "uint") */
	static SHReplaceFromPropSheetExtArray(hpsxa, uPageID, lpfnReplaceWith, lParam) => DllCall("Shell32\SHReplaceFromPropSheetExtArray", "ptr", hpsxa, "uint", uPageID, "ptr", lpfnReplaceWith, "uptr", lParam, "uint")

	/** @example DllCall("Shell32\SHResolveLibrary", "ptr", psiLibrary, "int") */
	static SHResolveLibrary(psiLibrary) => DllCall("Shell32\SHResolveLibrary", "ptr", psiLibrary, "int")

	/** @example DllCall("Shell32\SHRestricted", "uint", rest, "uint") */
	static SHRestricted(rest) => DllCall("Shell32\SHRestricted", "uint", rest, "uint")

	/** @example DllCall("Shell32\SHSetDefaultProperties", "ptr", hwnd, "ptr", psi, "uint", dwFileOpFlags, "ptr", pfops, "int") */
	static SHSetDefaultProperties(hwnd, psi, dwFileOpFlags, pfops) => DllCall("Shell32\SHSetDefaultProperties", "ptr", hwnd, "ptr", psi, "uint", dwFileOpFlags, "ptr", pfops, "int")

	/** @example DllCall("Shell32\SHSetFolderPath", "int", csidl, "ptr", hToken, "uint", dwFlags, "str", pszPath, "int") */
	static SHSetFolderPath(csidl, hToken, dwFlags, pszPath) => DllCall("Shell32\SHSetFolderPath", "int", csidl, "ptr", hToken, "uint", dwFlags, "str", pszPath, "int")

	/** @example DllCall("Shell32\SHSetInstanceExplorer", "ptr", pUnk, "int") */
	static SHSetInstanceExplorer(pUnk) => DllCall("Shell32\SHSetInstanceExplorer", "ptr", pUnk, "int")

	/** @example DllCall("Shell32\SHSetKnownFolderPath", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "wstr", pszPath, "int") */
	static SHSetKnownFolderPath(rfid, dwFlags, hToken, pszPath) => DllCall("Shell32\SHSetKnownFolderPath", "ptr", rfid, "uint", dwFlags, "ptr", hToken, "wstr", pszPath, "int")

	/** @example DllCall("Shell32\SHSetLocalizedName", "wstr", pszPath, "wstr", pszResModule, "int", idsRes, "int") */
	static SHSetLocalizedName(pszPath, pszResModule, idsRes) => DllCall("Shell32\SHSetLocalizedName", "wstr", pszPath, "wstr", pszResModule, "int", idsRes, "int")

	/** @example DllCall("Shell32\SHSetTemporaryPropertyForItem", "ptr", psi, "ptr", propkey, "ptr", propvar, "int") */
	static SHSetTemporaryPropertyForItem(psi, propkey, propvar) => DllCall("Shell32\SHSetTemporaryPropertyForItem", "ptr", psi, "ptr", propkey, "ptr", propvar, "int")

	/** @example DllCall("Shell32\SHSetUnreadMailCount", "str", pszMailAddress, "uint", dwCount, "str", pszShellExecuteCommand, "int") */
	static SHSetUnreadMailCount(pszMailAddress, dwCount, pszShellExecuteCommand) => DllCall("Shell32\SHSetUnreadMailCount", "str", pszMailAddress, "uint", dwCount, "str", pszShellExecuteCommand, "int")

	/** @example DllCall("Shell32\SHShellFolderView_Message", "ptr", hwndMain, "uint", uMsg, "uptr", lParam, "ptr") */
	static SHShellFolderView_Message(hwndMain, uMsg, lParam) => DllCall("Shell32\SHShellFolderView_Message", "ptr", hwndMain, "uint", uMsg, "uptr", lParam, "ptr")

	/** @example DllCall("Shell32\SHShowManageLibraryUI", "ptr", psiLibrary, "ptr", hwndOwner, "wstr", pszTitle, "wstr", pszInstruction, "uint", lmdOptions, "int") */
	static SHShowManageLibraryUI(psiLibrary, hwndOwner, pszTitle, pszInstruction, lmdOptions) => DllCall("Shell32\SHShowManageLibraryUI", "ptr", psiLibrary, "ptr", hwndOwner, "wstr", pszTitle, "wstr", pszInstruction, "uint", lmdOptions, "int")

	/** @example DllCall("Shell32\SHSimpleIDListFromPath", "wstr", pszPath, "ptr") */
	static SHSimpleIDListFromPath(pszPath) => DllCall("Shell32\SHSimpleIDListFromPath", "wstr", pszPath, "ptr")

	/** @example DllCall("Shell32\SHStartNetConnectionDialog", "ptr", hwnd, "str", pszRemoteName, "uint", dwType, "int") */
	static SHStartNetConnectionDialog(hwnd, pszRemoteName, dwType) => DllCall("Shell32\SHStartNetConnectionDialog", "ptr", hwnd, "str", pszRemoteName, "uint", dwType, "int")

	/** @example DllCall("Shell32\SHTestTokenMembership", "ptr", hToken, "uint", ulRID, "int") */
	static SHTestTokenMembership(hToken, ulRID) => DllCall("Shell32\SHTestTokenMembership", "ptr", hToken, "uint", ulRID, "int")

	/** @example DllCall("Shell32\SHUpdateImage", "str", pszHashItem, "int", iIndex, "uint", uFlags, "int", iImageIndex, "int") */
	static SHUpdateImage(pszHashItem, iIndex, uFlags, iImageIndex) => DllCall("Shell32\SHUpdateImage", "str", pszHashItem, "int", iIndex, "uint", uFlags, "int", iImageIndex, "int")

	/** @example DllCall("Shell32\SHValidateUNC", "ptr", hwndOwner, "ptr", pszFile, "uint", fConnect, "int") */
	static SHValidateUNC(hwndOwner, pszFile, fConnect) => DllCall("Shell32\SHValidateUNC", "ptr", hwndOwner, "ptr", pszFile, "uint", fConnect, "int")

	/** @example DllCall("Shell32\SetCurrentProcessExplicitAppUserModelID", "wstr", AppID, "int") */
	static SetCurrentProcessExplicitAppUserModelID(AppID) => DllCall("Shell32\SetCurrentProcessExplicitAppUserModelID", "wstr", AppID, "int")

	/** @example DllCall("Shell32\ShellAbout", "ptr", hWnd, "str", szApp, "str", szOtherStuff, "ptr", hIcon, "int") */
	static ShellAbout(hWnd, szApp, szOtherStuff, hIcon) => DllCall("Shell32\ShellAbout", "ptr", hWnd, "str", szApp, "str", szOtherStuff, "ptr", hIcon, "int")

	/** @example DllCall("Shell32\ShellExecute", "ptr", hwnd, "str", lpOperation, "str", lpFile, "str", lpParameters, "str", lpDirectory, "int", nShowCmd, "ptr") */
	static ShellExecute(hwnd, lpOperation, lpFile, lpParameters, lpDirectory, nShowCmd) => DllCall("Shell32\ShellExecute", "ptr", hwnd, "str", lpOperation, "str", lpFile, "str", lpParameters, "str", lpDirectory, "int", nShowCmd, "ptr")

	/** @example DllCall("Shell32\ShellExecuteEx", "ptr", pExecInfo, "int") */
	static ShellExecuteEx(pExecInfo) => DllCall("Shell32\ShellExecuteEx", "ptr", pExecInfo, "int")

	/** @example DllCall("Shell32\Shell_GetCachedImageIndex", "wstr", pwszIconPath, "int", iIconIndex, "uint", uIconFlags, "int") */
	static Shell_GetCachedImageIndex(pwszIconPath, iIconIndex, uIconFlags) => DllCall("Shell32\Shell_GetCachedImageIndex", "wstr", pwszIconPath, "int", iIconIndex, "uint", uIconFlags, "int")

	/** @example DllCall("Shell32\Shell_GetImageLists", "ptr", phiml, "ptr", phimlSmall, "int") */
	static Shell_GetImageLists(phiml, phimlSmall) => DllCall("Shell32\Shell_GetImageLists", "ptr", phiml, "ptr", phimlSmall, "int")

	/** @example DllCall("Shell32\Shell_MergeMenus", "ptr", hmDst, "ptr", hmSrc, "uint", uInsert, "uint", uIDAdjust, "uint", uIDAdjustMax, "uint", uFlags, "uint") */
	static Shell_MergeMenus(hmDst, hmSrc, uInsert, uIDAdjust, uIDAdjustMax, uFlags) => DllCall("Shell32\Shell_MergeMenus", "ptr", hmDst, "ptr", hmSrc, "uint", uInsert, "uint", uIDAdjust, "uint", uIDAdjustMax, "uint", uFlags, "uint")

	/** @example DllCall("Shell32\Shell_NotifyIcon", "uint", dwMessage, "ptr", lpdata, "int") */
	static Shell_NotifyIcon(dwMessage, lpdata) => DllCall("Shell32\Shell_NotifyIcon", "uint", dwMessage, "ptr", lpdata, "int")

	/** @example DllCall("Shell32\Shell_NotifyIconGetRect", "ptr", identifier, "ptr", iconLocation, "int") */
	static Shell_NotifyIconGetRect(identifier, iconLocation) => DllCall("Shell32\Shell_NotifyIconGetRect", "ptr", identifier, "ptr", iconLocation, "int")

	/** @example DllCall("Shell32\SignalFileOpen", "ptr", pidl, "int") */
	static SignalFileOpen(pidl) => DllCall("Shell32\SignalFileOpen", "ptr", pidl, "int")

	/** @example DllCall("Shell32\StgMakeUniqueName", "ptr", pstgParent, "wstr", pszFileSpec, "uint", grfMode, "ptr", riid, "ptr", ppv, "int") */
	static StgMakeUniqueName(pstgParent, pszFileSpec, grfMode, riid, ppv) => DllCall("Shell32\StgMakeUniqueName", "ptr", pstgParent, "wstr", pszFileSpec, "uint", grfMode, "ptr", riid, "ptr", ppv, "int")

	/** @example DllCall("Shell32\WOWShellExecute", "ptr", hwnd, "str", lpOperation, "str", lpFile, "str", lpParameters, "str", lpDirectory, "int", nShowCmd, "ptr", lpfnCBWinExec, "ptr") */
	static WOWShellExecute(hwnd, lpOperation, lpFile, lpParameters, lpDirectory, nShowCmd, lpfnCBWinExec) => DllCall("Shell32\WOWShellExecute", "ptr", hwnd, "str", lpOperation, "str", lpFile, "str", lpParameters, "str", lpDirectory, "int", nShowCmd, "ptr", lpfnCBWinExec, "ptr")

	/** @example DllCall("Shell32\Win32DeleteFile", "wstr", pszFileName, "int") */
	static Win32DeleteFile(pszFileName) => DllCall("Shell32\Win32DeleteFile", "wstr", pszFileName, "int")

	/** @example DllCall("Shell32\WriteCabinetState", "ptr", pcs, "int") */
	static WriteCabinetState(pcs) => DllCall("Shell32\WriteCabinetState", "ptr", pcs, "int")

	;#endregion

	;#region __UxTheme

	static BeginBufferedAnimation(hwnd, hdcTarget, rcTarget, dwFormat, pPaintParams, pAnimationParams, phdcFrom, phdcTo) => DllCall("UxTheme\BeginBufferedAnimation", "ptr", hwnd, "ptr", hdcTarget, "ptr", rcTarget, "uint", dwFormat, "ptr", pPaintParams, "ptr", pAnimationParams, "ptr", phdcFrom, "ptr", phdcTo, "ptr")

	static BeginBufferedPaint(hdcTarget, prcTarget, dwFormat, pPaintParams, phdc) => DllCall("UxTheme\BeginBufferedPaint", "ptr", hdcTarget, "ptr", prcTarget, "uint", dwFormat, "ptr", pPaintParams, "ptr", phdc, "ptr")

	static BeginPanningFeedback(hwnd) => DllCall("UxTheme\BeginPanningFeedback", "ptr", hwnd, "int")

	static BufferedPaintClear(hBufferedPaint, prc) => DllCall("UxTheme\BufferedPaintClear", "ptr", hBufferedPaint, "ptr", prc, "int")

	static BufferedPaintInit() => DllCall("UxTheme\BufferedPaintInit", "int")

	static BufferedPaintRenderAnimation(hwnd, hdcTarget) => DllCall("UxTheme\BufferedPaintRenderAnimation", "ptr", hwnd, "ptr", hdcTarget, "int")

	static BufferedPaintSetAlpha(hBufferedPaint, prc, alpha) => DllCall("UxTheme\BufferedPaintSetAlpha", "ptr", hBufferedPaint, "ptr", prc, "uchar", alpha, "int")

	static BufferedPaintStopAllAnimations(hwnd) => DllCall("UxTheme\BufferedPaintStopAllAnimations", "ptr", hwnd, "int")

	static BufferedPaintUnInit() => DllCall("UxTheme\BufferedPaintUnInit", "int")

	static CloseThemeData(hTheme) => DllCall("UxTheme\CloseThemeData", "ptr", hTheme, "int")

	static DrawThemeBackground(hTheme, hdc, iPartId, iStateId, pRect, pClipRect) => DllCall("UxTheme\DrawThemeBackground", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pRect, "ptr", pClipRect, "int")

	static DrawThemeBackgroundEx(hTheme, hdc, iPartId, iStateId, pRect, pOptions) => DllCall("UxTheme\DrawThemeBackgroundEx", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pRect, "ptr", pOptions, "int")

	static DrawThemeEdge(hTheme, hdc, iPartId, iStateId, pDestRect, uEdge, uFlags, pContentRect) => DllCall("UxTheme\DrawThemeEdge", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pDestRect, "uint", uEdge, "uint", uFlags, "ptr", pContentRect, "int")

	static DrawThemeIcon(hTheme, hdc, iPartId, iStateId, pRect, himl, iImageIndex) => DllCall("UxTheme\DrawThemeIcon", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pRect, "ptr", himl, "int", iImageIndex, "int")

	static DrawThemeParentBackground(hwnd, hdc, prc) => DllCall("UxTheme\DrawThemeParentBackground", "ptr", hwnd, "ptr", hdc, "ptr", prc, "int")

	static DrawThemeParentBackgroundEx(hwnd, hdc, dwFlags, prc) => DllCall("UxTheme\DrawThemeParentBackgroundEx", "ptr", hwnd, "ptr", hdc, "uint", dwFlags, "ptr", prc, "int")

	static DrawThemeText(hTheme, hdc, iPartId, iStateId, pszText, iCharCount, dwTextFlags, dwTextFlags2, pRect) => DllCall("UxTheme\DrawThemeText", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "wstr", pszText, "int", iCharCount, "uint", dwTextFlags, "uint", dwTextFlags2, "ptr", pRect, "int")

	static DrawThemeTextEx(hTheme, hdc, iPartId, iStateId, pszText, iCharCount, dwFlags, pRect, pOptions) => DllCall("UxTheme\DrawThemeTextEx", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pszText, "int", iCharCount, "uint", dwFlags, "ptr", pRect, "ptr", pOptions, "int")

	static EnableThemeDialogTexture(hwnd, dwFlags) => DllCall("UxTheme\EnableThemeDialogTexture", "ptr", hwnd, "uint", dwFlags, "int")

	static EnableTheming(fEnable) => DllCall("UxTheme\EnableTheming", "int", fEnable, "int")

	static EndBufferedAnimation(hbpAnimation, fUpdateTarget) => DllCall("UxTheme\EndBufferedAnimation", "ptr", hbpAnimation, "int", fUpdateTarget, "int")

	static EndBufferedPaint(hBufferedPaint, fUpdateTarget) => DllCall("UxTheme\EndBufferedPaint", "ptr", hBufferedPaint, "int", fUpdateTarget, "int")

	static EndPanningFeedback(hwnd, fAnimateBack) => DllCall("UxTheme\EndPanningFeedback", "ptr", hwnd, "int", fAnimateBack, "int")

	static GetBufferedPaintBits(hBufferedPaint, ppbBuffer, &pcxRow) => DllCall("UxTheme\GetBufferedPaintBits", "ptr", hBufferedPaint, "ptr", ppbBuffer, "int*", &pcxRow, "int")

	static GetBufferedPaintDC(hBufferedPaint) => DllCall("UxTheme\GetBufferedPaintDC", "ptr", hBufferedPaint, "ptr")

	static GetBufferedPaintTargetDC(hBufferedPaint) => DllCall("UxTheme\GetBufferedPaintTargetDC", "ptr", hBufferedPaint, "ptr")

	static GetBufferedPaintTargetRect(hBufferedPaint, prc) => DllCall("UxTheme\GetBufferedPaintTargetRect", "ptr", hBufferedPaint, "ptr", prc, "int")

	static GetCurrentThemeName(pszThemeFileName, dwMaxNameChars, pszColorBuff, cchMaxColorChars, pszSizeBuff, cchMaxSizeChars) => DllCall("UxTheme\GetCurrentThemeName", "wstr", pszThemeFileName, "int", dwMaxNameChars, "wstr", pszColorBuff, "int", cchMaxColorChars, "wstr", pszSizeBuff, "int", cchMaxSizeChars, "int")

	static GetThemeAppProperties() => DllCall("UxTheme\GetThemeAppProperties", "uint")

	static GetThemeBackgroundContentRect(hTheme, hdc, iPartId, iStateId, pBoundingRect, pContentRect) => DllCall("UxTheme\GetThemeBackgroundContentRect", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pBoundingRect, "ptr", pContentRect, "int")

	static GetThemeBackgroundExtent(hTheme, hdc, iPartId, iStateId, pContentRect, pExtentRect) => DllCall("UxTheme\GetThemeBackgroundExtent", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pContentRect, "ptr", pExtentRect, "int")

	static GetThemeBackgroundRegion(hTheme, hdc, iPartId, iStateId, pRect, pRegion) => DllCall("UxTheme\GetThemeBackgroundRegion", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", pRect, "ptr", pRegion, "int")

	static GetThemeBitmap(hTheme, iPartId, iStateId, iPropId, dwFlags, phBitmap) => DllCall("UxTheme\GetThemeBitmap", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "uint", dwFlags, "ptr", phBitmap, "int")

	static GetThemeBool(hTheme, iPartId, iStateId, iPropId, &pfVal) => DllCall("UxTheme\GetThemeBool", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "int*", &pfVal, "int")

	static GetThemeColor(hTheme, iPartId, iStateId, iPropId, &pColor) => DllCall("UxTheme\GetThemeColor", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "uint*", &pColor, "int")

	static GetThemeDocumentationProperty(pszThemeName, pszPropertyName, pszValueBuff, cchMaxValChars) => DllCall("UxTheme\GetThemeDocumentationProperty", "wstr", pszThemeName, "wstr", pszPropertyName, "wstr", pszValueBuff, "int", cchMaxValChars, "int")

	static GetThemeEnumValue(hTheme, iPartId, iStateId, iPropId, &piVal) => DllCall("UxTheme\GetThemeEnumValue", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "int*", &piVal, "int")

	static GetThemeFilename(hTheme, iPartId, iStateId, iPropId, pszThemeFilename, cchMaxBuffChars) => DllCall("UxTheme\GetThemeFilename", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "wstr", pszThemeFilename, "int", cchMaxBuffChars, "int")

	static GetThemeFont(hTheme, hdc, iPartId, iStateId, iPropId, pFont) => DllCall("UxTheme\GetThemeFont", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "int", iPropId, "ptr", pFont, "int")

	static GetThemeInt(hTheme, iPartId, iStateId, iPropId, &piVal) => DllCall("UxTheme\GetThemeInt", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "int*", &piVal, "int")

	static GetThemeIntList(hTheme, iPartId, iStateId, iPropId, pIntList) => DllCall("UxTheme\GetThemeIntList", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "ptr", pIntList, "int")

	static GetThemeMargins(hTheme, hdc, iPartId, iStateId, iPropId, prc, pMargins) => DllCall("UxTheme\GetThemeMargins", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "int", iPropId, "ptr", prc, "ptr", pMargins, "int")

	static GetThemeMetric(hTheme, hdc, iPartId, iStateId, iPropId, &piVal) => DllCall("UxTheme\GetThemeMetric", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "int", iPropId, "int*", &piVal, "int")

	static GetThemePartSize(hTheme, hdc, iPartId, iStateId, prc, eSize, psz) => DllCall("UxTheme\GetThemePartSize", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", prc, "uint", eSize, "ptr", psz, "int")

	static GetThemePosition(hTheme, iPartId, iStateId, iPropId, pPoint) => DllCall("UxTheme\GetThemePosition", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "ptr", pPoint, "int")

	static GetThemePropertyOrigin(hTheme, iPartId, iStateId, iPropId, pOrigin) => DllCall("UxTheme\GetThemePropertyOrigin", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "ptr", pOrigin, "int")

	static GetThemeRect(hTheme, iPartId, iStateId, iPropId, pRect) => DllCall("UxTheme\GetThemeRect", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "ptr", pRect, "int")

	static GetThemeStream(hTheme, iPartId, iStateId, iPropId, ppvStream, &pcbStream, hInst) => DllCall("UxTheme\GetThemeStream", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "ptr", ppvStream, "uint*", &pcbStream, "ptr", hInst, "int")

	static GetThemeString(hTheme, iPartId, iStateId, iPropId, pszBuff, cchMaxBuffChars) => DllCall("UxTheme\GetThemeString", "ptr", hTheme, "int", iPartId, "int", iStateId, "int", iPropId, "wstr", pszBuff, "int", cchMaxBuffChars, "int")

	static GetThemeSysBool(hTheme, iBoolID) => DllCall("UxTheme\GetThemeSysBool", "ptr", hTheme, "int", iBoolID, "int")

	static GetThemeSysColor(hTheme, iColorID) => DllCall("UxTheme\GetThemeSysColor", "ptr", hTheme, "int", iColorID, "uint")

	static GetThemeSysColorBrush(hTheme, iColorID) => DllCall("UxTheme\GetThemeSysColorBrush", "ptr", hTheme, "int", iColorID, "ptr")

	static GetThemeSysFont(hTheme, iFontID, plf) => DllCall("UxTheme\GetThemeSysFont", "ptr", hTheme, "int", iFontID, "ptr", plf, "int")

	static GetThemeSysInt(hTheme, iIntID, &piValue) => DllCall("UxTheme\GetThemeSysInt", "ptr", hTheme, "int", iIntID, "int*", &piValue, "int")

	static GetThemeSysSize(hTheme, iSizeID) => DllCall("UxTheme\GetThemeSysSize", "ptr", hTheme, "int", iSizeID, "int")

	static GetThemeSysString(hTheme, iStringID, pszStringBuff, cchMaxStringChars) => DllCall("UxTheme\GetThemeSysString", "ptr", hTheme, "int", iStringID, "wstr", pszStringBuff, "int", cchMaxStringChars, "int")

	static GetThemeTextExtent(hTheme, hdc, iPartId, iStateId, pszText, iCharCount, dwTextFlags, pBoundingRect, pExtentRect) => DllCall("UxTheme\GetThemeTextExtent", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "wstr", pszText, "int", iCharCount, "uint", dwTextFlags, "ptr", pBoundingRect, "ptr", pExtentRect, "int")

	static GetThemeTextMetrics(hTheme, hdc, iPartId, iStateId, ptm) => DllCall("UxTheme\GetThemeTextMetrics", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "ptr", ptm, "int")

	static GetThemeTransitionDuration(hTheme, iPartId, iStateIdFrom, iStateIdTo, iPropId, &pdwDuration) => DllCall("UxTheme\GetThemeTransitionDuration", "ptr", hTheme, "int", iPartId, "int", iStateIdFrom, "int", iStateIdTo, "int", iPropId, "uint*", &pdwDuration, "int")

	static GetWindowTheme(hwnd) => DllCall("UxTheme\GetWindowTheme", "ptr", hwnd, "ptr")

	static HitTestThemeBackground(hTheme, hdc, iPartId, iStateId, dwOptions, pRect, hrgn, ptTest, &pwHitTestCode) => DllCall("UxTheme\HitTestThemeBackground", "ptr", hTheme, "ptr", hdc, "int", iPartId, "int", iStateId, "uint", dwOptions, "ptr", pRect, "ptr", hrgn, "uint64", ptTest, "ushort*", &pwHitTestCode, "int")

	static IsAppThemed() => DllCall("UxTheme\IsAppThemed", "int")

	static IsCompositionActive() => DllCall("UxTheme\IsCompositionActive", "int")

	static IsThemeActive() => DllCall("UxTheme\IsThemeActive", "int")

	static IsThemeBackgroundPartiallyTransparent(hTheme, iPartId, iStateId) => DllCall("UxTheme\IsThemeBackgroundPartiallyTransparent", "ptr", hTheme, "int", iPartId, "int", iStateId, "int")

	static IsThemeDialogTextureEnabled(hwnd) => DllCall("UxTheme\IsThemeDialogTextureEnabled", "ptr", hwnd, "int")

	static IsThemePartDefined(hTheme, iPartId, iStateId) => DllCall("UxTheme\IsThemePartDefined", "ptr", hTheme, "int", iPartId, "int", iStateId, "int")

	static OpenThemeData(hwnd, pszClassList) => DllCall("UxTheme\OpenThemeData", "ptr", hwnd, "ptr", StrPtr(pszClassList), "ptr")

	static OpenThemeDataEx(hwnd, pszClassIdList := "", dwFlags := 0 | 1) => DllCall("UxTheme\OpenThemeDataEx", "ptr", hwnd, "ptr", pszClassIdList ? StrPtr(pszClassIdList) : 0, "uint", dwFlags, "ptr")

	static SetThemeAppProperties(dwFlags) => DllCall("UxTheme\SetThemeAppProperties", "uint", dwFlags, "int")

	static SetWindowTheme(hwnd, pszSubAppName, pszSubIdList := "") => (!DllCall("uxtheme\SetWindowTheme"
				, "ptr", hwnd
				, "ptr", StrPtr(pszSubAppName)
				, "ptr", pszSubIdList ? StrPtr(pszSubIdList) : 0) ? true : false)

	static SetWindowThemeAttribute(hwnd, eAttribute, pvAttribute, cbAttribute) => DllCall("UxTheme\SetWindowThemeAttribute", "ptr", hwnd, "int", eAttribute, "ptr", pvAttribute, "uint", cbAttribute, "int")

	static UpdatePanningFeedback(hwnd, lTotalOverpanOffsetX, lTotalOverpanOffsetY, fInInertia) => DllCall("UxTheme\UpdatePanningFeedback", "ptr", hwnd, "int", lTotalOverpanOffsetX, "int", lTotalOverpanOffsetY, "int", fInInertia, "int")
	
	;#endregion

	;#region __Shlwapi

	static AssocCreate(clsid, riid, ppv) => DllCall("Shlwapi\AssocCreate", "ptr", clsid, "ptr", riid, "ptr", ppv, "int")

	static AssocGetPerceivedType(pszExt, ptype, pflag, ppszType) => DllCall("Shlwapi\AssocGetPerceivedType", "wstr", pszExt, "ptr", ptype, "ptr", pflag, "wstr", ppszType, "int")

	static AssocIsDangerous(pszAssoc)=> DllCall("Shlwapi\AssocIsDangerous", "wstr", pszAssoc, "int")

	static AssocQueryKey(flags, key, pszAssoc, pszExtra, phkeyOut) => DllCall("Shlwapi\AssocQueryKey", "int", flags, "int", key, "str", pszAssoc, "str", pszExtra, "ptr", phkeyOut, "int")

	static AssocQueryString(flags, str, pszAssoc, pszExtra, pszOut, &pcchOut)=> DllCall("Shlwapi\AssocQueryString", "int", flags, "int", str, "str", pszAssoc, "str", pszExtra, "str", pszOut, "uint*", &pcchOut, "int")

	static AssocQueryStringByKey(flags, str, hkAssoc, pszExtra, pszOut, &pcchOut)=> DllCall("Shlwapi\AssocQueryStringByKey", "int", flags, "int", str, "ptr", hkAssoc, "str", pszExtra, "str", pszOut, "uint*", &pcchOut, "int")

	static ChrCmpI(w1, w2) => DllCall("Shlwapi\ChrCmpI", "short", w1, "short", w2, "int")

	static ColorAdjustLuma(clrRGB, n, fScale)=> DllCall("Shlwapi\ColorAdjustLuma", "uint", clrRGB, "int", n, "int", fScale, "uint")

	static ColorHLSToRGB(wHue, wLuminance, wSaturation)=> DllCall("Shlwapi\ColorHLSToRGB", "ushort", wHue, "ushort", wLuminance, "ushort", wSaturation, "uint")

	static ColorRGBToHLS(clrRGB, &pwHue, &pwLuminance, &pwSaturation)=> DllCall("Shlwapi\ColorRGBToHLS", "uint", clrRGB, "ushort*", &pwHue, "ushort*", &pwLuminance, "ushort*", &pwSaturation, "int")

	static ConnectToConnectionPoint(punk, riidEvent, fConnect, punkTarget, &pdwCookie, ppcpOut)=> DllCall("Shlwapi\ConnectToConnectionPoint", "ptr", punk, "ptr", riidEvent, "int", fConnect, "ptr", punkTarget, "uint*", &pdwCookie, "ptr", ppcpOut, "int")

	static DllInstall(bInstall, pszCmdLine)=> DllCall("Shlwapi\DllInstall", "int", bInstall, "wstr", pszCmdLine, "int")

	static GetAcceptLanguages(pszLanguages, &pcchLanguages)=> DllCall("Shlwapi\GetAcceptLanguages", "str", pszLanguages, "uint*", &pcchLanguages, "int")

	static GetMenuPosFromID(hmenu, id) => DllCall("Shlwapi\GetMenuPosFromID", "ptr", hmenu, "uint", id, "int")

	static HashData(&pbData, cbData, &pbHash, cbHash)=> DllCall("Shlwapi\HashData", "uchar*", &pbData, "uint", cbData, "uchar*", &pbHash, "uint", cbHash, "int")

	static IStream_Copy(pstmFrom, pstmTo, cb)=> DllCall("Shlwapi\IStream_Copy", "ptr", pstmFrom, "ptr", pstmTo, "uint", cb, "int")

	static IStream_Read(pstm, pv, cb)=> DllCall("Shlwapi\IStream_Read", "ptr", pstm, "ptr", pv, "uint", cb, "int")

	static IStream_ReadPidl(pstm, ppidlOut)=> DllCall("Shlwapi\IStream_ReadPidl", "ptr", pstm, "ptr", ppidlOut, "int")

	static IStream_ReadStr(pstm, ppsz) => DllCall("Shlwapi\IStream_ReadStr", "ptr", pstm, "wstr", ppsz, "int")

	static IStream_Reset(pstm) => DllCall("Shlwapi\IStream_Reset", "ptr", pstm, "int")

	static IStream_Size(pstm, pui) => DllCall("Shlwapi\IStream_Size", "ptr", pstm, "ptr", pui, "int")

	static IStream_Write(pstm, pv, cb) => DllCall("Shlwapi\IStream_Write", "ptr", pstm, "ptr", pv, "uint", cb, "int")

	static IStream_WritePidl(pstm, pidlWrite)=> DllCall("Shlwapi\IStream_WritePidl", "ptr", pstm, "ptr", pidlWrite, "int")

	static IStream_WriteStr(pstm, psz) => DllCall("Shlwapi\IStream_WriteStr", "ptr", pstm, "wstr", psz, "int")

	static IUnknown_AtomicRelease(ppunk) => DllCall("Shlwapi\IUnknown_AtomicRelease", "ptr", ppunk, "int")

	static IUnknown_GetSite(punk, riid, ppvSite) => DllCall("Shlwapi\IUnknown_GetSite", "ptr", punk, "ptr", riid, "ptr", ppvSite, "int")

	static IUnknown_GetWindow(punk, phwnd) => DllCall("Shlwapi\IUnknown_GetWindow", "ptr", punk, "ptr", phwnd, "int")

	static IUnknown_QueryService(punk, guidService, riid, ppvOut)=> DllCall("Shlwapi\IUnknown_QueryService", "ptr", punk, "ptr", guidService, "ptr", riid, "ptr", ppvOut, "int")

	static IUnknown_Set(ppunk, punk) => DllCall("Shlwapi\IUnknown_Set", "ptr", ppunk, "ptr", punk, "int")

	static IUnknown_SetSite(punk, punkSite)=> DllCall("Shlwapi\IUnknown_SetSite", "ptr", punk, "ptr", punkSite, "int")

	static IntlStrEqWorker(fCaseSens, pszStr1, pszStr2, nChar) => DllCall("Shlwapi\IntlStrEqWorker", "int", fCaseSens, "str", pszStr1, "str", pszStr2, "int", nChar, "int")

	static IsCharSpace(wch)=> DllCall("Shlwapi\IsCharSpace", "short", wch, "int")

	static IsInternetESCEnabled()=> DllCall("Shlwapi\IsInternetESCEnabled", "int")

	static IsOS(dwOS)=> DllCall("Shlwapi\IsOS", "uint", dwOS, "int")

	static MLFreeLibrary(hModule)=> DllCall("Shlwapi\MLFreeLibrary", "ptr", hModule, "int")

	static MLLoadLibrary(lpszLibFileName, hModule, dwCrossCodePage)=> DllCall("Shlwapi\MLLoadLibrary", "str", lpszLibFileName, "ptr", hModule, "uint", dwCrossCodePage, "ptr")

	static ParseURL(pcszUrl, ppu)=> DllCall("Shlwapi\ParseURL", "str", pcszUrl, "ptr", ppu, "int")

	static PathAddBackslash(lpszPath)=> DllCall("Shlwapi\PathAddBackslash", "str", lpszPath, "str")

	static PathAddExtension(pszPath, pszExtension) => DllCall("Shlwapi\PathAddExtension", "str", pszPath, "str", pszExtension, "int")

	static PathAppend(pszPath, pszMore)=> DllCall("Shlwapi\PathAppend", "str", pszPath, "str", pszMore, "int")

	static PathBuildRoot(szRoot, iDrive) => DllCall("Shlwapi\PathBuildRoot", "str", szRoot, "int", iDrive, "str")

	static PathCanonicalize(lpszDst, lpszSrc)=> DllCall("Shlwapi\PathCanonicalize", "str", lpszDst, "str", lpszSrc, "int")

	static PathCombine(pszPathOut, pszPathIn, pszMore) => DllCall("Shlwapi\PathCombine", "str", pszPathOut, "str", pszPathIn, "str", pszMore, "str")

	static PathCommonPrefix(pszFile1, pszFile2, pszPath) => DllCall("Shlwapi\PathCommonPrefix", "str", pszFile1, "str", pszFile2, "str", pszPath, "int")

	static PathCompactPath(hDC, lpszPath, dx)=> DllCall("Shlwapi\PathCompactPath", "ptr", hDC, "str", lpszPath, "uint", dx, "int")

	static PathCompactPathEx(pszOut, pszSrc, cchMax, dwFlags)=> DllCall("Shlwapi\PathCompactPathEx", "str", pszOut, "str", pszSrc, "uint", cchMax, "uint", dwFlags, "int")

	static PathCreateFromUrl(pszUrl, pszPath, &pcchPath, dwFlags)=> DllCall("Shlwapi\PathCreateFromUrl", "str", pszUrl, "str", pszPath, "uint*", &pcchPath, "uint", dwFlags, "int")

	static PathCreateFromUrlAlloc(pszIn, ppszOut, dwFlags) => DllCall("Shlwapi\PathCreateFromUrlAlloc", "wstr", pszIn, "wstr", ppszOut, "uint", dwFlags, "int")

	static PathFileExists(pszPath) => DllCall("Shlwapi\PathFileExists", "str", pszPath, "int")

	static PathFindExtension(pszPath)=> DllCall("Shlwapi\PathFindExtension", "str", pszPath, "str")

	static PathFindFileName(pPath) => DllCall("Shlwapi\PathFindFileName", "str", pPath, "str")

	static PathFindNextComponent(pszPath)=> DllCall("Shlwapi\PathFindNextComponent", "str", pszPath, "str")

	static PathFindOnPath(pszFile, ppszOtherDirs)=> DllCall("Shlwapi\PathFindOnPath", "str", pszFile, "str", ppszOtherDirs, "int")

	static PathFindSuffixArray(pszPath, apszSuffix, iArraySize)=> DllCall("Shlwapi\PathFindSuffixArray", "str", pszPath, "str", apszSuffix, "int", iArraySize, "str")

	static PathGetArgs(pszPath)=> DllCall("Shlwapi\PathGetArgs", "str", pszPath, "str")

	static PathGetCharType(ch) => DllCall("Shlwapi\PathGetCharType", "ushort", ch, "uint")

	static PathGetDriveNumber(lpsz)=> DllCall("Shlwapi\PathGetDriveNumber", "str", lpsz, "int")

	static PathIsContentType(pszPath, pszContentType)=> DllCall("Shlwapi\PathIsContentType", "str", pszPath, "str", pszContentType, "int")

	static PathIsDirectory(pszPath)=> DllCall("Shlwapi\PathIsDirectory", "str", pszPath, "int")

	static PathIsDirectoryEmpty(pszPath) => DllCall("Shlwapi\PathIsDirectoryEmpty", "str", pszPath, "int")

	static PathIsFileSpec(lpszPath)=> DllCall("Shlwapi\PathIsFileSpec", "str", lpszPath, "int")

	static PathIsLFNFileSpec(pszName)=> DllCall("Shlwapi\PathIsLFNFileSpec", "str", pszName, "int")

	static PathIsNetworkPath(pszPath)=> DllCall("Shlwapi\PathIsNetworkPath", "str", pszPath, "int")

	static PathIsPrefix(pszPrefix, pszPath)=> DllCall("Shlwapi\PathIsPrefix", "str", pszPrefix, "str", pszPath, "int")

	static PathIsRelative(lpszPath)=> DllCall("Shlwapi\PathIsRelative", "str", lpszPath, "int")

	static PathIsRoot(pPath) => DllCall("Shlwapi\PathIsRoot", "str", pPath, "int")

	static PathIsSameRoot(pszPath1, pszPath2)=> DllCall("Shlwapi\PathIsSameRoot", "str", pszPath1, "str", pszPath2, "int")

	static PathIsSystemFolder(pszPath, dwAttrb)=> DllCall("Shlwapi\PathIsSystemFolder", "str", pszPath, "uint", dwAttrb, "int")

	static PathIsUNC(pszPath)=> DllCall("Shlwapi\PathIsUNC", "str", pszPath, "int")

	static PathIsUNCServer(pszPath)=> DllCall("Shlwapi\PathIsUNCServer", "str", pszPath, "int")

	static PathIsUNCServerShare(pszPath) => DllCall("Shlwapi\PathIsUNCServerShare", "str", pszPath, "int")

	static PathIsURL(pszPath)=> DllCall("Shlwapi\PathIsURL", "str", pszPath, "int")

	static PathMakePretty(lpPath)=> DllCall("Shlwapi\PathMakePretty", "str", lpPath, "int")

	static PathMakeSystemFolder(pszPath) => DllCall("Shlwapi\PathMakeSystemFolder", "str", pszPath, "int")

	static PathMatchSpec(pszFile, pszSpec) => DllCall("Shlwapi\PathMatchSpec", "astr", pszFile, "astr", pszSpec, "int")

	static PathMatchSpecEx(pszFile, pszSpec, dwFlags)=> DllCall("Shlwapi\PathMatchSpecEx", "str", pszFile, "str", pszSpec, "uint", dwFlags, "int")

	static PathParseIconLocation(pszIconFile)=> DllCall("Shlwapi\PathParseIconLocation", "str", pszIconFile, "int")

	static PathQuoteSpaces(lpsz) => DllCall("Shlwapi\PathQuoteSpaces", "str", lpsz, "int")

	static PathRelativePathTo(pszPath, pszFrom, dwAttrFrom, pszTo, dwAttrTo) => DllCall("Shlwapi\PathRelativePathTo", "str", pszPath, "str", pszFrom, "uint", dwAttrFrom, "str", pszTo, "uint", dwAttrTo, "int")

	static PathRemoveArgs(pszPath) => DllCall("Shlwapi\PathRemoveArgs", "str", pszPath, "int")

	static PathRemoveBackslash(lpszPath) => DllCall("Shlwapi\PathRemoveBackslash", "str", lpszPath, "str")

	static PathRemoveBlanks(lpszString)=> DllCall("Shlwapi\PathRemoveBlanks", "str", lpszString, "int")

	static PathRemoveExtension(pszPath)=> DllCall("Shlwapi\PathRemoveExtension", "str", pszPath, "int")

	static PathRemoveFileSpec(pszPath) => DllCall("Shlwapi\PathRemoveFileSpec", "str", pszPath, "int")

	static PathRenameExtension(pszPath, pszExt)=> DllCall("Shlwapi\PathRenameExtension", "str", pszPath, "str", pszExt, "int")

	static PathSearchAndQualify(pcszPath, pszFullyQualifiedPath, cchFullyQualifiedPath)=> DllCall("Shlwapi\PathSearchAndQualify", "str", pcszPath, "str", pszFullyQualifiedPath, "uint", cchFullyQualifiedPath, "int")

	static PathSetDlgItemPath(hDlg, id, pszPath) => DllCall("Shlwapi\PathSetDlgItemPath", "ptr", hDlg, "int", id, "astr", pszPath, "int")

	static PathSkipRoot(pszPath) => DllCall("Shlwapi\PathSkipRoot", "str", pszPath, "str")

	static PathStripPath(pszPath)=> DllCall("Shlwapi\PathStripPath", "str", pszPath, "int")

	static PathStripToRoot(szRoot) => DllCall("Shlwapi\PathStripToRoot", "str", szRoot, "int")

	static PathUnExpandEnvStrings(pszPath, pszBuf, cchBuf) => DllCall("Shlwapi\PathUnExpandEnvStrings", "str", pszPath, "str", pszBuf, "uint", cchBuf, "int")

	static PathUndecorate(pszPath) => DllCall("Shlwapi\PathUndecorate", "str", pszPath, "int")

	static PathUnmakeSystemFolder(pszPath) => DllCall("Shlwapi\PathUnmakeSystemFolder", "str", pszPath, "int")

	static PathUnquoteSpaces(lpsz) => DllCall("Shlwapi\PathUnquoteSpaces", "str", lpsz, "int")

	static QISearch(that, pqit, riid, ppv) => DllCall("Shlwapi\QISearch", "ptr", that, "ptr", pqit, "ptr", riid, "ptr", ppv, "int")

	static SHAllocShared(pvData, dwSize, dwDestinationProcessId) => DllCall("Shlwapi\SHAllocShared", "ptr", pvData, "uint", dwSize, "uint", dwDestinationProcessId, "ptr")

	static SHAnsiToAnsi(pszSrc, pszDst, cchBuf)=> DllCall("Shlwapi\SHAnsiToAnsi", "astr", pszSrc, "wstr", pszDst, "int", cchBuf, "int")

	static SHAnsiToUnicode(pszSrc, pwszDst, cwchBuf) => DllCall("Shlwapi\SHAnsiToUnicode", "astr", pszSrc, "ptr", pwszDst, "int", cwchBuf, "int")

	static SHAutoComplete(hwndEdit, dwFlags) => DllCall("Shlwapi\SHAutoComplete", "ptr", hwndEdit, "uint", dwFlags, "int")

	static SHCopyKey(hkeySrc, pszSrcSubKey, hkeyDest, fReserved) => DllCall("Shlwapi\SHCopyKey", "ptr", hkeySrc, "str", pszSrcSubKey, "ptr", hkeyDest, "uint", fReserved, "int")

	static SHCreateMemStream(&pInit, cbInit) => DllCall("Shlwapi\SHCreateMemStream", "uchar*", &pInit, "uint", cbInit, "ptr")

	static SHCreateShellPalette(hdc) => DllCall("Shlwapi\SHCreateShellPalette", "ptr", hdc, "ptr")

	static SHCreateStreamOnFile(pszFile, grfMode, ppstm) => DllCall("Shlwapi\SHCreateStreamOnFile", "str", pszFile, "uint", grfMode, "ptr", ppstm, "int")

	static SHCreateStreamOnFileEx(pszFile, grfMode, dwAttributes, fCreate, pstmTemplate, ppstm)=> DllCall("Shlwapi\SHCreateStreamOnFileEx", "wstr", pszFile, "uint", grfMode, "uint", dwAttributes, "int", fCreate, "ptr", pstmTemplate, "ptr", ppstm, "int")

	static SHCreateThread(pfnThreadProc, pData, dwFlags, pfnCallback)=> DllCall("Shlwapi\SHCreateThread", "ptr", pfnThreadProc, "ptr", pData, "uint", dwFlags, "ptr", pfnCallback, "int")

	static SHCreateThreadRef(&pcRef, ppunk)=> DllCall("Shlwapi\SHCreateThreadRef", "int*", &pcRef, "ptr", ppunk, "int")

	static SHCreateThreadWithHandle(pfnThreadProc, pData, flags, pfnCallback, pHandle) => DllCall("Shlwapi\SHCreateThreadWithHandle", "ptr", pfnThreadProc, "ptr", pData, "uint", flags, "ptr", pfnCallback, "ptr", pHandle, "int")

	static SHDeleteEmptyKey(hkey, pszSubKey) => DllCall("Shlwapi\SHDeleteEmptyKey", "ptr", hkey, "str", pszSubKey, "int")

	static SHDeleteKey(hkey, pszSubKey)=> DllCall("Shlwapi\SHDeleteKey", "ptr", hkey, "str", pszSubKey, "int")

	static SHDeleteValue(hkey, pszSubKey, pszValue)=> DllCall("Shlwapi\SHDeleteValue", "ptr", hkey, "str", pszSubKey, "str", pszValue, "int")

	static SHEnumKeyEx(hkey, dwIndex, pszName, pcchName) => DllCall("Shlwapi\SHEnumKeyEx", "ptr", hkey, "uint", dwIndex, "str", pszName, "ptr", pcchName, "int")

	static SHEnumValue(hkey, dwIndex, pszValueName, pcchValueName, pdwType, pvData, pcbData) => DllCall("Shlwapi\SHEnumValue", "ptr", hkey, "uint", dwIndex, "str", pszValueName, "ptr", pcchValueName, "ptr", pdwType, "ptr", pvData, "ptr", pcbData, "int")

	static SHFormatDateTime(pft, &pdwFlags, pszBuf, cchBuf)=> DllCall("Shlwapi\SHFormatDateTime", "ptr", pft, "uint*", &pdwFlags, "str", pszBuf, "uint", cchBuf, "int")

	static SHFreeShared(hData, dwProcessId)=> DllCall("Shlwapi\SHFreeShared", "ptr", hData, "uint", dwProcessId, "int")

	static SHGetInverseCMAP(&pbMap, cbMap) => DllCall("Shlwapi\SHGetInverseCMAP", "uchar*", &pbMap, "uint", cbMap, "int")

	static SHGetThreadRef(ppunk) => DllCall("Shlwapi\SHGetThreadRef", "ptr", ppunk, "int")

	static SHGetValue(hkey, pszSubKey, pszValue, pdwType, pvData, pcbData) => DllCall("Shlwapi\SHGetValue", "ptr", hkey, "str", pszSubKey, "str", pszValue, "ptr", pdwType, "ptr", pvData, "ptr", pcbData, "int")

	static SHGetViewStatePropertyBag(pidl, pszBagName, dwFlags, riid, ppv) => DllCall("Shlwapi\SHGetViewStatePropertyBag", "ptr", pidl, "wstr", pszBagName, "uint", dwFlags, "ptr", riid, "ptr", ppv, "int")

	static SHIsChildOrSelf(hWndParent, hWnd) => DllCall("Shlwapi\SHIsChildOrSelf", "ptr", hWndParent, "ptr", hWnd, "int")

	static SHLoadIndirectString(pszSource, pszOutBuf, cchOutBuf, ppvReserved)=> DllCall("Shlwapi\SHLoadIndirectString", "wstr", pszSource, "ptr", pszOutBuf, "uint", cchOutBuf, "ptr", ppvReserved, "int")

	static SHLockShared(hData, dwProcessId)=> DllCall("Shlwapi\SHLockShared", "ptr", hData, "uint", dwProcessId, "ptr")

	static SHMessageBoxCheck(hwnd, pszText, pszCaption, uType, iDefault, pszRegVal)=> DllCall("Shlwapi\SHMessageBoxCheck", "ptr", hwnd, "str", pszText, "str", pszCaption, "uint", uType, "int", iDefault, "str", pszRegVal, "int")

	static SHOpenRegStream(hkey, pszSubkey, pszValue, grfMode) => DllCall("Shlwapi\SHOpenRegStream", "ptr", hkey, "str", pszSubkey, "str", pszValue, "uint", grfMode, "ptr")

	static SHOpenRegStream2(hkey, pszSubkey, pszValue, grfMode)=> DllCall("Shlwapi\SHOpenRegStream2", "ptr", hkey, "str", pszSubkey, "str", pszValue, "uint", grfMode, "ptr")

	static SHQueryInfoKey(hkey, pcSubKeys, pcchMaxSubKeyLen, pcValues, pcchMaxValueNameLen)=> DllCall("Shlwapi\SHQueryInfoKey", "ptr", hkey, "ptr", pcSubKeys, "ptr", pcchMaxSubKeyLen, "ptr", pcValues, "ptr", pcchMaxValueNameLen, "int")

	static SHQueryValueEx(hkey, pszValue, pdwReserved, pdwType, pvData, pcbData) => DllCall("Shlwapi\SHQueryValueEx", "ptr", hkey, "str", pszValue, "ptr", pdwReserved, "ptr", pdwType, "ptr", pvData, "ptr", pcbData, "uint")

	static SHRegCloseUSKey(hUSKey) => DllCall("Shlwapi\SHRegCloseUSKey", "ptr", hUSKey, "int")

	static SHRegCreateUSKey(pszPath, samDesired, hRelativeUSKey, phNewUSKey, dwFlags)=> DllCall("Shlwapi\SHRegCreateUSKey", "str", pszPath, "uint", samDesired, "ptr", hRelativeUSKey, "ptr", phNewUSKey, "uint", dwFlags, "int")

	static SHRegDeleteEmptyUSKey(hUSKey, pszValue, delRegFlags)=> DllCall("Shlwapi\SHRegDeleteEmptyUSKey", "ptr", hUSKey, "astr", pszValue, "uint", delRegFlags, "int")

	static SHRegDeleteUSValue(hUSKey, pszValue, delRegFlags) => DllCall("Shlwapi\SHRegDeleteUSValue", "ptr", hUSKey, "str", pszValue, "uint", delRegFlags, "int")

	static SHRegDuplicateHKey(hKey)=> DllCall("Shlwapi\SHRegDuplicateHKey", "ptr", hKey, "ptr")

	static SHRegEnumUSKey(hUSKey, dwIndex, pszName, pcchName, enumRegFlags)=> DllCall("Shlwapi\SHRegEnumUSKey", "ptr", hUSKey, "uint", dwIndex, "str", pszName, "ptr", pcchName, "uint", enumRegFlags, "int")

	static SHRegEnumUSValue(hUSKey, dwIndex, pszValueName, pcchValueNameLen, pdwType, pvData, pcbData, enumRegFlags) => DllCall("Shlwapi\SHRegEnumUSValue", "ptr", hUSKey, "uint", dwIndex, "str", pszValueName, "ptr", pcchValueNameLen, "ptr", pdwType, "ptr", pvData, "ptr", pcbData, "uint", enumRegFlags, "int")

	static SHRegGetBoolUSValue(pszSubKey, pszValue, fIgnoreHKCU, fDefault) => DllCall("Shlwapi\SHRegGetBoolUSValue", "str", pszSubKey, "str", pszValue, "int", fIgnoreHKCU, "int", fDefault, "int")

	static SHRegGetIntW(hk, szKey, nDefault) => DllCall("Shlwapi\SHRegGetIntW", "ptr", hk, "wstr", szKey, "int", nDefault, "int")

	static SHRegGetPath(hkey, pszSubkey, pszValue, pszPath, dwFlags) => DllCall("Shlwapi\SHRegGetPath", "ptr", hkey, "str", pszSubkey, "str", pszValue, "str", pszPath, "uint", dwFlags, "int")

	static SHRegGetUSValue(pszSubKey, pszValue, &pdwType, pvData, &pcbData, fIgnoreHKCU, pvDefaultData, dwDefaultDataSize) => DllCall("Shlwapi\SHRegGetUSValue", "str", pszSubKey, "str", pszValue, "uint*", &pdwType, "ptr", pvData, "uint*", &pcbData, "int", fIgnoreHKCU, "ptr", pvDefaultData, "uint", dwDefaultDataSize, "int")

	static SHRegGetValue(hkey, pszSubKey, pszValue, srrfFlags, pdwType, pvData, pcbData) => DllCall("Shlwapi\SHRegGetValue", "ptr", hkey, "str", pszSubKey, "str", pszValue, "int", srrfFlags, "ptr", pdwType, "ptr", pvData, "ptr", pcbData, "int")

	static SHRegOpenUSKey(pszPath, samDesired, hRelativeUSKey, phNewUSKey, fIgnoreHKCU)=> DllCall("Shlwapi\SHRegOpenUSKey", "str", pszPath, "uint", samDesired, "ptr", hRelativeUSKey, "ptr", phNewUSKey, "int", fIgnoreHKCU, "int")

	static SHRegQueryInfoUSKey(hUSKey, pcSubKeys, pcchMaxSubKeyLen, pcValues, pcchMaxValueNameLen, enumRegFlags) => DllCall("Shlwapi\SHRegQueryInfoUSKey", "ptr", hUSKey, "ptr", pcSubKeys, "ptr", pcchMaxSubKeyLen, "ptr", pcValues, "ptr", pcchMaxValueNameLen, "uint", enumRegFlags, "int")

	static SHRegQueryUSValue(hUSKey, pszValue, pdwType, pvData, pcbData, fIgnoreHKCU, pvDefaultData, dwDefaultDataSize)=> DllCall("Shlwapi\SHRegQueryUSValue", "ptr", hUSKey, "str", pszValue, "ptr", pdwType, "ptr", pvData, "ptr", pcbData, "int", fIgnoreHKCU, "ptr", pvDefaultData, "uint", dwDefaultDataSize, "int")

	static SHRegSetPath(hkey, pszSubkey, pszValue, pszPath, dwFlags) => DllCall("Shlwapi\SHRegSetPath", "ptr", hkey, "str", pszSubkey, "str", pszValue, "str", pszPath, "uint", dwFlags, "int")

	static SHRegSetUSValue(pszSubKey, pszValue, dwType, pvData, cbData, dwFlags) => DllCall("Shlwapi\SHRegSetUSValue", "str", pszSubKey, "str", pszValue, "uint", dwType, "ptr", pvData, "uint", cbData, "uint", dwFlags, "int")

	static SHRegWriteUSValue(hUSKey, pszValue, dwType, pvData, cbData, dwFlags)=> DllCall("Shlwapi\SHRegWriteUSValue", "ptr", hUSKey, "str", pszValue, "uint", dwType, "ptr", pvData, "uint", cbData, "uint", dwFlags, "int")

	static SHReleaseThreadRef()=> DllCall("Shlwapi\SHReleaseThreadRef", "int")

	static SHSendMessageBroadcast(uMsg, wParam, lParam)=> DllCall("Shlwapi\SHSendMessageBroadcast", "uint", uMsg, "uptr", wParam, "uptr", lParam, "ptr")

	static SHSetThreadRef(pUnk)=> DllCall("Shlwapi\SHSetThreadRef", "ptr", pUnk, "int")

	static SHSetValue(hkey, pszSubKey, pszValue, dwType, pvData, cbData) => DllCall("Shlwapi\SHSetValue", "ptr", hkey, "str", pszSubKey, "str", pszValue, "uint", dwType, "ptr", pvData, "uint", cbData, "int")

	static SHSkipJunction(pbc, pclsid) => DllCall("Shlwapi\SHSkipJunction", "ptr", pbc, "ptr", pclsid, "int")

	static SHStrDup(pszSource, ppwsz)=> DllCall("Shlwapi\SHStrDup", "str", pszSource, "ptr", ppwsz, "int")

	static SHStripMneumonic(pszMenu) => DllCall("Shlwapi\SHStripMneumonic", "ptr", pszMenu, "short")

	static SHUnicodeToAnsi(pwszSrc, pszDst, cchBuf)=> DllCall("Shlwapi\SHUnicodeToAnsi", "wstr", pwszSrc, "astr", pszDst, "int", cchBuf, "int")

	static SHUnicodeToUnicode(pwzSrc, pwzDst, cwchBuf) => DllCall("Shlwapi\SHUnicodeToUnicode", "wstr", pwzSrc, "ptr", pwzDst, "int", cwchBuf, "int")

	static SHUnlockShared(pvData)=> DllCall("Shlwapi\SHUnlockShared", "ptr", pvData, "int")

	static ShellMessageBox(hInst, hWnd, pszMsg, pszTitle, fuStyle, args*)
	{
		_args := []
		for v in args
			_args.Push("ptr", v)
		_args.Push("int")
		return DllCall("Shlwapi\ShellMessageBox", "ptr", hInst, "ptr", hWnd, "str", pszMsg, "str", pszTitle, "uint", fuStyle, _args*)
	}

	static StrCSpn(pszStr, pszSet)=> DllCall("Shlwapi\StrCSpn", "str", pszStr, "str", pszSet, "int")

	static StrCSpnI(pszStr, pszSet) => DllCall("Shlwapi\StrCSpnI", "str", pszStr, "str", pszSet, "int")

	static StrCat(psz1, psz2) => DllCall("Shlwapi\StrCat", "str", psz1, "str", psz2, "str")

	static StrCatBuff(pszDest, pszSrc, cchDestBuffSize) => DllCall("Shlwapi\StrCatBuff", "str", pszDest, "str", pszSrc, "int", cchDestBuffSize, "str")

	static StrCatChainW(pszDst, cchDst, ichAt, pszSrc)=> DllCall("Shlwapi\StrCatChainW", "ptr", pszDst, "uint", cchDst, "uint", ichAt, "wstr", pszSrc, "uint")

	static StrChr(pszStart, wMatch) => DllCall("Shlwapi\StrChr", "str", pszStart, "short", wMatch, "str")

	static StrChrI(pszStart, wMatch)=> DllCall("Shlwapi\StrChrI", "str", pszStart, "short", wMatch, "str")

	static StrChrNIW(pszStart, wMatch, cchMax)=> DllCall("Shlwapi\StrChrNIW", "wstr", pszStart, "ushort", wMatch, "uint", cchMax, "ptr")

	static StrChrNW(pszStart, wMatch, cchMax) => DllCall("Shlwapi\StrChrNW", "ptr", pszStart, "ushort", wMatch, "uint", cchMax, "ptr")

	static StrCmp(psz1, psz2) => DllCall("Shlwapi\StrCmp", "str", psz1, "str", psz2, "int")

	static StrCmpC(lpStr1, lpStr2)=> DllCall("Shlwapi\StrCmpC", "str", lpStr1, "str", lpStr2, "int")

	static StrCmpI(psz1, psz2)=> DllCall("Shlwapi\StrCmpI", "str", psz1, "str", psz2, "int")

	static StrCmpIC(lpStr1, lpStr2) => DllCall("Shlwapi\StrCmpIC", "str", lpStr1, "str", lpStr2, "int")

	static StrCmpLogicalW(psz1, psz2) => DllCall("Shlwapi\StrCmpLogicalW", "wstr", psz1, "wstr", psz2, "int")

	static StrCmpN(psz1, psz2, nChar) => DllCall("Shlwapi\StrCmpN", "str", psz1, "str", psz2, "int", nChar, "int")

	static StrCmpNC(pszStr1, pszStr2, nChar)=> DllCall("Shlwapi\StrCmpNC", "str", pszStr1, "str", pszStr2, "int", nChar, "int")

	static StrCmpNI(psz1, psz2, nChar)=> DllCall("Shlwapi\StrCmpNI", "str", psz1, "str", psz2, "int", nChar, "int")

	static StrCmpNIC(pszStr1, pszStr2, nChar) => DllCall("Shlwapi\StrCmpNIC", "str", pszStr1, "str", pszStr2, "int", nChar, "int")

	static StrCpy(psz1, psz2) => DllCall("Shlwapi\StrCpy", "str", psz1, "str", psz2, "str")

	static StrCpyN(pszDst, pszSrc, cchMax)=> DllCall("Shlwapi\StrCpyN", "str", pszDst, "str", pszSrc, "int", cchMax, "str")

	static StrDup(pszSrch)=> DllCall("Shlwapi\StrDup", "str", pszSrch, "str")

	static StrFormatByteSize64(qdw, pszBuf, cchBuf) => DllCall("Shlwapi\StrFormatByteSize64", "int64", qdw, "astr", pszBuf, "uint", cchBuf, "astr")

	static StrFormatByteSizeA(dw, pszBuf, cchBuf) => DllCall("Shlwapi\StrFormatByteSizeA", "uint", dw, "astr", pszBuf, "uint", cchBuf, "astr")

	static StrFormatByteSizeEx(ull, flags, pszBuf, cchBuf)=> DllCall("Shlwapi\StrFormatByteSizeEx", "uint64", ull, "uint", flags, "ptr", pszBuf, "uint", cchBuf, "int")

	static StrFormatByteSizeW(qdw, pszBuf, cchBuf)=> DllCall("Shlwapi\StrFormatByteSizeW", "int64", qdw, "ptr", pszBuf, "uint", cchBuf, "ptr")

	static StrFormatKBSize(qdw, pszBuf, cchBuf) => DllCall("Shlwapi\StrFormatKBSize", "int64", qdw, "str", pszBuf, "uint", cchBuf, "str")

	static StrFromTimeInterval(pszOut, cchMax, dwTimeMS, digits)=> DllCall("Shlwapi\StrFromTimeInterval", "str", pszOut, "uint", cchMax, "uint", dwTimeMS, "int", digits, "int")

	static StrIsIntlEqual(fCaseSens, pszString1, pszString2, nChar) => DllCall("Shlwapi\StrIsIntlEqual", "int", fCaseSens, "str", pszString1, "str", pszString2, "int", nChar, "int")

	static StrNCat(psz1, psz2, cchMax)=> DllCall("Shlwapi\StrNCat", "str", psz1, "str", psz2, "int", cchMax, "str")

	static StrPBrk(psz, pszSet) => DllCall("Shlwapi\StrPBrk", "str", psz, "str", pszSet, "str")

	static StrRChr(pszStart, pszEnd, wMatch)=> DllCall("Shlwapi\StrRChr", "str", pszStart, "str", pszEnd, "short", wMatch, "str")

	static StrRChrI(pszStart, pszEnd, wMatch) => DllCall("Shlwapi\StrRChrI", "str", pszStart, "str", pszEnd, "short", wMatch, "str")

	static StrRStrI(pszSource, pszLast, pszSrch)=> DllCall("Shlwapi\StrRStrI", "str", pszSource, "str", pszLast, "str", pszSrch, "str")

	static StrRetToBSTR(pstr, pidl, pbstr)=> DllCall("Shlwapi\StrRetToBSTR", "ptr", pstr, "ptr", pidl, "ptr", pbstr, "int")

	static StrRetToBuf(pstr, pidl, pszBuf, cchBuf)=> DllCall("Shlwapi\StrRetToBuf", "ptr", pstr, "ptr", pidl, "str", pszBuf, "uint", cchBuf, "int")

	static StrRetToStr(pstr, pidl, ppszName)=> DllCall("Shlwapi\StrRetToStr", "ptr", pstr, "ptr", pidl, "ptr", ppszName, "int")

	static StrSpn(psz, pszSet)=> DllCall("Shlwapi\StrSpn", "str", psz, "str", pszSet, "int")

	static StrStr(pszFirst, pszSrch)=> DllCall("Shlwapi\StrStr", "str", pszFirst, "str", pszSrch, "str")

	static StrStrI(pszFirst, pszSrch) => DllCall("Shlwapi\StrStrI", "str", pszFirst, "str", pszSrch, "str")

	static StrStrNIW(pszFirst, pszSrch, cchMax) => DllCall("Shlwapi\StrStrNIW", "ptr", pszFirst, "wstr", pszSrch, "uint", cchMax, "ptr")

	static StrStrNW(pszFirst, pszSrch, cchMax)=> DllCall("Shlwapi\StrStrNW", "ptr", pszFirst, "wstr", pszSrch, "uint", cchMax, "ptr")

	static StrToInt(pszSrc) => DllCall("Shlwapi\StrToInt", "str", pszSrc, "int")

	static StrToInt64Ex(pszString, dwFlags, &pllRet)=> DllCall("Shlwapi\StrToInt64Ex", "str", pszString, "int", dwFlags, "int64*", &pllRet, "int")

	static StrToIntEx(pszString, dwFlags, &piRet) => DllCall("Shlwapi\StrToIntEx", "str", pszString, "int", dwFlags, "int*", &piRet, "int")

	static StrTrim(psz, pszTrimChars) => DllCall("Shlwapi\StrTrim", "str", psz, "str", pszTrimChars, "int")

	static UrlApplyScheme(pszIn, pszOut, &pcchOut, dwFlags) => DllCall("Shlwapi\UrlApplyScheme", "str", pszIn, "str", pszOut, "uint*", &pcchOut, "uint", dwFlags, "int")

	static UrlCanonicalize(pszUrl, pszCanonicalized, &pcchCanonicalized, dwFlags) => DllCall("Shlwapi\UrlCanonicalize", "str", pszUrl, "str", pszCanonicalized, "uint*", &pcchCanonicalized, "uint", dwFlags, "int")

	static UrlCombine(pszBase, pszRelative, pszCombined, &pcchCombined, dwFlags)=> DllCall("Shlwapi\UrlCombine", "str", pszBase, "str", pszRelative, "str", pszCombined, "uint*", &pcchCombined, "uint", dwFlags, "int")

	static UrlCompare(psz1, psz2, fIgnoreSlash) => DllCall("Shlwapi\UrlCompare", "str", psz1, "str", psz2, "int", fIgnoreSlash, "int")

	static UrlCreateFromPath(pszPath, pszUrl, &pcchUrl, dwFlags)=> DllCall("Shlwapi\UrlCreateFromPath", "str", pszPath, "str", pszUrl, "uint*", &pcchUrl, "uint", dwFlags, "int")

	static UrlEscape(pszURL, &pszEscaped, &pcchEscaped, dwFlags) => DllCall("Shlwapi\UrlEscape", "ptr", StrPtr(pszURL), "str", pszEscaped, "uint*", &pcchEscaped, "uint", dwFlags, "int")

	static UrlFixupW(pcszUrl, pszTranslatedUrl, cchMax) => DllCall("Shlwapi\UrlFixupW", "wstr", pcszUrl, "ptr", pszTranslatedUrl, "uint", cchMax, "int")

	static UrlGetLocation(pszURL) => DllCall("Shlwapi\UrlGetLocation", "str", pszURL, "str")

	static UrlGetPart(pszIn, pszOut, &pcchOut, dwPart, dwFlags) => DllCall("Shlwapi\UrlGetPart", "str", pszIn, "str", pszOut, "uint*", &pcchOut, "uint", dwPart, "uint", dwFlags, "int")

	static UrlHash(pszURL, &pbHash, cbHash) => DllCall("Shlwapi\UrlHash", "str", pszURL, "uchar*", &pbHash, "uint", cbHash, "int")

	static UrlIs(pszUrl, UrlIs) => DllCall("Shlwapi\UrlIs", "str", pszUrl, "uint", UrlIs, "int")

	static UrlIsNoHistory(pszURL) => DllCall("Shlwapi\UrlIsNoHistory", "str", pszURL, "int")

	static UrlIsOpaque(pszURL)=> DllCall("Shlwapi\UrlIsOpaque", "str", pszURL, "int")



	static UrlUnescape(pszURL, pszUnescaped, &pcchUnescaped, dwFlags) => DllCall("Shlwapi\UrlUnescape", "str", pszURL, "str", pszUnescaped, "uint*", &pcchUnescaped, "uint", dwFlags, "int")

	static WhichPlatform()=> DllCall("Shlwapi\WhichPlatform", "uint")

	static wnsprintf(pszDest, cchDest, pszFmt, args*)
	{
		_args := []
		for v in args
			_args.Push("ptr", v)
		_args.Push("int")
		return DllCall("Shlwapi\wnsprintf", "str", pszDest, "int", cchDest, "str", pszFmt, _args*)
	}

	static wvnsprintf(pszDest, cchDest, pszFmt, arglist) => DllCall("Shlwapi\wvnsprintf", "str", pszDest, "int", cchDest, "str", pszFmt, "ptr", arglist, "int")
	
	;;}

	;#endregion }

	;#region __Gdi32

	static AbortDoc(hdc) => DllCall('Gdi32\AbortDoc', 'ptr', hdc, 'int')

	static AbortPath(hdc) => DllCall('Gdi32\AbortPath', 'ptr', hdc, 'int')

	static AddFontMemResourceEx(pbFont, cbFont, pdv, &pcFonts) => DllCall('Gdi32\AddFontMemResourceEx', 'ptr', pbFont, 'uint', cbFont, 'ptr', pdv, 'uint*', &pcFonts, 'ptr')

	static AddFontResource(lpszFilename) => DllCall('Gdi32\AddFontResource', 'str', lpszFilename, 'int')

	static AddFontResourceEx(lpszFilename, fl, pdv) => DllCall('Gdi32\AddFontResourceEx', 'str', lpszFilename, 'uint', fl, 'ptr', pdv, 'int')

	static AngleArc(hdc, X, Y, dwRadius, eStartAngle, eSweepAngle) => DllCall('Gdi32\AngleArc', 'ptr', hdc, 'int', X, 'int', Y, 'uint', dwRadius, 'float', eStartAngle, 'float', eSweepAngle, 'int')

	static AnimatePalette(hpal, iStartIndex, cEntries, ppe) => DllCall('Gdi32\AnimatePalette', 'ptr', hpal, 'uint', iStartIndex, 'uint', cEntries, 'ptr', ppe, 'int')

	static Arc(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXStartArc, nYStartArc, nXEndArc, nYEndArc) => DllCall('Gdi32\Arc', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int', nXStartArc, 'int', nYStartArc, 'int', nXEndArc, 'int', nYEndArc, 'int')

	static ArcTo(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2) => DllCall('Gdi32\ArcTo', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int', nXRadial1, 'int', nYRadial1, 'int', nXRadial2, 'int', nYRadial2, 'int')

	static BeginPath(hdc) => DllCall('Gdi32\BeginPath', 'ptr', hdc, 'int')

	static BitBlt(hdcDest, nXDest, nYDest, nWidth, nHeight, hdcSrc, nXSrc, nYSrc, dwRop) => DllCall('Gdi32\BitBlt', 'ptr', hdcDest, 'int', nXDest, 'int', nYDest, 'int', nWidth, 'int', nHeight, 'ptr', hdcSrc, 'int', nXSrc, 'int', nYSrc, 'uint', dwRop, 'int')

	static CancelDC(hdc) => DllCall('Gdi32\CancelDC', 'ptr', hdc, 'int')

	static CheckColorsInGamut(hDC, lpRGBTriples, lpBuffer, nCount) => DllCall('Gdi32\CheckColorsInGamut', 'ptr', hDC, 'ptr', lpRGBTriples, 'ptr', lpBuffer, 'uint', nCount, 'int')

	static ChoosePixelFormat(hdc, ppfd) => DllCall('Gdi32\ChoosePixelFormat', 'ptr', hdc, 'ptr', ppfd, 'int')

	static Chord(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2) => DllCall('Gdi32\Chord', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int', nXRadial1, 'int', nYRadial1, 'int', nXRadial2, 'int', nYRadial2, 'int')

	static CloseEnhMetaFile(hdc) => DllCall('Gdi32\CloseEnhMetaFile', 'ptr', hdc, 'ptr')

	static CloseFigure(hdc) => DllCall('Gdi32\CloseFigure', 'ptr', hdc, 'int')

	static CloseMetaFile(hdc) => DllCall('Gdi32\CloseMetaFile', 'ptr', hdc, 'ptr')

	static ColorCorrectPalette(hDC, hPalette, dwFirstEntry, dwNumOfEntries) => DllCall('Gdi32\ColorCorrectPalette', 'ptr', hDC, 'ptr', hPalette, 'uint', dwFirstEntry, 'uint', dwNumOfEntries, 'int')

	static ColorMatchToTarget(hDC, hdcTarget, uiAction) => DllCall('Gdi32\ColorMatchToTarget', 'ptr', hDC, 'ptr', hdcTarget, 'uint', uiAction, 'int')

	static CombineRgn(hrgnDest, hrgnSrc1, hrgnSrc2, fnCombineMode) => DllCall('Gdi32\CombineRgn', 'ptr', hrgnDest, 'ptr', hrgnSrc1, 'ptr', hrgnSrc2, 'int', fnCombineMode, 'int')

	static CombineTransform(lpxformResult, lpxform1, lpxform2) => DllCall('Gdi32\CombineTransform', 'ptr', lpxformResult, 'ptr', lpxform1, 'ptr', lpxform2, 'int')

	static CopyEnhMetaFile(hemfSrc, lpszFile) => DllCall('Gdi32\CopyEnhMetaFile', 'ptr', hemfSrc, 'str', lpszFile, 'ptr')

	static CopyMetaFile(hmfSrc, lpszFile) => DllCall('Gdi32\CopyMetaFile', 'ptr', hmfSrc, 'str', lpszFile, 'ptr')

	static CreateBitmap(nWidth, nHeight, cPlanes, cBitsPerPel, lpvBits) => DllCall('Gdi32\CreateBitmap', 'int', nWidth, 'int', nHeight, 'uint', cPlanes, 'uint', cBitsPerPel, 'ptr', lpvBits, 'ptr')

	static CreateBitmapIndirect(lpbm) => DllCall('Gdi32\CreateBitmapIndirect', 'ptr', lpbm, 'ptr')

	static CreateBrushIndirect(lplb) => DllCall('Gdi32\CreateBrushIndirect', 'ptr', lplb, 'ptr')

	static CreateColorSpace(lpLogColorSpace) => DllCall('Gdi32\CreateColorSpace', 'ptr', lpLogColorSpace, 'ptr')

	static CreateCompatibleBitmap(hdc, nWidth, nHeight) => DllCall('Gdi32\CreateCompatibleBitmap', 'ptr', hdc, 'int', nWidth, 'int', nHeight, 'ptr')

	static CreateCompatibleDC(hdc) => DllCall('Gdi32\CreateCompatibleDC', 'ptr', hdc, 'ptr')

	static CreateDC(lpszDriver, lpszDevice, lpszOutput, lpInitData) => DllCall('Gdi32\CreateDC', 'str', lpszDriver, 'str', lpszDevice, 'str', lpszOutput, 'ptr', lpInitData, 'ptr')

	static CreateDIBPatternBrush(hglbDIBPacked, fuColorSpec) => DllCall('Gdi32\CreateDIBPatternBrush', 'ptr', hglbDIBPacked, 'uint', fuColorSpec, 'ptr')

	static CreateDIBPatternBrushPt(lpPackedDIB, iUsage) => DllCall('Gdi32\CreateDIBPatternBrushPt', 'ptr', lpPackedDIB, 'uint', iUsage, 'ptr')

	static CreateDIBSection(hdc, pbmi, iUsage, ppvBits, hSection, dwOffset) => DllCall('Gdi32\CreateDIBSection', 'ptr', hdc, 'ptr', pbmi, 'uint', iUsage, 'ptr', ppvBits, 'ptr', hSection, 'uint', dwOffset, 'ptr')

	static CreateDIBitmap(hdc, lpbmih, fdwInit, lpbInit, lpbmi, fuUsage) => DllCall('Gdi32\CreateDIBitmap', 'ptr', hdc, 'ptr', lpbmih, 'uint', fdwInit, 'ptr', lpbInit, 'ptr', lpbmi, 'uint', fuUsage, 'ptr')

	static CreateDiscardableBitmap(hdc, nWidth, nHeight) => DllCall('Gdi32\CreateDiscardableBitmap', 'ptr', hdc, 'int', nWidth, 'int', nHeight, 'ptr')

	static CreateEllipticRgn(nLeftRect, nTopRect, nRightRect, nBottomRect) => DllCall('Gdi32\CreateEllipticRgn', 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'ptr')

	static CreateEllipticRgnIndirect(lprc) => DllCall('Gdi32\CreateEllipticRgnIndirect', 'ptr', lprc, 'ptr')

	static CreateEnhMetaFile(hdcRef, lpFilename, lpRect, lpDescription) => DllCall('Gdi32\CreateEnhMetaFile', 'ptr', hdcRef, 'str', lpFilename, 'ptr', lpRect, 'str', lpDescription, 'ptr')

	static CreateFont(nHeight, nWidth, nEscapement, nOrientation, fnWeight, fdwItalic, fdwUnderline, fdwStrikeOut, fdwCharSet, fdwOutputPrecision, fdwClipPrecision, fdwQuality, fdwPitchAndFamily, lpszFace) => DllCall('Gdi32\CreateFont', 'int', nHeight, 'int', nWidth, 'int', nEscapement, 'int', nOrientation, 'int', fnWeight, 'uint', fdwItalic, 'uint', fdwUnderline, 'uint', fdwStrikeOut, 'uint', fdwCharSet, 'uint', fdwOutputPrecision, 'uint', fdwClipPrecision, 'uint', fdwQuality, 'uint', fdwPitchAndFamily, 'str', lpszFace, 'ptr')

	static CreateFontIndirect(lplf) => DllCall('Gdi32\CreateFontIndirect', 'ptr', lplf, 'ptr')

	static CreateFontIndirectEx(penumlfex) => DllCall('Gdi32\CreateFontIndirectEx', 'ptr', penumlfex, 'ptr')

	static CreateHalftonePalette(hdc) => DllCall('Gdi32\CreateHalftonePalette', 'ptr', hdc, 'ptr')

	static CreateHatchBrush(fnStyle, clrref) => DllCall('Gdi32\CreateHatchBrush', 'int', fnStyle, 'uint', clrref, 'ptr')

	static CreateIC(lpszDriver, lpszDevice, lpszOutput, lpdvmInit) => DllCall('Gdi32\CreateIC', 'str', lpszDriver, 'str', lpszDevice, 'str', lpszOutput, 'ptr', lpdvmInit, 'ptr')

	static CreateMetaFile(lpszFile) => DllCall('Gdi32\CreateMetaFile', 'str', lpszFile, 'ptr')

	static CreatePalette(lplgpl) => DllCall('Gdi32\CreatePalette', 'ptr', lplgpl, 'ptr')

	static CreatePatternBrush(hbmp) => DllCall('Gdi32\CreatePatternBrush', 'ptr', hbmp, 'ptr')

	static CreatePen(fnPenStyle, nWidth, crColor) => DllCall('Gdi32\CreatePen', 'int', fnPenStyle, 'int', nWidth, 'uint', crColor, 'ptr')

	static CreatePenIndirect(lplgpn) => DllCall('Gdi32\CreatePenIndirect', 'ptr', lplgpn, 'ptr')

	static CreatePolyPolygonRgn(lppt, &lpPolyCounts, nCount, fnPolyFillMode) => DllCall('Gdi32\CreatePolyPolygonRgn', 'ptr', lppt, 'int*', &lpPolyCounts, 'int', nCount, 'int', fnPolyFillMode, 'ptr')

	static CreatePolygonRgn(lppt, cPoints, fnPolyFillMode) => DllCall('Gdi32\CreatePolygonRgn', 'ptr', lppt, 'int', cPoints, 'int', fnPolyFillMode, 'ptr')

	static CreateRectRgn(nLeftRect, nTopRect, nRightRect, nBottomRect) => DllCall('Gdi32\CreateRectRgn', 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'ptr')

	static CreateRectRgnIndirect(lprc) => DllCall('Gdi32\CreateRectRgnIndirect', 'ptr', lprc, 'ptr')

	static CreateRoundRectRgn(nLeftRect, nTopRect, nRightRect, nBottomRect, nWidthEllipse, nHeightEllipse) => DllCall('Gdi32\CreateRoundRectRgn', 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int', nWidthEllipse, 'int', nHeightEllipse, 'ptr')

	static CreateScalableFontResource(fdwHidden, lpszFontRes, lpszFontFile, lpszCurrentPath) => DllCall('Gdi32\CreateScalableFontResource', 'uint', fdwHidden, 'str', lpszFontRes, 'str', lpszFontFile, 'str', lpszCurrentPath, 'int')

	static CreateSolidBrush(crColor) => DllCall('Gdi32\CreateSolidBrush', 'uint', crColor, 'ptr')

	static DDCCIGetCapabilitiesString(hMonitor, pszString, dwLength) => DllCall('Gdi32\DDCCIGetCapabilitiesString', 'ptr', hMonitor, 'astr', pszString, 'uint', dwLength, 'int')

	static DDCCIGetCapabilitiesStringLength(hMonitor, &pdwLength) => DllCall('Gdi32\DDCCIGetCapabilitiesStringLength', 'ptr', hMonitor, 'uint*', &pdwLength, 'int')

	static DDCCIGetTimingReport(hMonitor, pmtr) => DllCall('Gdi32\DDCCIGetTimingReport', 'ptr', hMonitor, 'ptr', pmtr, 'int')

	static DDCCIGetVCPFeature(hMonitor, dwVCPCode, pvct, &pdwCurrentValue, &pdwMaximumValue) => DllCall('Gdi32\DDCCIGetVCPFeature', 'ptr', hMonitor, 'uint', dwVCPCode, 'ptr', pvct, 'uint*', &pdwCurrentValue, 'uint*', &pdwMaximumValue, 'int')

	static DDCCISaveCurrentSettings(hMonitor) => DllCall('Gdi32\DDCCISaveCurrentSettings', 'ptr', hMonitor, 'int')

	static DDCCISetVCPFeature(hMonitor, dwVCPCode, dwNewValue) => DllCall('Gdi32\DDCCISetVCPFeature', 'ptr', hMonitor, 'uint', dwVCPCode, 'uint', dwNewValue, 'int')

	static DPtoLP(hdc, lpPoints, nCount) => DllCall('Gdi32\DPtoLP', 'ptr', hdc, 'ptr', lpPoints, 'int', nCount, 'int')

	static DeleteColorSpace(hColorSpace) => DllCall('Gdi32\DeleteColorSpace', 'ptr', hColorSpace, 'int')

	static DeleteDC(hdc) => DllCall('Gdi32\DeleteDC', 'ptr', hdc, 'int')

	static DeleteEnhMetaFile(hemf) => DllCall('Gdi32\DeleteEnhMetaFile', 'ptr', hemf, 'int')

	static DeleteMetaFile(hmf) => DllCall('Gdi32\DeleteMetaFile', 'ptr', hmf, 'int')

	static DeleteObject(hObject) => DllCall('Gdi32\DeleteObject', 'ptr', hObject, 'int')

	static DescribePixelFormat(hdc, iPixelFormat, nBytes, ppfd) => DllCall('Gdi32\DescribePixelFormat', 'ptr', hdc, 'int', iPixelFormat, 'uint', nBytes, 'ptr', ppfd, 'int')

	static DestroyPhysicalMonitorInternal(hMonitor) => DllCall('Gdi32\DestroyPhysicalMonitorInternal', 'ptr', hMonitor, 'int')

	static DrawEscape(hdc, nEscape, cbInput, lpszInData) => DllCall('Gdi32\DrawEscape', 'ptr', hdc, 'int', nEscape, 'int', cbInput, 'astr', lpszInData, 'int')

	static Ellipse(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) => DllCall('Gdi32\Ellipse', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int')

	static EnableEUDC(&fEnableEUDC) => DllCall('Gdi32\EnableEUDC', 'int*', &fEnableEUDC, 'int')

	static EndDoc(hdc) => DllCall('Gdi32\EndDoc', 'ptr', hdc, 'int')

	static EndPage(hdc) => DllCall('Gdi32\EndPage', 'ptr', hdc, 'int')

	static EndPath(hdc) => DllCall('Gdi32\EndPath', 'ptr', hdc, 'int')

	static EnumEnhMetaFile(hdc, hemf, lpEnhMetaFunc, lpData, lpRect) => DllCall('Gdi32\EnumEnhMetaFile', 'ptr', hdc, 'ptr', hemf, 'ptr', lpEnhMetaFunc, 'ptr', lpData, 'ptr', lpRect, 'int')

	static EnumFontFamilies(hdc, lpszFamily, lpEnumFontFamProc, lParam) => DllCall('Gdi32\EnumFontFamilies', 'ptr', hdc, 'str', lpszFamily, 'ptr', lpEnumFontFamProc, 'uptr', lParam, 'int')

	static EnumFontFamiliesEx(hdc, lpLogfont, lpEnumFontFamExProc, lParam, dwFlags) => DllCall('Gdi32\EnumFontFamiliesEx', 'ptr', hdc, 'ptr', lpLogfont, 'ptr', lpEnumFontFamExProc, 'uptr', lParam, 'uint', dwFlags, 'int')

	static EnumFonts(hdc, lpFaceName, lpFontFunc, lParam) => DllCall('Gdi32\EnumFonts', 'ptr', hdc, 'str', lpFaceName, 'ptr', lpFontFunc, 'uptr', lParam, 'int')

	static EnumICMProfiles(hDC, lpEnumICMProfilesFunc, lParam) => DllCall('Gdi32\EnumICMProfiles', 'ptr', hDC, 'ptr', lpEnumICMProfilesFunc, 'uptr', lParam, 'int')

	static EnumMetaFile(hdc, hmf, lpMetaFunc, lParam) => DllCall('Gdi32\EnumMetaFile', 'ptr', hdc, 'ptr', hmf, 'ptr', lpMetaFunc, 'uptr', lParam, 'int')

	static EnumObjects(hdc, nObjectType, lpObjectFunc, lParam) => DllCall('Gdi32\EnumObjects', 'ptr', hdc, 'int', nObjectType, 'ptr', lpObjectFunc, 'uptr', lParam, 'int')

	static EqualRgn(hSrcRgn1, hSrcRgn2) => DllCall('Gdi32\EqualRgn', 'ptr', hSrcRgn1, 'ptr', hSrcRgn2, 'int')

	static Escape(hdc, nEscape, cbInput, lpvInData, lpvOutData) => DllCall('Gdi32\Escape', 'ptr', hdc, 'int', nEscape, 'int', cbInput, 'astr', lpvInData, 'ptr', lpvOutData, 'int')

	static ExcludeClipRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) => DllCall('Gdi32\ExcludeClipRect', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int')

	static ExtCreatePen(dwPenStyle, dwWidth, lplb, dwStyleCount, &lpStyle) => DllCall('Gdi32\ExtCreatePen', 'uint', dwPenStyle, 'uint', dwWidth, 'ptr', lplb, 'uint', dwStyleCount, 'uint*', &lpStyle, 'ptr')

	static ExtCreateRegion(lpXform, nCount, lpRgnData) => DllCall('Gdi32\ExtCreateRegion', 'ptr', lpXform, 'uint', nCount, 'ptr', lpRgnData, 'ptr')

	static ExtEscape(hdc, nEscape, cbInput, lpszInData, cbOutput, lpszOutData) => DllCall('Gdi32\ExtEscape', 'ptr', hdc, 'int', nEscape, 'int', cbInput, 'astr', lpszInData, 'int', cbOutput, 'astr', lpszOutData, 'int')

	static ExtFloodFill(hdc, nXStart, nYStart, crColor, fuFillType) => DllCall('Gdi32\ExtFloodFill', 'ptr', hdc, 'int', nXStart, 'int', nYStart, 'uint', crColor, 'uint', fuFillType, 'ptr')

	static ExtSelectClipRgn(hdc, hrgn, fnMode) => DllCall('Gdi32\ExtSelectClipRgn', 'ptr', hdc, 'ptr', hrgn, 'int', fnMode, 'int')

	static ExtTextOut(hdc, X, Y, fuOptions, lprc, lpString, cbCount, &lpDx) => DllCall('Gdi32\ExtTextOut', 'ptr', hdc, 'int', X, 'int', Y, 'uint', fuOptions, 'ptr', lprc, 'str', lpString, 'uint', cbCount, 'int*', &lpDx, 'int')

	static FillPath(hdc) => DllCall('Gdi32\FillPath', 'ptr', hdc, 'int')

	static FillRgn(hdc, hrgn, hbr) => DllCall('Gdi32\FillRgn', 'ptr', hdc, 'ptr', hrgn, 'ptr', hbr, 'ptr')

	static FlattenPath(hdc) => DllCall('Gdi32\FlattenPath', 'ptr', hdc, 'int')

	static FloodFill(hdc, nXStart, nYStart, crFill) => DllCall('Gdi32\FloodFill', 'ptr', hdc, 'int', nXStart, 'int', nYStart, 'uint', crFill, 'int')

	static FrameRgn(hdc, hrgn, hbr, nWidth, nHeight) => DllCall('Gdi32\FrameRgn', 'ptr', hdc, 'ptr', hrgn, 'ptr', hbr, 'int', nWidth, 'int', nHeight, 'int')

	static GdiAlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc, ftn) => DllCall('Gdi32\GdiAlphaBlend', 'ptr', hdcDest, 'int', xoriginDest, 'int', yoriginDest, 'int', wDest, 'int', hDest, 'ptr', hdcSrc, 'int', xoriginSrc, 'int', yoriginSrc, 'int', wSrc, 'int', hSrc, 'uint', ftn, 'int')

	static GdiComment(hdc, cbSize, &lpData) => DllCall('Gdi32\GdiComment', 'ptr', hdc, 'uint', cbSize, 'uchar*', &lpData, 'int')

	static GdiFlush() => DllCall('Gdi32\GdiFlush', 'int')

	static GdiGetBatchLimit() => DllCall('Gdi32\GdiGetBatchLimit', 'uint')

	static GdiGradientFill(hdc, pVertex, dwNumVertex, pMesh, dwNumMesh, dwMode) => DllCall('Gdi32\GdiGradientFill', 'ptr', hdc, 'ptr', pVertex, 'uint', dwNumVertex, 'ptr', pMesh, 'uint', dwNumMesh, 'uint', dwMode, 'int')

	static GdiSetBatchLimit(dwLimit) => DllCall('Gdi32\GdiSetBatchLimit', 'uint', dwLimit, 'uint')

	static GdiTransparentBlt(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc, crTransparent) => DllCall('Gdi32\GdiTransparentBlt', 'ptr', hdcDest, 'int', xoriginDest, 'int', yoriginDest, 'int', wDest, 'int', hDest, 'ptr', hdcSrc, 'int', xoriginSrc, 'int', yoriginSrc, 'int', wSrc, 'int', hSrc, 'uint', crTransparent, 'int')

	static GetArcDirection(hdc) => DllCall('Gdi32\GetArcDirection', 'ptr', hdc, 'int')

	static GetAspectRatioFilterEx(hdc, lpAspectRatio) => DllCall('Gdi32\GetAspectRatioFilterEx', 'ptr', hdc, 'ptr', lpAspectRatio, 'int')

	static GetBitmapBits(hbmp, cbBuffer, lpvBits) => DllCall('Gdi32\GetBitmapBits', 'ptr', hbmp, 'int', cbBuffer, 'ptr', lpvBits, 'int')

	static GetBitmapDimensionEx(hBitmap, lpDimension) => DllCall('Gdi32\GetBitmapDimensionEx', 'ptr', hBitmap, 'ptr', lpDimension, 'int')

	static GetBkColor(hdc) => DllCall('Gdi32\GetBkColor', 'ptr', hdc, 'uint')

	static GetBkMode(hdc) => DllCall('Gdi32\GetBkMode', 'ptr', hdc, 'int')

	static GetBoundsRect(hdc, lprcBounds, flags) => DllCall('Gdi32\GetBoundsRect', 'ptr', hdc, 'ptr', lprcBounds, 'uint', flags, 'uint')

	static GetBrushOrgEx(hdc, lppt) => DllCall('Gdi32\GetBrushOrgEx', 'ptr', hdc, 'ptr', lppt, 'int')

	static GetCharABCWidths(hdc, uFirstChar, uLastChar, lpabc) => DllCall('Gdi32\GetCharABCWidths', 'ptr', hdc, 'uint', uFirstChar, 'uint', uLastChar, 'ptr', lpabc, 'int')

	static GetCharABCWidthsFloat(hdc, iFirstChar, iLastChar, lpABCF) => DllCall('Gdi32\GetCharABCWidthsFloat', 'ptr', hdc, 'uint', iFirstChar, 'uint', iLastChar, 'ptr', lpABCF, 'int')

	static GetCharABCWidthsI(hdc, giFirst, cgi, pgi, lpabc) => DllCall('Gdi32\GetCharABCWidthsI', 'ptr', hdc, 'uint', giFirst, 'uint', cgi, 'ptr', pgi, 'ptr', lpabc, 'int')

	static GetCharWidth(hdc, iFirstChar, iLastChar, lpBuffer) => DllCall('Gdi32\GetCharWidth', 'ptr', hdc, 'uint', iFirstChar, 'uint', iLastChar, 'ptr', lpBuffer, 'int')

	static GetCharWidth32(hdc, iFirstChar, iLastChar, lpBuffer) => DllCall('Gdi32\GetCharWidth32', 'ptr', hdc, 'uint', iFirstChar, 'uint', iLastChar, 'ptr', lpBuffer, 'int')

	static GetCharWidthFloat(hdc, iFirstChar, iLastChar, pxBuffer) => DllCall('Gdi32\GetCharWidthFloat', 'ptr', hdc, 'uint', iFirstChar, 'uint', iLastChar, 'ptr', pxBuffer, 'int')

	static GetCharWidthI(hdc, giFirst, cgi, pgi, lpBuffer) => DllCall('Gdi32\GetCharWidthI', 'ptr', hdc, 'uint', giFirst, 'uint', cgi, 'ptr', pgi, 'ptr', lpBuffer, 'int')

	static GetCharacterPlacement(hdc, lpString, nCount, nMaxExtent, lpResults, dwFlags) => DllCall('Gdi32\GetCharacterPlacement', 'ptr', hdc, 'str', lpString, 'int', nCount, 'int', nMaxExtent, 'ptr', lpResults, 'uint', dwFlags, 'uint')

	static GetClipBox(hdc, lprc) => DllCall('Gdi32\GetClipBox', 'ptr', hdc, 'ptr', lprc, 'int')

	static GetClipRgn(hdc, hrgn) => DllCall('Gdi32\GetClipRgn', 'ptr', hdc, 'ptr', hrgn, 'int')

	static GetColorAdjustment(hdc, lpca) => DllCall('Gdi32\GetColorAdjustment', 'ptr', hdc, 'ptr', lpca, 'int')

	static GetColorSpace(hDC) => DllCall('Gdi32\GetColorSpace', 'ptr', hDC, 'ptr')

	static GetCurrentObject(hdc, uObjectType) => DllCall('Gdi32\GetCurrentObject', 'ptr', hdc, 'uint', uObjectType, 'ptr')

	static GetCurrentPositionEx(hdc, lpPoint) => DllCall('Gdi32\GetCurrentPositionEx', 'ptr', hdc, 'ptr', lpPoint, 'int')

	static GetDCBrushColor(hdc) => DllCall('Gdi32\GetDCBrushColor', 'ptr', hdc, 'uint')

	static GetDCOrgEx(hdc, lpPoint) => DllCall('Gdi32\GetDCOrgEx', 'ptr', hdc, 'ptr', lpPoint, 'int')

	static GetDCPenColor(hdc) => DllCall('Gdi32\GetDCPenColor', 'ptr', hdc, 'uint')

	static GetDIBColorTable(hdc, uStartIndex, cEntries, pColors) => DllCall('Gdi32\GetDIBColorTable', 'ptr', hdc, 'uint', uStartIndex, 'uint', cEntries, 'ptr', pColors, 'uint')

	static GetDIBits(hdc, hbmp, uStartScan, cScanLines, lpvBits, lpbi, uUsage) => DllCall('Gdi32\GetDIBits', 'ptr', hdc, 'ptr', hbmp, 'uint', uStartScan, 'uint', cScanLines, 'ptr', lpvBits, 'ptr', lpbi, 'uint', uUsage, 'int')

	static GetDeviceCaps(hdc, nIndex) => DllCall('Gdi32\GetDeviceCaps', 'ptr', hdc, 'int', nIndex, 'int')

	static GetDeviceGammaRamp(hDC, lpRamp) => DllCall('Gdi32\GetDeviceGammaRamp', 'ptr', hDC, 'ptr', lpRamp, 'int')

	static GetEnhMetaFile(lpszMetaFile) => DllCall('Gdi32\GetEnhMetaFile', 'str', lpszMetaFile, 'ptr')

	static GetEnhMetaFileBits(hemf, cbBuffer, lpbBuffer) => DllCall('Gdi32\GetEnhMetaFileBits', 'ptr', hemf, 'uint', cbBuffer, 'ptr', lpbBuffer, 'uint')

	static GetEnhMetaFileDescription(hemf, cchBuffer, lpszDescription) => DllCall('Gdi32\GetEnhMetaFileDescription', 'ptr', hemf, 'uint', cchBuffer, 'str', lpszDescription, 'uint')

	static GetEnhMetaFileHeader(hemf, cbBuffer, lpemh) => DllCall('Gdi32\GetEnhMetaFileHeader', 'ptr', hemf, 'uint', cbBuffer, 'ptr', lpemh, 'uint')

	static GetEnhMetaFilePaletteEntries(hemf, cEntries, lppe) => DllCall('Gdi32\GetEnhMetaFilePaletteEntries', 'ptr', hemf, 'uint', cEntries, 'ptr', lppe, 'uint')

	static GetEnhMetaFilePixelFormat(hemf, cbBuffer, ppfd) => DllCall('Gdi32\GetEnhMetaFilePixelFormat', 'ptr', hemf, 'uint', cbBuffer, 'ptr', ppfd, 'uint')

	static GetFontData(hdc, dwTable, dwOffset, lpvBuffer, cbData) => DllCall('Gdi32\GetFontData', 'ptr', hdc, 'uint', dwTable, 'uint', dwOffset, 'ptr', lpvBuffer, 'uint', cbData, 'uint')

	static GetFontLanguageInfo(hdc) => DllCall('Gdi32\GetFontLanguageInfo', 'ptr', hdc, 'uint')

	static GetFontUnicodeRanges(hdc, lpgs) => DllCall('Gdi32\GetFontUnicodeRanges', 'ptr', hdc, 'ptr', lpgs, 'uint')

	static GetGlyphIndices(hdc, lpstr, c, pgi, fl) => DllCall('Gdi32\GetGlyphIndices', 'ptr', hdc, 'str', lpstr, 'int', c, 'ptr', pgi, 'uint', fl, 'uint')

	static GetGlyphOutline(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2) => DllCall('Gdi32\GetGlyphOutline', 'ptr', hdc, 'uint', uChar, 'uint', uFormat, 'ptr', lpgm, 'uint', cbBuffer, 'ptr', lpvBuffer, 'ptr', lpmat2, 'uint')

	static GetGraphicsMode(hdc) => DllCall('Gdi32\GetGraphicsMode', 'ptr', hdc, 'int')

	static GetICMProfile(hDC, lpcbName, lpszFilename) => DllCall('Gdi32\GetICMProfile', 'ptr', hDC, 'ptr', lpcbName, 'str', lpszFilename, 'int')

	static GetKerningPairs(hdc, nNumPairs, lpkrnpair) => DllCall('Gdi32\GetKerningPairs', 'ptr', hdc, 'uint', nNumPairs, 'ptr', lpkrnpair, 'uint')

	static GetLayout(hdc) => DllCall('Gdi32\GetLayout', 'ptr', hdc, 'uint')

	static GetLogColorSpace(hColorSpace, lpBuffer, nSize) => DllCall('Gdi32\GetLogColorSpace', 'ptr', hColorSpace, 'ptr', lpBuffer, 'uint', nSize, 'int')

	static GetMapMode(hdc) => DllCall('Gdi32\GetMapMode', 'ptr', hdc, 'int')

	static GetMetaFileBitsEx(hmf, nSize, lpvData) => DllCall('Gdi32\GetMetaFileBitsEx', 'ptr', hmf, 'uint', nSize, 'ptr', lpvData, 'uint')

	static GetMetaRgn(hdc, hrgn) => DllCall('Gdi32\GetMetaRgn', 'ptr', hdc, 'ptr', hrgn, 'int')

	static GetMiterLimit(hdc, peLimit) => DllCall('Gdi32\GetMiterLimit', 'ptr', hdc, 'ptr', peLimit, 'int')

	static GetNearestColor(hdc, crColor) => DllCall('Gdi32\GetNearestColor', 'ptr', hdc, 'uint', crColor, 'uint')

	static GetNearestPaletteIndex(hpal, crColor) => DllCall('Gdi32\GetNearestPaletteIndex', 'ptr', hpal, 'uint', crColor, 'uint')

	static GetNumberOfPhysicalMonitors(pstrDeviceName, pdwNumberOfPhysicalMonitors) => DllCall('Gdi32\GetNumberOfPhysicalMonitors', 'wstr', pstrDeviceName, 'ptr', pdwNumberOfPhysicalMonitors, 'int')

	static GetObject(hgdiobj, cbBuffer, lpvObject) => DllCall('Gdi32\GetObject', 'ptr', hgdiobj, 'int', cbBuffer, 'ptr', lpvObject, 'int')

	static GetObjectType(h) => DllCall('Gdi32\GetObjectType', 'ptr', h, 'uint')

	static GetOutlineTextMetrics(hdc, cbData, lpOTM) => DllCall('Gdi32\GetOutlineTextMetrics', 'ptr', hdc, 'uint', cbData, 'ptr', lpOTM, 'uint')

	static GetPaletteEntries(hpal, iStartIndex, nEntries, lppe) => DllCall('Gdi32\GetPaletteEntries', 'ptr', hpal, 'uint', iStartIndex, 'uint', nEntries, 'ptr', lppe, 'uint')

	static GetPath(hdc, lpPoints, lpTypes, nSize) => DllCall('Gdi32\GetPath', 'ptr', hdc, 'ptr', lpPoints, 'ptr', lpTypes, 'int', nSize, 'int')

	static GetPhysicalMonitorDescription(hMonitor, dwPhysicalMonitorDescriptionSizeInChars, szPhysicalMonitorDescription) => DllCall('Gdi32\GetPhysicalMonitorDescription', 'ptr', hMonitor, 'uint', dwPhysicalMonitorDescriptionSizeInChars, 'wstr', szPhysicalMonitorDescription, 'int')

	static GetPhysicalMonitors(pstrDeviceName, dwPhysicalMonitorArraySize, &pdwNumPhysicalMonitorHandlesInArray, phPhysicalMonitorArray) => DllCall('Gdi32\GetPhysicalMonitors', 'wstr', pstrDeviceName, 'uint', dwPhysicalMonitorArraySize, 'uint*', &pdwNumPhysicalMonitorHandlesInArray, 'ptr', phPhysicalMonitorArray, 'int')

	static GetPixel(hdc, nXPos, nYPos) => DllCall('Gdi32\GetPixel', 'ptr', hdc, 'int', nXPos, 'int', nYPos, 'uint')

	static GetPixelFormat(hDC) => DllCall('Gdi32\GetPixelFormat', 'ptr', hDC, 'int')

	static GetPolyFillMode(hdc) => DllCall('Gdi32\GetPolyFillMode', 'ptr', hdc, 'int')

	static GetROP2(hdc) => DllCall('Gdi32\GetROP2', 'ptr', hdc, 'int')

	static GetRandomRgn(hdc, hrgn, iNum) => DllCall('Gdi32\GetRandomRgn', 'ptr', hdc, 'ptr', hrgn, 'int', iNum, 'int')

	static GetRasterizerCaps(lprs, cb) => DllCall('Gdi32\GetRasterizerCaps', 'ptr', lprs, 'uint', cb, 'int')

	static GetRegionData(hRgn, dwCount, lpRgnData) => DllCall('Gdi32\GetRegionData', 'ptr', hRgn, 'uint', dwCount, 'ptr', lpRgnData, 'uint')

	static GetRgnBox(hrgn, lprc) => DllCall('Gdi32\GetRgnBox', 'ptr', hrgn, 'ptr', lprc, 'int')

	static GetStockObject(fnObject) => DllCall('Gdi32\GetStockObject', 'int', fnObject, 'ptr')

	static GetStretchBltMode(hdc) => DllCall('Gdi32\GetStretchBltMode', 'ptr', hdc, 'int')

	static GetSystemPaletteEntries(hdc, iStartIndex, nEntries, lppe) => DllCall('Gdi32\GetSystemPaletteEntries', 'ptr', hdc, 'uint', iStartIndex, 'uint', nEntries, 'ptr', lppe, 'uint')

	static GetSystemPaletteUse(hdc) => DllCall('Gdi32\GetSystemPaletteUse', 'ptr', hdc, 'uint')

	static GetTextAlign(hdc) => DllCall('Gdi32\GetTextAlign', 'ptr', hdc, 'uint')

	static GetTextCharacterExtra(hdc) => DllCall('Gdi32\GetTextCharacterExtra', 'ptr', hdc, 'int')

	static GetTextCharset(hdc) => DllCall('Gdi32\GetTextCharset', 'ptr', hdc, 'int')

	static GetTextCharsetInfo(hdc, lpSig, dwFlags) => DllCall('Gdi32\GetTextCharsetInfo', 'ptr', hdc, 'ptr', lpSig, 'uint', dwFlags, 'int')

	static GetTextColor(hdc) => DllCall('Gdi32\GetTextColor', 'ptr', hdc, 'uint')

	static GetTextExtentExPoint(hdc, lpszStr, cchString, nMaxExtent, lpnFit, alpDx, lpSize) => DllCall('Gdi32\GetTextExtentExPoint', 'ptr', hdc, 'str', lpszStr, 'int', cchString, 'int', nMaxExtent, 'ptr', lpnFit, 'ptr', alpDx, 'ptr', lpSize, 'int')

	static GetTextExtentExPointI(hdc, pgiIn, cgi, nMaxExtent, lpnFit, alpDx, lpSize) => DllCall('Gdi32\GetTextExtentExPointI', 'ptr', hdc, 'ptr', pgiIn, 'int', cgi, 'int', nMaxExtent, 'ptr', lpnFit, 'ptr', alpDx, 'ptr', lpSize, 'int')

	static GetTextExtentPoint(hdc, lpString, cbString, lpSize) => DllCall('Gdi32\GetTextExtentPoint', 'ptr', hdc, 'str', lpString, 'int', cbString, 'ptr', lpSize, 'int')

	static GetTextExtentPoint32(hdc, lpString, c, lpSize) => DllCall('Gdi32\GetTextExtentPoint32', 'ptr', hdc, 'str', lpString, 'int', c, 'ptr', lpSize, 'int')

	static GetTextExtentPointI(hdc, pgiIn, cgi, lpSize) => DllCall('Gdi32\GetTextExtentPointI', 'ptr', hdc, 'ptr', pgiIn, 'int', cgi, 'ptr', lpSize, 'int')

	static GetTextFace(hdc, nCount, lpFaceName) => DllCall('Gdi32\GetTextFace', 'ptr', hdc, 'int', nCount, 'str', lpFaceName, 'int')

	static GetTextMetrics(hdc, lptm) => DllCall('Gdi32\GetTextMetrics', 'ptr', hdc, 'ptr', lptm, 'int')

	static GetViewportExtEx(hdc, lpSize) => DllCall('Gdi32\GetViewportExtEx', 'ptr', hdc, 'ptr', lpSize, 'int')

	static GetViewportOrgEx(hdc, lpPoint) => DllCall('Gdi32\GetViewportOrgEx', 'ptr', hdc, 'ptr', lpPoint, 'int')

	static GetWinMetaFileBits(hemf, cbBuffer, lpbBuffer, fnMapMode, hdcRef) => DllCall('Gdi32\GetWinMetaFileBits', 'ptr', hemf, 'uint', cbBuffer, 'ptr', lpbBuffer, 'int', fnMapMode, 'ptr', hdcRef, 'uint')

	static GetWindowExtEx(hdc, lpSize) => DllCall('Gdi32\GetWindowExtEx', 'ptr', hdc, 'ptr', lpSize, 'int')

	static GetWindowOrgEx(hdc, lpPoint) => DllCall('Gdi32\GetWindowOrgEx', 'ptr', hdc, 'ptr', lpPoint, 'int')

	static GetWorldTransform(hdc, lpXform) => DllCall('Gdi32\GetWorldTransform', 'ptr', hdc, 'ptr', lpXform, 'int')

	static IntersectClipRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) => DllCall('Gdi32\IntersectClipRect', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int')

	static InvertRgn(hdc, hrgn) => DllCall('Gdi32\InvertRgn', 'ptr', hdc, 'ptr', hrgn, 'int')

	static LPtoDP(hdc, lpPoints, nCount) => DllCall('Gdi32\LPtoDP', 'ptr', hdc, 'ptr', lpPoints, 'int', nCount, 'int')

	static LineDDA(nXStart, nYStart, nXEnd, nYEnd, lpLineFunc, lpData) => DllCall('Gdi32\LineDDA', 'int', nXStart, 'int', nYStart, 'int', nXEnd, 'int', nYEnd, 'ptr', lpLineFunc, 'uptr', lpData, 'int')

	static LineTo(hdc, nXEnd, nYEnd) => DllCall('Gdi32\LineTo', 'ptr', hdc, 'int', nXEnd, 'int', nYEnd, 'int')

	static MaskBlt(hdcDest, nXDest, nYDest, nWidth, nHeight, hdcSrc, nXSrc, nYSrc, hbmMask, xMask, yMask, dwRop) => DllCall('Gdi32\MaskBlt', 'ptr', hdcDest, 'int', nXDest, 'int', nYDest, 'int', nWidth, 'int', nHeight, 'ptr', hdcSrc, 'int', nXSrc, 'int', nYSrc, 'ptr', hbmMask, 'int', xMask, 'int', yMask, 'uint', dwRop, 'int')

	static ModifyWorldTransform(hdc, lpXform, iMode) => DllCall('Gdi32\ModifyWorldTransform', 'ptr', hdc, 'ptr', lpXform, 'uint', iMode, 'int')

	static MoveToEx(hdc, X, Y, lpPoint) => DllCall('Gdi32\MoveToEx', 'ptr', hdc, 'int', X, 'int', Y, 'ptr', lpPoint, 'int')

	static OffsetClipRgn(hdc, nXOffset, nYOffset) => DllCall('Gdi32\OffsetClipRgn', 'ptr', hdc, 'int', nXOffset, 'int', nYOffset, 'int')

	static OffsetRgn(hrgn, nXOffset, nYOffset) => DllCall('Gdi32\OffsetRgn', 'ptr', hrgn, 'int', nXOffset, 'int', nYOffset, 'int')

	static OffsetViewportOrgEx(hdc, nXOffset, nYOffset, lpPoint) => DllCall('Gdi32\OffsetViewportOrgEx', 'ptr', hdc, 'int', nXOffset, 'int', nYOffset, 'ptr', lpPoint, 'int')

	static OffsetWindowOrgEx(hdc, nXOffset, nYOffset, lpPoint) => DllCall('Gdi32\OffsetWindowOrgEx', 'ptr', hdc, 'int', nXOffset, 'int', nYOffset, 'ptr', lpPoint, 'int')

	static PaintRgn(hdc, hrgn) => DllCall('Gdi32\PaintRgn', 'ptr', hdc, 'ptr', hrgn, 'int')

	static PatBlt(hdc, nXLeft, nYLeft, nWidth, nHeight, dwRop) => DllCall('Gdi32\PatBlt', 'ptr', hdc, 'int', nXLeft, 'int', nYLeft, 'int', nWidth, 'int', nHeight, 'uint', dwRop, 'int')

	static PathToRegion(hdc) => DllCall('Gdi32\PathToRegion', 'ptr', hdc, 'ptr')

	static Pie(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nXRadial1, nYRadial1, nXRadial2, nYRadial2) => DllCall('Gdi32\Pie', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int', nXRadial1, 'int', nYRadial1, 'int', nXRadial2, 'int', nYRadial2, 'int')

	static PlayEnhMetaFile(hdc, hemf, lpRect) => DllCall('Gdi32\PlayEnhMetaFile', 'ptr', hdc, 'ptr', hemf, 'ptr', lpRect, 'int')

	static PlayEnhMetaFileRecord(hdc, lpHandletable, lpEnhMetaRecord, nHandles) => DllCall('Gdi32\PlayEnhMetaFileRecord', 'ptr', hdc, 'ptr', lpHandletable, 'ptr', lpEnhMetaRecord, 'uint', nHandles, 'int')

	static PlayMetaFile(hdc, hmf) => DllCall('Gdi32\PlayMetaFile', 'ptr', hdc, 'ptr', hmf, 'int')

	static PlayMetaFileRecord(hdc, lpHandletable, lpMetaRecord, nHandles) => DllCall('Gdi32\PlayMetaFileRecord', 'ptr', hdc, 'ptr', lpHandletable, 'ptr', lpMetaRecord, 'uint', nHandles, 'int')

	static PlgBlt(hdcDest, lpPoint, hdcSrc, nXSrc, nYSrc, nWidth, nHeight, hbmMask, xMask, yMask) => DllCall('Gdi32\PlgBlt', 'ptr', hdcDest, 'ptr', lpPoint, 'ptr', hdcSrc, 'int', nXSrc, 'int', nYSrc, 'int', nWidth, 'int', nHeight, 'ptr', hbmMask, 'int', xMask, 'int', yMask, 'int')

	static PolyBezier(hdc, lppt, cPoints) => DllCall('Gdi32\PolyBezier', 'ptr', hdc, 'ptr', lppt, 'uint', cPoints, 'int')

	static PolyBezierTo(hdc, lppt, cCount) => DllCall('Gdi32\PolyBezierTo', 'ptr', hdc, 'ptr', lppt, 'uint', cCount, 'int')

	static PolyDraw(hdc, lppt, &lpbTypes, cCount) => DllCall('Gdi32\PolyDraw', 'ptr', hdc, 'ptr', lppt, 'uchar*', &lpbTypes, 'int', cCount, 'int')

	static PolyPolygon(hdc, lpPoints, &lpPolyCounts, nCount) => DllCall('Gdi32\PolyPolygon', 'ptr', hdc, 'ptr', lpPoints, 'int*', &lpPolyCounts, 'int', nCount, 'int')

	static PolyPolyline(hdc, lppt, &lpdwPolyPoints, cCount) => DllCall('Gdi32\PolyPolyline', 'ptr', hdc, 'ptr', lppt, 'uint*', &lpdwPolyPoints, 'uint', cCount, 'int')

	static PolyTextOut(hdc, pptxt, cStrings) => DllCall('Gdi32\PolyTextOut', 'ptr', hdc, 'ptr', pptxt, 'int', cStrings, 'int')

	static Polygon(hdc, lpPoints, nCount) => DllCall('Gdi32\Polygon', 'ptr', hdc, 'ptr', lpPoints, 'int', nCount, 'int')

	static Polyline(hdc, lppt, cPoints) => DllCall('Gdi32\Polyline', 'ptr', hdc, 'ptr', lppt, 'int', cPoints, 'int')

	static PolylineTo(hdc, lppt, cCount) => DllCall('Gdi32\PolylineTo', 'ptr', hdc, 'ptr', lppt, 'uint', cCount, 'int')

	static PtInRegion(hrgn, X, Y) => DllCall('Gdi32\PtInRegion', 'ptr', hrgn, 'int', X, 'int', Y, 'int')

	static PtVisible(hdc, X, Y) => DllCall('Gdi32\PtVisible', 'ptr', hdc, 'int', X, 'int', Y, 'int')

	static RealizePalette(hdc) => DllCall('Gdi32\RealizePalette', 'ptr', hdc, 'uint')

	static RectInRegion(hrgn, lprc) => DllCall('Gdi32\RectInRegion', 'ptr', hrgn, 'ptr', lprc, 'int')

	static RectVisible(hDC, lprc) => DllCall('Gdi32\RectVisible', 'ptr', hDC, 'ptr', lprc, 'int')

	static Rectangle(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect) => DllCall('Gdi32\Rectangle', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int')

	static RemoveFontMemResourceEx(fh) => DllCall('Gdi32\RemoveFontMemResourceEx', 'ptr', fh, 'int')

	static RemoveFontResource(lpFileName) => DllCall('Gdi32\RemoveFontResource', 'str', lpFileName, 'int')

	static RemoveFontResourceEx(lpFileName, fl, pdv) => DllCall('Gdi32\RemoveFontResourceEx', 'str', lpFileName, 'uint', fl, 'ptr', pdv, 'int')

	static ResetDC(hdc, lpInitData) => DllCall('Gdi32\ResetDC', 'ptr', hdc, 'ptr', lpInitData, 'ptr')

	static ResizePalette(hpal, nEntries) => DllCall('Gdi32\ResizePalette', 'ptr', hpal, 'uint', nEntries, 'int')

	static RestoreDC(hdc, nSavedDC) => DllCall('Gdi32\RestoreDC', 'ptr', hdc, 'int', nSavedDC, 'int')

	static RoundRect(hdc, nLeftRect, nTopRect, nRightRect, nBottomRect, nWidth, nHeight) => DllCall('Gdi32\RoundRect', 'ptr', hdc, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int', nWidth, 'int', nHeight, 'int')

	static SaveDC(hdc) => DllCall('Gdi32\SaveDC', 'ptr', hdc, 'int')

	static ScaleViewportExtEx(hdc, Xnum, Xdenom, Ynum, Ydenom, lpSize) => DllCall('Gdi32\ScaleViewportExtEx', 'ptr', hdc, 'int', Xnum, 'int', Xdenom, 'int', Ynum, 'int', Ydenom, 'ptr', lpSize, 'int')

	static ScaleWindowExtEx(hdc, Xnum, Xdenom, Ynum, Ydenom, lpSize) => DllCall('Gdi32\ScaleWindowExtEx', 'ptr', hdc, 'int', Xnum, 'int', Xdenom, 'int', Ynum, 'int', Ydenom, 'ptr', lpSize, 'int')

	static SelectClipPath(hdc, iMode) => DllCall('Gdi32\SelectClipPath', 'ptr', hdc, 'int', iMode, 'int')

	static SelectClipRgn(hdc, hrgn) => DllCall('Gdi32\SelectClipRgn', 'ptr', hdc, 'ptr', hrgn, 'int')

	static SelectObject(hdc, hgdiobj) => DllCall('Gdi32\SelectObject', 'ptr', hdc, 'ptr', hgdiobj, 'ptr')

	static SelectPalette(hdc, hpal, bForceBackground) => DllCall('Gdi32\SelectPalette', 'ptr', hdc, 'ptr', hpal, 'int', bForceBackground, 'ptr')

	static SetAbortProc(hdc, lpAbortProc) => DllCall('Gdi32\SetAbortProc', 'ptr', hdc, 'ptr', lpAbortProc, 'int')

	static SetArcDirection(hdc, ArcDirection) => DllCall('Gdi32\SetArcDirection', 'ptr', hdc, 'int', ArcDirection, 'int')

	static SetBitmapBits(hbmp, cBytes, lpBits) => DllCall('Gdi32\SetBitmapBits', 'ptr', hbmp, 'uint', cBytes, 'ptr', lpBits, 'int')

	static SetBitmapDimensionEx(hBitmap, nWidth, nHeight, lpSize) => DllCall('Gdi32\SetBitmapDimensionEx', 'ptr', hBitmap, 'int', nWidth, 'int', nHeight, 'ptr', lpSize, 'int')

	static SetBkColor(hdc, crColor) => DllCall('Gdi32\SetBkColor', 'ptr', hdc, 'uint', crColor, 'uint')

	static SetBkMode(hdc, iBkMode) => DllCall('Gdi32\SetBkMode', 'ptr', hdc, 'int', iBkMode, 'int')

	static SetBoundsRect(hdc, lprcBounds, flags) => DllCall('Gdi32\SetBoundsRect', 'ptr', hdc, 'ptr', lprcBounds, 'uint', flags, 'uint')

	static SetBrushOrgEx(hdc, nXOrg, nYOrg, lppt) => DllCall('Gdi32\SetBrushOrgEx', 'ptr', hdc, 'int', nXOrg, 'int', nYOrg, 'ptr', lppt, 'int')

	static SetColorAdjustment(hdc, lpca) => DllCall('Gdi32\SetColorAdjustment', 'ptr', hdc, 'ptr', lpca, 'int')

	static SetColorSpace(hDC, hColorSpace) => DllCall('Gdi32\SetColorSpace', 'ptr', hDC, 'ptr', hColorSpace, 'ptr')

	static SetDCBrushColor(hdc, crColor) => DllCall('Gdi32\SetDCBrushColor', 'ptr', hdc, 'uint', crColor, 'uint')

	static SetDCPenColor(hdc, crColor) => DllCall('Gdi32\SetDCPenColor', 'ptr', hdc, 'uint', crColor, 'uint')

	static SetDIBColorTable(hdc, uStartIndex, cEntries, pColors) => DllCall('Gdi32\SetDIBColorTable', 'ptr', hdc, 'uint', uStartIndex, 'uint', cEntries, 'ptr', pColors, 'uint')

	static SetDIBits(hdc, hbmp, uStartScan, cScanLines, lpvBits, lpbmi, fuColorUse) => DllCall('Gdi32\SetDIBits', 'ptr', hdc, 'ptr', hbmp, 'uint', uStartScan, 'uint', cScanLines, 'ptr', lpvBits, 'ptr', lpbmi, 'uint', fuColorUse, 'int')

	static SetDIBitsToDevice(hdc, XDest, YDest, dwWidth, dwHeight, XSrc, YSrc, uStartScan, cScanLines, lpvBits, lpbmi, fuColorUse) => DllCall('Gdi32\SetDIBitsToDevice', 'ptr', hdc, 'int', XDest, 'int', YDest, 'uint', dwWidth, 'uint', dwHeight, 'int', XSrc, 'int', YSrc, 'uint', uStartScan, 'uint', cScanLines, 'ptr', lpvBits, 'ptr', lpbmi, 'uint', fuColorUse, 'int')

	static SetDeviceGammaRamp(hDC, lpRamp) => DllCall('Gdi32\SetDeviceGammaRamp', 'ptr', hDC, 'ptr', lpRamp, 'int')

	static SetEnhMetaFileBits(cbBuffer, &lpData) => DllCall('Gdi32\SetEnhMetaFileBits', 'uint', cbBuffer, 'uchar*', &lpData, 'ptr')

	static SetGraphicsMode(hdc, iMode) => DllCall('Gdi32\SetGraphicsMode', 'ptr', hdc, 'int', iMode, 'int')

	static SetICMMode(hDC, iEnableICM) => DllCall('Gdi32\SetICMMode', 'ptr', hDC, 'int', iEnableICM, 'int')

	static SetICMProfile(hDC, lpFileName) => DllCall('Gdi32\SetICMProfile', 'ptr', hDC, 'str', lpFileName, 'int')

	static SetLayout(hdc, dwLayout) => DllCall('Gdi32\SetLayout', 'ptr', hdc, 'uint', dwLayout, 'uint')

	static SetMapMode(hdc, fnMapMode) => DllCall('Gdi32\SetMapMode', 'ptr', hdc, 'int', fnMapMode, 'int')

	static SetMapperFlags(hdc, dwFlag) => DllCall('Gdi32\SetMapperFlags', 'ptr', hdc, 'uint', dwFlag, 'uint')

	static SetMetaFileBitsEx(nSize, &lpData) => DllCall('Gdi32\SetMetaFileBitsEx', 'uint', nSize, 'uchar*', &lpData, 'ptr')

	static SetMetaRgn(hdc) => DllCall('Gdi32\SetMetaRgn', 'ptr', hdc, 'int')

	static SetMiterLimit(hdc, eNewLimit, peOldLimit) => DllCall('Gdi32\SetMiterLimit', 'ptr', hdc, 'float', eNewLimit, 'ptr', peOldLimit, 'int')

	static SetPaletteEntries(hpal, iStart, cEntries, lppe) => DllCall('Gdi32\SetPaletteEntries', 'ptr', hpal, 'uint', iStart, 'uint', cEntries, 'ptr', lppe, 'uint')

	static SetPixel(hdc, X, Y, crColor) => DllCall('Gdi32\SetPixel', 'ptr', hdc, 'int', X, 'int', Y, 'uint', crColor, 'uint')

	static SetPixelFormat(hdc, iPixelFormat, ppfd) => DllCall('Gdi32\SetPixelFormat', 'ptr', hdc, 'int', iPixelFormat, 'ptr', ppfd, 'int')

	static SetPixelV(hdc, X, Y, crColor) => DllCall('Gdi32\SetPixelV', 'ptr', hdc, 'int', X, 'int', Y, 'uint', crColor, 'int')

	static SetPolyFillMode(hdc, iPolyFillMode) => DllCall('Gdi32\SetPolyFillMode', 'ptr', hdc, 'int', iPolyFillMode, 'int')

	static SetROP2(hdc, fnDrawMode) => DllCall('Gdi32\SetROP2', 'ptr', hdc, 'int', fnDrawMode, 'int')

	static SetRectRgn(hrgn, nLeftRect, nTopRect, nRightRect, nBottomRect) => DllCall('Gdi32\SetRectRgn', 'ptr', hrgn, 'int', nLeftRect, 'int', nTopRect, 'int', nRightRect, 'int', nBottomRect, 'int')

	static SetStretchBltMode(hdc, iStretchMode) => DllCall('Gdi32\SetStretchBltMode', 'ptr', hdc, 'int', iStretchMode, 'int')

	static SetSystemPaletteUse(hdc, uUsage) => DllCall('Gdi32\SetSystemPaletteUse', 'ptr', hdc, 'uint', uUsage, 'uint')

	static SetTextAlign(hdc, fMode) => DllCall('Gdi32\SetTextAlign', 'ptr', hdc, 'uint', fMode, 'uint')

	static SetTextCharacterExtra(hdc, nCharExtra) => DllCall('Gdi32\SetTextCharacterExtra', 'ptr', hdc, 'int', nCharExtra, 'int')

	static SetTextColor(hdc, crColor) => DllCall('Gdi32\SetTextColor', 'ptr', hdc, 'uint', crColor, 'uint')

	static SetTextJustification(hdc, nBreakExtra, nBreakCount) => DllCall('Gdi32\SetTextJustification', 'ptr', hdc, 'int', nBreakExtra, 'int', nBreakCount, 'int')

	static SetViewportExtEx(hdc, nXExtent, nYExtent, lpSize) => DllCall('Gdi32\SetViewportExtEx', 'ptr', hdc, 'int', nXExtent, 'int', nYExtent, 'ptr', lpSize, 'int')

	static SetViewportOrgEx(hdc, X, Y, lpPoint) => DllCall('Gdi32\SetViewportOrgEx', 'ptr', hdc, 'int', X, 'int', Y, 'ptr', lpPoint, 'int')

	static SetWinMetaFileBits(cbBuffer, &lpbBuffer, hdcRef, lpmfp) => DllCall('Gdi32\SetWinMetaFileBits', 'uint', cbBuffer, 'uchar*', &lpbBuffer, 'ptr', hdcRef, 'ptr', lpmfp, 'ptr')

	static SetWindowExtEx(hdc, nXExtent, nYExtent, lpSize) => DllCall('Gdi32\SetWindowExtEx', 'ptr', hdc, 'int', nXExtent, 'int', nYExtent, 'ptr', lpSize, 'int')

	static SetWindowOrgEx(hdc, X, Y, lpPoint) => DllCall('Gdi32\SetWindowOrgEx', 'ptr', hdc, 'int', X, 'int', Y, 'ptr', lpPoint, 'int')

	static SetWorldTransform(hdc, lpXform) => DllCall('Gdi32\SetWorldTransform', 'ptr', hdc, 'ptr', lpXform, 'int')

	static StartDoc(hdc, lpdi) => DllCall('Gdi32\StartDoc', 'ptr', hdc, 'ptr', lpdi, 'int')

	static StartPage(hdc) => DllCall('Gdi32\StartPage', 'ptr', hdc, 'int')

	static StretchBlt(hdcDest, nXOriginDest, nYOriginDest, nWidthDest, nHeightDest, hdcSrc, nXOriginSrc, nYOriginSrc, nWidthSrc, nHeightSrc, dwRop) => DllCall('Gdi32\StretchBlt', 'ptr', hdcDest, 'int', nXOriginDest, 'int', nYOriginDest, 'int', nWidthDest, 'int', nHeightDest, 'ptr', hdcSrc, 'int', nXOriginSrc, 'int', nYOriginSrc, 'int', nWidthSrc, 'int', nHeightSrc, 'uint', dwRop, 'int')

	static StretchDIBits(hdc, XDest, YDest, nDestWidth, nDestHeight, XSrc, YSrc, nSrcWidth, nSrcHeight, lpBits, lpBitsInfo, iUsage, dwRop) => DllCall('Gdi32\StretchDIBits', 'ptr', hdc, 'int', XDest, 'int', YDest, 'int', nDestWidth, 'int', nDestHeight, 'int', XSrc, 'int', YSrc, 'int', nSrcWidth, 'int', nSrcHeight, 'ptr', lpBits, 'ptr', lpBitsInfo, 'uint', iUsage, 'uint', dwRop, 'int')

	static StrokeAndFillPath(hdc) => DllCall('Gdi32\StrokeAndFillPath', 'ptr', hdc, 'int')

	static StrokePath(hdc) => DllCall('Gdi32\StrokePath', 'ptr', hdc, 'int')

	static SwapBuffers(hDC) => DllCall('Gdi32\SwapBuffers', 'ptr', hDC, 'int')

	static TextOut(hdc, nXStart, nYStart, lpString, cchString) => DllCall('Gdi32\TextOut', 'ptr', hdc, 'int', nXStart, 'int', nYStart, 'str', lpString, 'int', cchString, 'int')

	static TranslateCharsetInfo(lpSrc, lpCs, dwFlags) => DllCall('Gdi32\TranslateCharsetInfo', 'ptr', lpSrc, 'ptr', lpCs, 'uint', dwFlags, 'int')

	static UnrealizeObject(hgdiobj) => DllCall('Gdi32\UnrealizeObject', 'ptr', hgdiobj, 'int')

	static UpdateColors(hdc) => DllCall('Gdi32\UpdateColors', 'ptr', hdc, 'int')

	static UpdateICMRegKey(dwReserved, lpszCMID, lpszFileName, nCommand) => DllCall('Gdi32\UpdateICMRegKey', 'uint', dwReserved, 'str', lpszCMID, 'str', lpszFileName, 'uint', nCommand, 'int')

	static WidenPath(hdc) => DllCall('Gdi32\WidenPath', 'ptr', hdc, 'int')
	
	;#endregion

	;#region __Gdiplus

	static GdipAddPathArc(path, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipAddPathArc', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipAddPathArcI(path, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipAddPathArcI', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipAddPathBezier(path, x1, y1, x2, y2, x3, y3, x4, y4) => DllCall('Gdiplus\GdipAddPathBezier', 'ptr', path, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'int', x3, 'int', y3, 'int', x4, 'int', y4, 'uint')

	static GdipAddPathBezierI(path, x1, y1, x2, y2, x3, y3, x4, y4) => DllCall('Gdiplus\GdipAddPathBezierI', 'ptr', path, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'int', x3, 'int', y3, 'int', x4, 'int', y4, 'uint')

	static GdipAddPathBeziers(path, points, count) => DllCall('Gdiplus\GdipAddPathBeziers', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathBeziersI(path, points, count) => DllCall('Gdiplus\GdipAddPathBeziersI', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathClosedCurve(path, points, count) => DllCall('Gdiplus\GdipAddPathClosedCurve', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathClosedCurve2(path, points, count, tension) => DllCall('Gdiplus\GdipAddPathClosedCurve2', 'ptr', path, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipAddPathClosedCurve2I(path, points, count, tension) => DllCall('Gdiplus\GdipAddPathClosedCurve2I', 'ptr', path, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipAddPathClosedCurveI(path, points, count) => DllCall('Gdiplus\GdipAddPathClosedCurveI', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathCurve(path, points, count) => DllCall('Gdiplus\GdipAddPathCurve', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathCurve2(path, points, count, tension) => DllCall('Gdiplus\GdipAddPathCurve2', 'ptr', path, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipAddPathCurve2I(path, points, count, tension) => DllCall('Gdiplus\GdipAddPathCurve2I', 'ptr', path, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipAddPathCurve3(path, points, count, offset, numberOfSegments, tension) => DllCall('Gdiplus\GdipAddPathCurve3', 'ptr', path, 'ptr', points, 'int', count, 'int', offset, 'int', numberOfSegments, 'int', tension, 'uint')

	static GdipAddPathCurve3I(path, points, count, offset, numberOfSegments, tension) => DllCall('Gdiplus\GdipAddPathCurve3I', 'ptr', path, 'ptr', points, 'int', count, 'int', offset, 'int', numberOfSegments, 'int', tension, 'uint')

	static GdipAddPathCurveI(path, points, count) => DllCall('Gdiplus\GdipAddPathCurveI', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathEllipse(path, x, y, width, height) => DllCall('Gdiplus\GdipAddPathEllipse', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipAddPathEllipseI(path, x, y, width, height) => DllCall('Gdiplus\GdipAddPathEllipseI', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipAddPathLine(path, x1, y1, x2, y2) => DllCall('Gdiplus\GdipAddPathLine', 'ptr', path, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'uint')

	static GdipAddPathLine2(path, points, count) => DllCall('Gdiplus\GdipAddPathLine2', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathLine2I(path, points, count) => DllCall('Gdiplus\GdipAddPathLine2I', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathLineI(path, x1, y1, x2, y2) => DllCall('Gdiplus\GdipAddPathLineI', 'ptr', path, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'uint')

	static GdipAddPathPath(path, addingPath, connect) => DllCall('Gdiplus\GdipAddPathPath', 'ptr', path, 'ptr', addingPath, 'int', connect, 'uint')

	static GdipAddPathPie(path, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipAddPathPie', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipAddPathPieI(path, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipAddPathPieI', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipAddPathPolygon(path, points, count) => DllCall('Gdiplus\GdipAddPathPolygon', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathPolygonI(path, points, count) => DllCall('Gdiplus\GdipAddPathPolygonI', 'ptr', path, 'ptr', points, 'int', count, 'uint')

	static GdipAddPathRectangle(path, x, y, width, height) => DllCall('Gdiplus\GdipAddPathRectangle', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipAddPathRectangleI(path, x, y, width, height) => DllCall('Gdiplus\GdipAddPathRectangleI', 'ptr', path, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipAddPathRectangles(path, rects, count) => DllCall('Gdiplus\GdipAddPathRectangles', 'ptr', path, 'ptr', rects, 'int', count, 'uint')

	static GdipAddPathRectanglesI(path, rects, count) => DllCall('Gdiplus\GdipAddPathRectanglesI', 'ptr', path, 'ptr', rects, 'int', count, 'uint')

	static GdipAddPathString(path, string, length, family, style, emSize, layoutRect, format) => DllCall('Gdiplus\GdipAddPathString', 'ptr', path, 'ptr', string, 'int', length, 'ptr', family, 'int', style, 'int', emSize, 'ptr', layoutRect, 'ptr', format, 'uint')

	static GdipAddPathStringI(path, string, length, family, style, emSize, layoutRect, format) => DllCall('Gdiplus\GdipAddPathStringI', 'ptr', path, 'ptr', string, 'int', length, 'ptr', family, 'int', style, 'int', emSize, 'ptr', layoutRect, 'ptr', format, 'uint')

	static GdipAlloc(size) => DllCall('Gdiplus\GdipAlloc', 'uptr', size, 'ptr')

	static GdipBeginContainer(graphics, dstrect, srcrect, unit, state) => DllCall('Gdiplus\GdipBeginContainer', 'ptr', graphics, 'ptr', dstrect, 'ptr', srcrect, 'uint', unit, 'ptr', state, 'uint')

	static GdipBeginContainer2(graphics, state) => DllCall('Gdiplus\GdipBeginContainer2', 'ptr', graphics, 'ptr', state, 'uint')

	static GdipBeginContainerI(graphics, dstrect, srcrect, unit, state) => DllCall('Gdiplus\GdipBeginContainerI', 'ptr', graphics, 'ptr', dstrect, 'ptr', srcrect, 'uint', unit, 'ptr', state, 'uint')

	static GdipBitmapGetPixel(bitmap, x, y, color) => DllCall('Gdiplus\GdipBitmapGetPixel', 'ptr', bitmap, 'int', x, 'int', y, 'ptr', color, 'uint')

	static GdipBitmapLockBits(bitmap, rect, flags, format, lockedBitmapData) => DllCall('Gdiplus\GdipBitmapLockBits', 'ptr', bitmap, 'ptr', rect, 'uint', flags, 'int', format, 'ptr', lockedBitmapData, 'uint')

	static GdipBitmapSetPixel(bitmap, x, y, color) => DllCall('Gdiplus\GdipBitmapSetPixel', 'ptr', bitmap, 'int', x, 'int', y, 'uint', color, 'uint')

	static GdipBitmapSetResolution(bitmap, xdpi, ydpi) => DllCall('Gdiplus\GdipBitmapSetResolution', 'ptr', bitmap, 'int', xdpi, 'int', ydpi, 'uint')

	static GdipBitmapUnlockBits(bitmap, lockedBitmapData) => DllCall('Gdiplus\GdipBitmapUnlockBits', 'ptr', bitmap, 'ptr', lockedBitmapData, 'uint')

	static GdipClearPathMarkers(path) => DllCall('Gdiplus\GdipClearPathMarkers', 'ptr', path, 'uint')

	static GdipCloneBitmapArea(x, y, width, height, format, srcBitmap, dstBitmap) => DllCall('Gdiplus\GdipCloneBitmapArea', 'int', x, 'int', y, 'int', width, 'int', height, 'int', format, 'ptr', srcBitmap, 'ptr', dstBitmap, 'uint')

	static GdipCloneBitmapAreaI(x, y, width, height, format, srcBitmap, dstBitmap) => DllCall('Gdiplus\GdipCloneBitmapAreaI', 'int', x, 'int', y, 'int', width, 'int', height, 'int', format, 'ptr', srcBitmap, 'ptr', dstBitmap, 'uint')

	static GdipCloneBrush(brush, cloneBrush) => DllCall('Gdiplus\GdipCloneBrush', 'ptr', brush, 'ptr', cloneBrush, 'uint')

	static GdipCloneCustomLineCap(customCap, clonedCap) => DllCall('Gdiplus\GdipCloneCustomLineCap', 'ptr', customCap, 'ptr', clonedCap, 'uint')

	static GdipCloneFont(font, cloneFont) => DllCall('Gdiplus\GdipCloneFont', 'ptr', font, 'ptr', cloneFont, 'uint')

	static GdipCloneFontFamily(FontFamily, clonedFontFamily) => DllCall('Gdiplus\GdipCloneFontFamily', 'ptr', FontFamily, 'ptr', clonedFontFamily, 'uint')

	static GdipCloneImage(image, cloneImage) => DllCall('Gdiplus\GdipCloneImage', 'ptr', image, 'ptr', cloneImage, 'uint')

	static GdipCloneImageAttributes(imageattr, cloneImageattr) => DllCall('Gdiplus\GdipCloneImageAttributes', 'ptr', imageattr, 'ptr', cloneImageattr, 'uint')

	static GdipCloneMatrix(matrix, cloneMatrix) => DllCall('Gdiplus\GdipCloneMatrix', 'ptr', matrix, 'ptr', cloneMatrix, 'uint')

	static GdipClonePath(path, clonePath) => DllCall('Gdiplus\GdipClonePath', 'ptr', path, 'ptr', clonePath, 'uint')

	static GdipClonePen(pen, clonepen) => DllCall('Gdiplus\GdipClonePen', 'ptr', pen, 'ptr', clonepen, 'uint')

	static GdipCloneRegion(region, cloneRegion) => DllCall('Gdiplus\GdipCloneRegion', 'ptr', region, 'ptr', cloneRegion, 'uint')

	static GdipCloneStringFormat(format, newFormat) => DllCall('Gdiplus\GdipCloneStringFormat', 'ptr', format, 'ptr', newFormat, 'uint')

	static GdipClosePathFigure(path) => DllCall('Gdiplus\GdipClosePathFigure', 'ptr', path, 'uint')

	static GdipClosePathFigures(path) => DllCall('Gdiplus\GdipClosePathFigures', 'ptr', path, 'uint')

	static GdipCombineRegionPath(region, path, combineMode) => DllCall('Gdiplus\GdipCombineRegionPath', 'ptr', region, 'ptr', path, 'ptr', combineMode, 'uint')

	static GdipCombineRegionRect(region, rect, combineMode) => DllCall('Gdiplus\GdipCombineRegionRect', 'ptr', region, 'ptr', rect, 'ptr', combineMode, 'uint')

	static GdipCombineRegionRectI(region, rect, combineMode) => DllCall('Gdiplus\GdipCombineRegionRectI', 'ptr', region, 'ptr', rect, 'ptr', combineMode, 'uint')

	static GdipCombineRegionRegion(region, region2, combineMode) => DllCall('Gdiplus\GdipCombineRegionRegion', 'ptr', region, 'ptr', region2, 'ptr', combineMode, 'uint')

	static GdipComment(graphics, sizeData, data) => DllCall('Gdiplus\GdipComment', 'ptr', graphics, 'uint', sizeData, 'ptr', data, 'uint')

	static GdipCreateAdjustableArrowCap(height, width, isFilled, cap) => DllCall('Gdiplus\GdipCreateAdjustableArrowCap', 'int', height, 'int', width, 'int', isFilled, 'ptr', cap, 'uint')

	static GdipCreateBitmapFromDirectDrawSurface(surface, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromDirectDrawSurface', 'ptr', surface, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromFile(filename, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromFile', 'ptr', filename, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromFileICM(filename, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromFileICM', 'ptr', filename, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromGdiDib(gdiBitmapInfo, gdiBitmapData, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromGdiDib', 'ptr', gdiBitmapInfo, 'ptr', gdiBitmapData, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromGraphics(width, height, target, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromGraphics', 'int', width, 'int', height, 'ptr', target, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromHBITMAP(hbm, hpal, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromHBITMAP', 'ptr', hbm, 'ptr', hpal, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromHICON(hicon, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromHICON', 'ptr', hicon, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromResource(hInstance, lpBitmapName, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromResource', 'ptr', hInstance, 'ptr', lpBitmapName, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromScan0(width, height, stride, format, &scan0, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromScan0', 'int', width, 'int', height, 'int', stride, 'int', format, 'uchar*', &scan0, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromStream(stream, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromStream', 'ptr', stream, 'ptr', bitmap, 'uint')

	static GdipCreateBitmapFromStreamICM(stream, bitmap) => DllCall('Gdiplus\GdipCreateBitmapFromStreamICM', 'ptr', stream, 'ptr', bitmap, 'uint')

	static GdipCreateCachedBitmap(bitmap, graphics, cachedBitmap) => DllCall('Gdiplus\GdipCreateCachedBitmap', 'ptr', bitmap, 'ptr', graphics, 'ptr', cachedBitmap, 'uint')

	static GdipCreateCustomLineCap(fillPath, strokePath, baseCap, baseInset, customCap) => DllCall('Gdiplus\GdipCreateCustomLineCap', 'ptr', fillPath, 'ptr', strokePath, 'uint', baseCap, 'int', baseInset, 'ptr', customCap, 'uint')

	static GdipCreateFont(fontFamily, emSize, style, unit, font) => DllCall('Gdiplus\GdipCreateFont', 'ptr', fontFamily, 'int', emSize, 'int', style, 'uint', unit, 'ptr', font, 'uint')

	static GdipCreateFontFamilyFromName(name, fontCollection, FontFamily) => DllCall('Gdiplus\GdipCreateFontFamilyFromName', 'ptr', name, 'ptr', fontCollection, 'ptr', FontFamily, 'uint')

	static GdipCreateFontFromDC(hdc, font) => DllCall('Gdiplus\GdipCreateFontFromDC', 'ptr', hdc, 'ptr', font, 'uint')

	static GdipCreateFontFromLogfont(hdc, logfont, font) => DllCall('Gdiplus\GdipCreateFontFromLogfont', 'ptr', hdc, 'ptr', logfont, 'ptr', font, 'uint')

	static GdipCreateFromHDC(hdc, graphics) => DllCall('Gdiplus\GdipCreateFromHDC', 'ptr', hdc, 'ptr', graphics, 'uint')

	static GdipCreateFromHDC2(hdc, hDevice, graphics) => DllCall('Gdiplus\GdipCreateFromHDC2', 'ptr', hdc, 'ptr', hDevice, 'ptr', graphics, 'uint')

	static GdipCreateFromHWND(hwnd, graphics) => DllCall('Gdiplus\GdipCreateFromHWND', 'ptr', hwnd, 'ptr', graphics, 'uint')

	static GdipCreateFromHWNDICM(hwnd, graphics) => DllCall('Gdiplus\GdipCreateFromHWNDICM', 'ptr', hwnd, 'ptr', graphics, 'uint')

	static GdipCreateHBITMAPFromBitmap(bitmap, hbmReturn, background) => DllCall('Gdiplus\GdipCreateHBITMAPFromBitmap', 'ptr', bitmap, 'ptr', hbmReturn, 'uint', background, 'uint')

	static GdipCreateHICONFromBitmap(bitmap, hbmReturn) => DllCall('Gdiplus\GdipCreateHICONFromBitmap', 'ptr', bitmap, 'ptr', hbmReturn, 'uint')

	static GdipCreateHalftonePalette() => DllCall('Gdiplus\GdipCreateHalftonePalette', 'ptr')

	static GdipCreateHatchBrush(hatchstyle, forecol, backcol, brush) => DllCall('Gdiplus\GdipCreateHatchBrush', 'uint', hatchstyle, 'uint', forecol, 'uint', backcol, 'ptr', brush, 'uint')

	static GdipCreateImageAttributes(imageattr) => DllCall('Gdiplus\GdipCreateImageAttributes', 'ptr', imageattr, 'uint')

	static GdipCreateLineBrush(point1, point2, color1, color2, wrapMode, lineGradient) => DllCall('Gdiplus\GdipCreateLineBrush', 'ptr', point1, 'ptr', point2, 'uint', color1, 'uint', color2, 'uint', wrapMode, 'ptr', lineGradient, 'uint')

	static GdipCreateLineBrushFromRect(rect, color1, color2, mode, wrapMode, lineGradient) => DllCall('Gdiplus\GdipCreateLineBrushFromRect', 'ptr', rect, 'uint', color1, 'uint', color2, 'int', mode, 'uint', wrapMode, 'ptr', lineGradient, 'uint')

	static GdipCreateLineBrushFromRectI(rect, color1, color2, mode, wrapMode, lineGradient) => DllCall('Gdiplus\GdipCreateLineBrushFromRectI', 'ptr', rect, 'uint', color1, 'uint', color2, 'int', mode, 'uint', wrapMode, 'ptr', lineGradient, 'uint')

	static GdipCreateLineBrushFromRectWithAngle(rect, color1, color2, angle, isAngleScalable, wrapMode, lineGradient) => DllCall('Gdiplus\GdipCreateLineBrushFromRectWithAngle', 'ptr', rect, 'uint', color1, 'uint', color2, 'int', angle, 'int', isAngleScalable, 'uint', wrapMode, 'ptr', lineGradient, 'uint')

	static GdipCreateLineBrushFromRectWithAngleI(rect, color1, color2, angle, isAngleScalable, wrapMode, lineGradient) => DllCall('Gdiplus\GdipCreateLineBrushFromRectWithAngleI', 'ptr', rect, 'uint', color1, 'uint', color2, 'int', angle, 'int', isAngleScalable, 'uint', wrapMode, 'ptr', lineGradient, 'uint')

	static GdipCreateLineBrushI(point1, point2, color1, color2, wrapMode, lineGradient) => DllCall('Gdiplus\GdipCreateLineBrushI', 'ptr', point1, 'ptr', point2, 'uint', color1, 'uint', color2, 'uint', wrapMode, 'ptr', lineGradient, 'uint')

	static GdipCreateMatrix(matrix) => DllCall('Gdiplus\GdipCreateMatrix', 'ptr', matrix, 'uint')

	static GdipCreateMatrix2(m11, m12, m21, m22, dx, dy, matrix) => DllCall('Gdiplus\GdipCreateMatrix2', 'int', m11, 'int', m12, 'int', m21, 'int', m22, 'int', dx, 'int', dy, 'ptr', matrix, 'uint')

	static GdipCreateMatrix3(rect, dstplg, matrix) => DllCall('Gdiplus\GdipCreateMatrix3', 'ptr', rect, 'ptr', dstplg, 'ptr', matrix, 'uint')

	static GdipCreateMatrix3I(rect, dstplg, matrix) => DllCall('Gdiplus\GdipCreateMatrix3I', 'ptr', rect, 'ptr', dstplg, 'ptr', matrix, 'uint')

	static GdipCreateMetafileFromEmf(hEmf, deleteEmf, metafile) => DllCall('Gdiplus\GdipCreateMetafileFromEmf', 'ptr', hEmf, 'int', deleteEmf, 'ptr', metafile, 'uint')

	static GdipCreateMetafileFromFile(file, metafile) => DllCall('Gdiplus\GdipCreateMetafileFromFile', 'ptr', file, 'ptr', metafile, 'uint')

	static GdipCreateMetafileFromStream(stream, metafile) => DllCall('Gdiplus\GdipCreateMetafileFromStream', 'ptr', stream, 'ptr', metafile, 'uint')

	static GdipCreateMetafileFromWmf(hWmf, deleteWmf, wmfPlaceableFileHeader, metafile) => DllCall('Gdiplus\GdipCreateMetafileFromWmf', 'ptr', hWmf, 'int', deleteWmf, 'ptr', wmfPlaceableFileHeader, 'ptr', metafile, 'uint')

	static GdipCreateMetafileFromWmfFile(file, wmfPlaceableFileHeader, metafile) => DllCall('Gdiplus\GdipCreateMetafileFromWmfFile', 'ptr', file, 'ptr', wmfPlaceableFileHeader, 'ptr', metafile, 'uint')

	static GdipCreatePath(brushMode, path) => DllCall('Gdiplus\GdipCreatePath', 'uint', brushMode, 'ptr', path, 'uint')

	static GdipCreatePath2(points, types, count, fillMode, path) => DllCall('Gdiplus\GdipCreatePath2', 'ptr', points, 'ptr', types, 'int', count, 'uint', fillMode, 'ptr', path, 'uint')

	static GdipCreatePath2I(points, types, count, fillMode, path) => DllCall('Gdiplus\GdipCreatePath2I', 'ptr', points, 'ptr', types, 'int', count, 'uint', fillMode, 'ptr', path, 'uint')

	static GdipCreatePathGradient(points, count, wrapMode, polyGradient) => DllCall('Gdiplus\GdipCreatePathGradient', 'ptr', points, 'int', count, 'uint', wrapMode, 'ptr', polyGradient, 'uint')

	static GdipCreatePathGradientFromPath(path, polyGradient) => DllCall('Gdiplus\GdipCreatePathGradientFromPath', 'ptr', path, 'ptr', polyGradient, 'uint')

	static GdipCreatePathGradientI(points, count, wrapMode, polyGradient) => DllCall('Gdiplus\GdipCreatePathGradientI', 'ptr', points, 'int', count, 'uint', wrapMode, 'ptr', polyGradient, 'uint')

	static GdipCreatePathIter(iterator, path) => DllCall('Gdiplus\GdipCreatePathIter', 'ptr', iterator, 'ptr', path, 'uint')

	static GdipCreatePen1(color, width, unit, pen) => DllCall('Gdiplus\GdipCreatePen1', 'uint', color, 'int', width, 'uint', unit, 'ptr', pen, 'uint')

	static GdipCreatePen2(brush, width, unit, pen) => DllCall('Gdiplus\GdipCreatePen2', 'ptr', brush, 'int', width, 'uint', unit, 'ptr', pen, 'uint')

	static GdipCreateRegion(region) => DllCall('Gdiplus\GdipCreateRegion', 'ptr', region, 'uint')

	static GdipCreateRegionHrgn(hRgn, region) => DllCall('Gdiplus\GdipCreateRegionHrgn', 'ptr', hRgn, 'ptr', region, 'uint')

	static GdipCreateRegionPath(path, region) => DllCall('Gdiplus\GdipCreateRegionPath', 'ptr', path, 'ptr', region, 'uint')

	static GdipCreateRegionRect(rect, region) => DllCall('Gdiplus\GdipCreateRegionRect', 'ptr', rect, 'ptr', region, 'uint')

	static GdipCreateRegionRectI(rect, region) => DllCall('Gdiplus\GdipCreateRegionRectI', 'ptr', rect, 'ptr', region, 'uint')

	static GdipCreateRegionRgnData(regionData, size, region) => DllCall('Gdiplus\GdipCreateRegionRgnData', 'ptr', regionData, 'int', size, 'ptr', region, 'uint')

	static GdipCreateSolidFill(color, brush) => DllCall('Gdiplus\GdipCreateSolidFill', 'uint', color, 'ptr', brush, 'uint')

	static GdipCreateStreamOnFile(filename, access, stream) => DllCall('Gdiplus\GdipCreateStreamOnFile', 'ptr', filename, 'uint', access, 'ptr', stream, 'uint')

	static GdipCreateStringFormat(formatAttributes, language, format) => DllCall('Gdiplus\GdipCreateStringFormat', 'int', formatAttributes, 'ushort', language, 'ptr', format, 'uint')

	static GdipCreateTexture(image, wrapmode, texture) => DllCall('Gdiplus\GdipCreateTexture', 'ptr', image, 'uint', wrapmode, 'ptr', texture, 'uint')

	static GdipCreateTexture2(image, wrapmode, x, y, width, height, texture) => DllCall('Gdiplus\GdipCreateTexture2', 'ptr', image, 'uint', wrapmode, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', texture, 'uint')

	static GdipCreateTexture2I(image, wrapmode, x, y, width, height, texture) => DllCall('Gdiplus\GdipCreateTexture2I', 'ptr', image, 'uint', wrapmode, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', texture, 'uint')

	static GdipCreateTextureIA(image, imageAttributes, x, y, width, height, texture) => DllCall('Gdiplus\GdipCreateTextureIA', 'ptr', image, 'ptr', imageAttributes, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', texture, 'uint')

	static GdipCreateTextureIAI(image, imageAttributes, x, y, width, height, texture) => DllCall('Gdiplus\GdipCreateTextureIAI', 'ptr', image, 'ptr', imageAttributes, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', texture, 'uint')

	static GdipDeleteBrush(brush) => DllCall('Gdiplus\GdipDeleteBrush', 'ptr', brush, 'uint')

	static GdipDeleteCachedBitmap(cachedBitmap) => DllCall('Gdiplus\GdipDeleteCachedBitmap', 'ptr', cachedBitmap, 'uint')

	static GdipDeleteCustomLineCap(customCap) => DllCall('Gdiplus\GdipDeleteCustomLineCap', 'ptr', customCap, 'uint')

	static GdipDeleteFont(font) => DllCall('Gdiplus\GdipDeleteFont', 'ptr', font, 'uint')

	static GdipDeleteFontFamily(FontFamily) => DllCall('Gdiplus\GdipDeleteFontFamily', 'ptr', FontFamily, 'uint')

	static GdipDeleteGraphics(graphics) => DllCall('Gdiplus\GdipDeleteGraphics', 'ptr', graphics, 'uint')

	static GdipDeleteMatrix(matrix) => DllCall('Gdiplus\GdipDeleteMatrix', 'ptr', matrix, 'uint')

	static GdipDeletePath(path) => DllCall('Gdiplus\GdipDeletePath', 'ptr', path, 'uint')

	static GdipDeletePathIter(iterator) => DllCall('Gdiplus\GdipDeletePathIter', 'ptr', iterator, 'uint')

	static GdipDeletePen(pen) => DllCall('Gdiplus\GdipDeletePen', 'ptr', pen, 'uint')

	static GdipDeletePrivateFontCollection(fontCollection) => DllCall('Gdiplus\GdipDeletePrivateFontCollection', 'ptr', fontCollection, 'uint')

	static GdipDeleteRegion(region) => DllCall('Gdiplus\GdipDeleteRegion', 'ptr', region, 'uint')

	static GdipDeleteStringFormat(format) => DllCall('Gdiplus\GdipDeleteStringFormat', 'ptr', format, 'uint')

	static GdipDisposeImage(image) => DllCall('Gdiplus\GdipDisposeImage', 'ptr', image, 'uint')

	static GdipDisposeImageAttributes(imageattr) => DllCall('Gdiplus\GdipDisposeImageAttributes', 'ptr', imageattr, 'uint')

	static GdipDrawArc(graphics, pen, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipDrawArc', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipDrawArcI(graphics, pen, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipDrawArcI', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipDrawBezier(graphics, pen, x1, y1, x2, y2, x3, y3, x4, y4) => DllCall('Gdiplus\GdipDrawBezier', 'ptr', graphics, 'ptr', pen, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'int', x3, 'int', y3, 'int', x4, 'int', y4, 'uint')

	static GdipDrawBezierI(graphics, pen, x1, y1, x2, y2, x3, y3, x4, y4) => DllCall('Gdiplus\GdipDrawBezierI', 'ptr', graphics, 'ptr', pen, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'int', x3, 'int', y3, 'int', x4, 'int', y4, 'uint')

	static GdipDrawBeziers(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawBeziers', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawBeziersI(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawBeziersI', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawCachedBitmap(graphics, cachedBitmap, x, y) => DllCall('Gdiplus\GdipDrawCachedBitmap', 'ptr', graphics, 'ptr', cachedBitmap, 'int', x, 'int', y, 'uint')

	static GdipDrawClosedCurve(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawClosedCurve', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawClosedCurve2(graphics, pen, points, count, tension) => DllCall('Gdiplus\GdipDrawClosedCurve2', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipDrawClosedCurve2I(graphics, pen, points, count, tension) => DllCall('Gdiplus\GdipDrawClosedCurve2I', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipDrawClosedCurveI(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawClosedCurveI', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawCurve(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawCurve', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawCurve2(graphics, pen, points, count, tension) => DllCall('Gdiplus\GdipDrawCurve2', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipDrawCurve2I(graphics, pen, points, count, tension) => DllCall('Gdiplus\GdipDrawCurve2I', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'int', tension, 'uint')

	static GdipDrawCurve3(graphics, pen, points, count, offset, numberOfSegments, tension) => DllCall('Gdiplus\GdipDrawCurve3', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'int', offset, 'int', numberOfSegments, 'int', tension, 'uint')

	static GdipDrawCurve3I(graphics, pen, points, count, offset, numberOfSegments, tension) => DllCall('Gdiplus\GdipDrawCurve3I', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'int', offset, 'int', numberOfSegments, 'int', tension, 'uint')

	static GdipDrawCurveI(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawCurveI', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawDriverString(graphics, text, length, font, brush, positions, flags, matrix) => DllCall('Gdiplus\GdipDrawDriverString', 'ptr', graphics, 'ptr', text, 'int', length, 'ptr', font, 'ptr', brush, 'ptr', positions, 'int', flags, 'ptr', matrix, 'uint')

	static GdipDrawEllipse(graphics, pen, x, y, width, height) => DllCall('Gdiplus\GdipDrawEllipse', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipDrawEllipseI(graphics, pen, x, y, width, height) => DllCall('Gdiplus\GdipDrawEllipseI', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipDrawImage(graphics, image, x, y) => DllCall('Gdiplus\GdipDrawImage', 'ptr', graphics, 'ptr', image, 'int', x, 'int', y, 'uint')

	static GdipDrawImageI(graphics, image, x, y) => DllCall('Gdiplus\GdipDrawImageI', 'ptr', graphics, 'ptr', image, 'int', x, 'int', y, 'uint')

	static GdipDrawImagePointRect(graphics, image, x, y, srcx, srcy, srcwidth, srcheight, srcUnit) => DllCall('Gdiplus\GdipDrawImagePointRect', 'ptr', graphics, 'ptr', image, 'int', x, 'int', y, 'int', srcx, 'int', srcy, 'int', srcwidth, 'int', srcheight, 'uint', srcUnit, 'uint')

	static GdipDrawImagePointRectI(graphics, image, x, y, srcx, srcy, srcwidth, srcheight, srcUnit) => DllCall('Gdiplus\GdipDrawImagePointRectI', 'ptr', graphics, 'ptr', image, 'int', x, 'int', y, 'int', srcx, 'int', srcy, 'int', srcwidth, 'int', srcheight, 'uint', srcUnit, 'uint')

	static GdipDrawImagePoints(graphics, image, dstpoints, count) => DllCall('Gdiplus\GdipDrawImagePoints', 'ptr', graphics, 'ptr', image, 'ptr', dstpoints, 'int', count, 'uint')

	static GdipDrawImagePointsI(graphics, image, dstpoints, count) => DllCall('Gdiplus\GdipDrawImagePointsI', 'ptr', graphics, 'ptr', image, 'ptr', dstpoints, 'int', count, 'uint')

	static GdipDrawImagePointsRect(graphics, image, points, count, srcx, srcy, srcwidth, srcheight, srcUnit, imageAttributes, callback, callbackData) => DllCall('Gdiplus\GdipDrawImagePointsRect', 'ptr', graphics, 'ptr', image, 'ptr', points, 'int', count, 'int', srcx, 'int', srcy, 'int', srcwidth, 'int', srcheight, 'uint', srcUnit, 'ptr', imageAttributes, 'uint', callback, 'ptr', callbackData, 'uint')

	static GdipDrawImagePointsRectI(graphics, image, points, count, srcx, srcy, srcwidth, srcheight, srcUnit, imageAttributes, callback, callbackData) => DllCall('Gdiplus\GdipDrawImagePointsRectI', 'ptr', graphics, 'ptr', image, 'ptr', points, 'int', count, 'int', srcx, 'int', srcy, 'int', srcwidth, 'int', srcheight, 'uint', srcUnit, 'ptr', imageAttributes, 'uint', callback, 'ptr', callbackData, 'uint')

	static GdipDrawImageRect(graphics, image, x, y, width, height) => DllCall('Gdiplus\GdipDrawImageRect', 'ptr', graphics, 'ptr', image, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipDrawImageRectI(graphics, image, x, y, width, height) => DllCall('Gdiplus\GdipDrawImageRectI', 'ptr', graphics, 'ptr', image, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipDrawImageRectRect(graphics, image, dstx, dsty, dstwidth, dstheight, srcx, srcy, srcwidth, srcheight, srcUnit, imageAttributes, callback, callbackData) => DllCall('Gdiplus\GdipDrawImageRectRect', 'ptr', graphics, 'ptr', image, 'int', dstx, 'int', dsty, 'int', dstwidth, 'int', dstheight, 'int', srcx, 'int', srcy, 'int', srcwidth, 'int', srcheight, 'uint', srcUnit, 'ptr', imageAttributes, 'uint', callback, 'ptr', callbackData, 'uint')

	static GdipDrawImageRectRectI(graphics, image, dstx, dsty, dstwidth, dstheight, srcx, srcy, srcwidth, srcheight, srcUnit, imageAttributes, callback, callbackData) => DllCall('Gdiplus\GdipDrawImageRectRectI', 'ptr', graphics, 'ptr', image, 'int', dstx, 'int', dsty, 'int', dstwidth, 'int', dstheight, 'int', srcx, 'int', srcy, 'int', srcwidth, 'int', srcheight, 'uint', srcUnit, 'ptr', imageAttributes, 'uint', callback, 'ptr', callbackData, 'uint')

	static GdipDrawLine(graphics, pen, x1, y1, x2, y2) => DllCall('Gdiplus\GdipDrawLine', 'ptr', graphics, 'ptr', pen, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'uint')

	static GdipDrawLineI(graphics, pen, x1, y1, x2, y2) => DllCall('Gdiplus\GdipDrawLineI', 'ptr', graphics, 'ptr', pen, 'int', x1, 'int', y1, 'int', x2, 'int', y2, 'uint')

	static GdipDrawLines(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawLines', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawLinesI(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawLinesI', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawPath(graphics, pen, path) => DllCall('Gdiplus\GdipDrawPath', 'ptr', graphics, 'ptr', pen, 'ptr', path, 'uint')

	static GdipDrawPie(graphics, pen, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipDrawPie', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipDrawPieI(graphics, pen, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipDrawPieI', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipDrawPolygon(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawPolygon', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawPolygonI(graphics, pen, points, count) => DllCall('Gdiplus\GdipDrawPolygonI', 'ptr', graphics, 'ptr', pen, 'ptr', points, 'int', count, 'uint')

	static GdipDrawRectangle(graphics, pen, x, y, width, height) => DllCall('Gdiplus\GdipDrawRectangle', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipDrawRectangleI(graphics, pen, x, y, width, height) => DllCall('Gdiplus\GdipDrawRectangleI', 'ptr', graphics, 'ptr', pen, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipDrawRectangles(graphics, pen, rects, count) => DllCall('Gdiplus\GdipDrawRectangles', 'ptr', graphics, 'ptr', pen, 'ptr', rects, 'int', count, 'uint')

	static GdipDrawRectanglesI(graphics, pen, rects, count) => DllCall('Gdiplus\GdipDrawRectanglesI', 'ptr', graphics, 'ptr', pen, 'ptr', rects, 'int', count, 'uint')

	static GdipDrawString(graphics, string, length, font, layoutRect, stringFormat, brush) => DllCall('Gdiplus\GdipDrawString', 'ptr', graphics, 'ptr', string, 'int', length, 'ptr', font, 'ptr', layoutRect, 'ptr', stringFormat, 'ptr', brush, 'uint')

	static GdipEmfToWmfBits(hemf, cbData16, pData16, iMapMode, eFlags) => DllCall('Gdiplus\GdipEmfToWmfBits', 'ptr', hemf, 'uint', cbData16, 'ptr', pData16, 'int', iMapMode, 'int', eFlags, 'uint')

	static GdipEndContainer(graphics, state) => DllCall('Gdiplus\GdipEndContainer', 'ptr', graphics, 'uint', state, 'uint')

	static GdipEnumerateMetafileDestPoint(graphics, metafile, destPoint, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileDestPoint', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoint, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileDestPointI(graphics, metafile, destPoint, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileDestPointI', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoint, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileDestPoints(graphics, metafile, destPoints, count, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileDestPoints', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoints, 'int', count, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileDestPointsI(graphics, metafile, destPoints, count, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileDestPointsI', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoints, 'int', count, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileDestRect(graphics, metafile, destRect, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileDestRect', 'ptr', graphics, 'ptr', metafile, 'ptr', destRect, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileDestRectI(graphics, metafile, destRect, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileDestRectI', 'ptr', graphics, 'ptr', metafile, 'ptr', destRect, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileSrcRectDestPoint(graphics, metafile, destPoint, srcRect, srcUnit, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileSrcRectDestPoint', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoint, 'ptr', srcRect, 'uint', srcUnit, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileSrcRectDestPointI(graphics, metafile, destPoint, srcRect, srcUnit, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileSrcRectDestPointI', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoint, 'ptr', srcRect, 'uint', srcUnit, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileSrcRectDestPoints(graphics, metafile, destPoints, count, srcRect, srcUnit, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileSrcRectDestPoints', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoints, 'int', count, 'ptr', srcRect, 'uint', srcUnit, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileSrcRectDestPointsI(graphics, metafile, destPoints, count, srcRect, srcUnit, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileSrcRectDestPointsI', 'ptr', graphics, 'ptr', metafile, 'ptr', destPoints, 'int', count, 'ptr', srcRect, 'uint', srcUnit, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileSrcRectDestRect(graphics, metafile, destRect, srcRect, srcUnit, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileSrcRectDestRect', 'ptr', graphics, 'ptr', metafile, 'ptr', destRect, 'ptr', srcRect, 'uint', srcUnit, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipEnumerateMetafileSrcRectDestRectI(graphics, metafile, destRect, srcRect, srcUnit, callback, callbackData, imageAttributes) => DllCall('Gdiplus\GdipEnumerateMetafileSrcRectDestRectI', 'ptr', graphics, 'ptr', metafile, 'ptr', destRect, 'ptr', srcRect, 'uint', srcUnit, 'ptr', callback, 'ptr', callbackData, 'ptr', imageAttributes, 'uint')

	static GdipFillClosedCurve(graphics, brush, points, count) => DllCall('Gdiplus\GdipFillClosedCurve', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'uint')

	static GdipFillClosedCurve2(graphics, brush, points, count, tension, fillMode) => DllCall('Gdiplus\GdipFillClosedCurve2', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'int', tension, 'uint', fillMode, 'uint')

	static GdipFillClosedCurve2I(graphics, brush, points, count, tension, fillMode) => DllCall('Gdiplus\GdipFillClosedCurve2I', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'int', tension, 'uint', fillMode, 'uint')

	static GdipFillClosedCurveI(graphics, brush, points, count) => DllCall('Gdiplus\GdipFillClosedCurveI', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'uint')

	static GdipFillEllipse(graphics, brush, x, y, width, height) => DllCall('Gdiplus\GdipFillEllipse', 'ptr', graphics, 'ptr', brush, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipFillEllipseI(graphics, brush, x, y, width, height) => DllCall('Gdiplus\GdipFillEllipseI', 'ptr', graphics, 'ptr', brush, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipFillPath(graphics, brush, path) => DllCall('Gdiplus\GdipFillPath', 'ptr', graphics, 'ptr', brush, 'ptr', path, 'uint')

	static GdipFillPie(graphics, brush, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipFillPie', 'ptr', graphics, 'ptr', brush, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipFillPieI(graphics, brush, x, y, width, height, startAngle, sweepAngle) => DllCall('Gdiplus\GdipFillPieI', 'ptr', graphics, 'ptr', brush, 'int', x, 'int', y, 'int', width, 'int', height, 'int', startAngle, 'int', sweepAngle, 'uint')

	static GdipFillPolygon(graphics, brush, points, count, fillMode) => DllCall('Gdiplus\GdipFillPolygon', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'uint', fillMode, 'uint')

	static GdipFillPolygon2(graphics, brush, points, count) => DllCall('Gdiplus\GdipFillPolygon2', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'uint')

	static GdipFillPolygon2I(graphics, brush, points, count) => DllCall('Gdiplus\GdipFillPolygon2I', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'uint')

	static GdipFillPolygonI(graphics, brush, points, count, fillMode) => DllCall('Gdiplus\GdipFillPolygonI', 'ptr', graphics, 'ptr', brush, 'ptr', points, 'int', count, 'uint', fillMode, 'uint')

	static GdipFillRectangle(graphics, brush, x, y, width, height) => DllCall('Gdiplus\GdipFillRectangle', 'ptr', graphics, 'ptr', brush, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipFillRectangleI(graphics, brush, x, y, width, height) => DllCall('Gdiplus\GdipFillRectangleI', 'ptr', graphics, 'ptr', brush, 'int', x, 'int', y, 'int', width, 'int', height, 'uint')

	static GdipFillRectangles(graphics, brush, rects, count) => DllCall('Gdiplus\GdipFillRectangles', 'ptr', graphics, 'ptr', brush, 'ptr', rects, 'int', count, 'uint')

	static GdipFillRectanglesI(graphics, brush, rects, count) => DllCall('Gdiplus\GdipFillRectanglesI', 'ptr', graphics, 'ptr', brush, 'ptr', rects, 'int', count, 'uint')

	static GdipFillRegion(graphics, brush, region) => DllCall('Gdiplus\GdipFillRegion', 'ptr', graphics, 'ptr', brush, 'ptr', region, 'uint')

	static GdipFlattenPath(path, matrix, flatness) => DllCall('Gdiplus\GdipFlattenPath', 'ptr', path, 'ptr', matrix, 'int', flatness, 'uint')

	static GdipFlush(graphics, intention) => DllCall('Gdiplus\GdipFlush', 'ptr', graphics, 'uint', intention, 'uint')

	static GdipFree(ptr) => DllCall('Gdiplus\GdipFree', 'ptr', ptr, 'int')

	static GdipGetAdjustableArrowCapFillState(cap, &fillState) => DllCall('Gdiplus\GdipGetAdjustableArrowCapFillState', 'ptr', cap, 'int*', &fillState, 'uint')

	static GdipGetAdjustableArrowCapHeight(cap, height) => DllCall('Gdiplus\GdipGetAdjustableArrowCapHeight', 'ptr', cap, 'ptr', height, 'uint')

	static GdipGetAdjustableArrowCapMiddleInset(cap, middleInset) => DllCall('Gdiplus\GdipGetAdjustableArrowCapMiddleInset', 'ptr', cap, 'ptr', middleInset, 'uint')

	static GdipGetAdjustableArrowCapWidth(cap, width) => DllCall('Gdiplus\GdipGetAdjustableArrowCapWidth', 'ptr', cap, 'ptr', width, 'uint')

	static GdipGetAllPropertyItems(image, totalBufferSize, numProperties, allItems) => DllCall('Gdiplus\GdipGetAllPropertyItems', 'ptr', image, 'uint', totalBufferSize, 'uint', numProperties, 'ptr', allItems, 'uint')

	static GdipGetBrushType(brush, type) => DllCall('Gdiplus\GdipGetBrushType', 'ptr', brush, 'ptr', type, 'uint')

	static GdipGetCellAscent(family, style, CellAscent) => DllCall('Gdiplus\GdipGetCellAscent', 'ptr', family, 'int', style, 'ptr', CellAscent, 'uint')

	static GdipGetCellDescent(family, style, CellDescent) => DllCall('Gdiplus\GdipGetCellDescent', 'ptr', family, 'int', style, 'ptr', CellDescent, 'uint')

	static GdipGetClip(graphics, region) => DllCall('Gdiplus\GdipGetClip', 'ptr', graphics, 'ptr', region, 'uint')

	static GdipGetClipBounds(graphics, rect) => DllCall('Gdiplus\GdipGetClipBounds', 'ptr', graphics, 'ptr', rect, 'uint')

	static GdipGetClipBoundsI(graphics, rect) => DllCall('Gdiplus\GdipGetClipBoundsI', 'ptr', graphics, 'ptr', rect, 'uint')

	static GdipGetCompositingMode(graphics, compositingMode) => DllCall('Gdiplus\GdipGetCompositingMode', 'ptr', graphics, 'ptr', compositingMode, 'uint')

	static GdipGetCompositingQuality(graphics, compositingQuality) => DllCall('Gdiplus\GdipGetCompositingQuality', 'ptr', graphics, 'ptr', compositingQuality, 'uint')

	static GdipGetCustomLineCapBaseCap(customCap, baseCap) => DllCall('Gdiplus\GdipGetCustomLineCapBaseCap', 'ptr', customCap, 'ptr', baseCap, 'uint')

	static GdipGetCustomLineCapBaseInset(customCap, inset) => DllCall('Gdiplus\GdipGetCustomLineCapBaseInset', 'ptr', customCap, 'ptr', inset, 'uint')

	static GdipGetCustomLineCapStrokeCaps(customCap, startCap, endCap) => DllCall('Gdiplus\GdipGetCustomLineCapStrokeCaps', 'ptr', customCap, 'ptr', startCap, 'ptr', endCap, 'uint')

	static GdipGetCustomLineCapStrokeJoin(customCap, lineJoin) => DllCall('Gdiplus\GdipGetCustomLineCapStrokeJoin', 'ptr', customCap, 'ptr', lineJoin, 'uint')

	static GdipGetCustomLineCapType(customCap, capType) => DllCall('Gdiplus\GdipGetCustomLineCapType', 'ptr', customCap, 'ptr', capType, 'uint')

	static GdipGetCustomLineCapWidthScale(customCap, widthScale) => DllCall('Gdiplus\GdipGetCustomLineCapWidthScale', 'ptr', customCap, 'ptr', widthScale, 'uint')

	static GdipGetDC(graphics, hdc) => DllCall('Gdiplus\GdipGetDC', 'ptr', graphics, 'ptr', hdc, 'uint')

	static GdipGetDpiX(graphics, dpi) => DllCall('Gdiplus\GdipGetDpiX', 'ptr', graphics, 'ptr', dpi, 'uint')

	static GdipGetDpiY(graphics, dpi) => DllCall('Gdiplus\GdipGetDpiY', 'ptr', graphics, 'ptr', dpi, 'uint')

	static GdipGetEmHeight(family, style, EmHeight) => DllCall('Gdiplus\GdipGetEmHeight', 'ptr', family, 'int', style, 'ptr', EmHeight, 'uint')

	static GdipGetEncoderParameterList(image, clsidEncoder, size, buffer) => DllCall('Gdiplus\GdipGetEncoderParameterList', 'ptr', image, 'ptr', clsidEncoder, 'uint', size, 'ptr', buffer, 'uint')

	static GdipGetEncoderParameterListSize(image, clsidEncoder, &size) => DllCall('Gdiplus\GdipGetEncoderParameterListSize', 'ptr', image, 'ptr', clsidEncoder, 'uint*', &size, 'uint')

	static GdipGetFamily(font, family) => DllCall('Gdiplus\GdipGetFamily', 'ptr', font, 'ptr', family, 'uint')

	static GdipGetFamilyName(family, name, language) => DllCall('Gdiplus\GdipGetFamilyName', 'ptr', family, 'wstr', name, 'ushort', language, 'uint')

	static GdipGetFontCollectionFamilyCount(fontCollection, &numFound) => DllCall('Gdiplus\GdipGetFontCollectionFamilyCount', 'ptr', fontCollection, 'int*', &numFound, 'uint')

	static GdipGetFontCollectionFamilyList(fontCollection, numSought, gpfamilies, &numFound) => DllCall('Gdiplus\GdipGetFontCollectionFamilyList', 'ptr', fontCollection, 'int', numSought, 'ptr', gpfamilies, 'int*', &numFound, 'uint')

	static GdipGetFontHeight(font, graphics, height) => DllCall('Gdiplus\GdipGetFontHeight', 'ptr', font, 'ptr', graphics, 'ptr', height, 'uint')

	static GdipGetFontHeightGivenDPI(font, dpi, height) => DllCall('Gdiplus\GdipGetFontHeightGivenDPI', 'ptr', font, 'int', dpi, 'ptr', height, 'uint')

	static GdipGetFontSize(font, size) => DllCall('Gdiplus\GdipGetFontSize', 'ptr', font, 'ptr', size, 'uint')

	static GdipGetFontStyle(font, &style) => DllCall('Gdiplus\GdipGetFontStyle', 'ptr', font, 'int*', &style, 'uint')

	static GdipGetFontUnit(font, unit) => DllCall('Gdiplus\GdipGetFontUnit', 'ptr', font, 'ptr', unit, 'uint')

	static GdipGetGenericFontFamilyMonospace(nativeFamily) => DllCall('Gdiplus\GdipGetGenericFontFamilyMonospace', 'ptr', nativeFamily, 'uint')

	static GdipGetGenericFontFamilySansSerif(nativeFamily) => DllCall('Gdiplus\GdipGetGenericFontFamilySansSerif', 'ptr', nativeFamily, 'uint')

	static GdipGetGenericFontFamilySerif(nativeFamily) => DllCall('Gdiplus\GdipGetGenericFontFamilySerif', 'ptr', nativeFamily, 'uint')

	static GdipGetHatchBackgroundColor(brush, backcol) => DllCall('Gdiplus\GdipGetHatchBackgroundColor', 'ptr', brush, 'ptr', backcol, 'uint')

	static GdipGetHatchForegroundColor(brush, forecol) => DllCall('Gdiplus\GdipGetHatchForegroundColor', 'ptr', brush, 'ptr', forecol, 'uint')

	static GdipGetHatchStyle(brush, hatchstyle) => DllCall('Gdiplus\GdipGetHatchStyle', 'ptr', brush, 'ptr', hatchstyle, 'uint')

	static GdipGetHemfFromMetafile(metafile, hEmf) => DllCall('Gdiplus\GdipGetHemfFromMetafile', 'ptr', metafile, 'ptr', hEmf, 'uint')

	static GdipGetImageAttributesAdjustedPalette(imageAttr, colorPalette, colorAdjustType) => DllCall('Gdiplus\GdipGetImageAttributesAdjustedPalette', 'ptr', imageAttr, 'ptr', colorPalette, 'ptr', colorAdjustType, 'uint')

	static GdipGetImageBounds(image, srcRect, srcUnit) => DllCall('Gdiplus\GdipGetImageBounds', 'ptr', image, 'ptr', srcRect, 'ptr', srcUnit, 'uint')

	static GdipGetImageDecoders(numDecoders, size, decoders) => DllCall('Gdiplus\GdipGetImageDecoders', 'uint', numDecoders, 'uint', size, 'ptr', decoders, 'uint')

	static GdipGetImageDecodersSize(&numDecoders, &size) => DllCall('Gdiplus\GdipGetImageDecodersSize', 'uint*', &numDecoders, 'uint*', &size, 'uint')

	static GdipGetImageDimension(image, width, height) => DllCall('Gdiplus\GdipGetImageDimension', 'ptr', image, 'ptr', width, 'ptr', height, 'uint')

	static GdipGetImageEncoders(numEncoders, size, encoders) => DllCall('Gdiplus\GdipGetImageEncoders', 'uint', numEncoders, 'uint', size, 'ptr', encoders, 'uint')

	static GdipGetImageEncodersSize(&numEncoders, &size) => DllCall('Gdiplus\GdipGetImageEncodersSize', 'uint*', &numEncoders, 'uint*', &size, 'uint')

	static GdipGetImageFlags(image, &flags) => DllCall('Gdiplus\GdipGetImageFlags', 'ptr', image, 'uint*', &flags, 'uint')

	static GdipGetImageGraphicsContext(image, graphics) => DllCall('Gdiplus\GdipGetImageGraphicsContext', 'ptr', image, 'ptr', graphics, 'uint')

	static GdipGetImageHeight(image, &height) => DllCall('Gdiplus\GdipGetImageHeight', 'ptr', image, 'uint*', &height, 'uint')

	static GdipGetImageHorizontalResolution(image, resolution) => DllCall('Gdiplus\GdipGetImageHorizontalResolution', 'ptr', image, 'ptr', resolution, 'uint')

	static GdipGetImagePalette(image, palette, size) => DllCall('Gdiplus\GdipGetImagePalette', 'ptr', image, 'ptr', palette, 'int', size, 'uint')

	static GdipGetImagePaletteSize(image, &size) => DllCall('Gdiplus\GdipGetImagePaletteSize', 'ptr', image, 'int*', &size, 'uint')

	static GdipGetImagePixelFormat(image, format) => DllCall('Gdiplus\GdipGetImagePixelFormat', 'ptr', image, 'ptr', format, 'uint')

	static GdipGetImageRawFormat(image, format) => DllCall('Gdiplus\GdipGetImageRawFormat', 'ptr', image, 'ptr', format, 'uint')

	static GdipGetImageThumbnail(image, thumbWidth, thumbHeight, thumbImage, callback, callbackData) => DllCall('Gdiplus\GdipGetImageThumbnail', 'ptr', image, 'uint', thumbWidth, 'uint', thumbHeight, 'ptr', thumbImage, 'ptr', callback, 'ptr', callbackData, 'uint')

	static GdipGetImageType(image, type) => DllCall('Gdiplus\GdipGetImageType', 'ptr', image, 'ptr', type, 'uint')

	static GdipGetImageVerticalResolution(image, resolution) => DllCall('Gdiplus\GdipGetImageVerticalResolution', 'ptr', image, 'ptr', resolution, 'uint')

	static GdipGetImageWidth(image, &width) => DllCall('Gdiplus\GdipGetImageWidth', 'ptr', image, 'uint*', &width, 'uint')

	static GdipGetInterpolationMode(graphics, interpolationMode) => DllCall('Gdiplus\GdipGetInterpolationMode', 'ptr', graphics, 'ptr', interpolationMode, 'uint')

	static GdipGetLineBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipGetLineBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipGetLineBlendCount(brush, &count) => DllCall('Gdiplus\GdipGetLineBlendCount', 'ptr', brush, 'int*', &count, 'uint')

	static GdipGetLineColors(brush, colors) => DllCall('Gdiplus\GdipGetLineColors', 'ptr', brush, 'ptr', colors, 'uint')

	static GdipGetLineGammaCorrection(brush, &useGammaCorrection) => DllCall('Gdiplus\GdipGetLineGammaCorrection', 'ptr', brush, 'int*', &useGammaCorrection, 'uint')

	static GdipGetLinePresetBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipGetLinePresetBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipGetLinePresetBlendCount(brush, &count) => DllCall('Gdiplus\GdipGetLinePresetBlendCount', 'ptr', brush, 'int*', &count, 'uint')

	static GdipGetLineRect(brush, rect) => DllCall('Gdiplus\GdipGetLineRect', 'ptr', brush, 'ptr', rect, 'uint')

	static GdipGetLineRectI(brush, rect) => DllCall('Gdiplus\GdipGetLineRectI', 'ptr', brush, 'ptr', rect, 'uint')

	static GdipGetLineSpacing(family, style, LineSpacing) => DllCall('Gdiplus\GdipGetLineSpacing', 'ptr', family, 'int', style, 'ptr', LineSpacing, 'uint')

	static GdipGetLineTransform(brush, matrix) => DllCall('Gdiplus\GdipGetLineTransform', 'ptr', brush, 'ptr', matrix, 'uint')

	static GdipGetLineWrapMode(brush, wrapmode) => DllCall('Gdiplus\GdipGetLineWrapMode', 'ptr', brush, 'ptr', wrapmode, 'uint')

	static GdipGetLogFont(font, graphics, logfontA) => DllCall('Gdiplus\GdipGetLogFont', 'ptr', font, 'ptr', graphics, 'ptr', logfontA, 'uint')

	static GdipGetMatrixElements(matrix, matrixOut) => DllCall('Gdiplus\GdipGetMatrixElements', 'ptr', matrix, 'ptr', matrixOut, 'uint')

	static GdipGetMetafileDownLevelRasterizationLimit(metafile, &metafileRasterizationLimitDpi) => DllCall('Gdiplus\GdipGetMetafileDownLevelRasterizationLimit', 'ptr', metafile, 'uint*', &metafileRasterizationLimitDpi, 'uint')

	static GdipGetMetafileHeaderFromEmf(hEmf, header) => DllCall('Gdiplus\GdipGetMetafileHeaderFromEmf', 'ptr', hEmf, 'ptr', header, 'uint')

	static GdipGetMetafileHeaderFromFile(filename, header) => DllCall('Gdiplus\GdipGetMetafileHeaderFromFile', 'ptr', filename, 'ptr', header, 'uint')

	static GdipGetMetafileHeaderFromMetafile(metafile, header) => DllCall('Gdiplus\GdipGetMetafileHeaderFromMetafile', 'ptr', metafile, 'ptr', header, 'uint')

	static GdipGetMetafileHeaderFromStream(stream, header) => DllCall('Gdiplus\GdipGetMetafileHeaderFromStream', 'ptr', stream, 'ptr', header, 'uint')

	static GdipGetMetafileHeaderFromWmf(hWmf, wmfPlaceableFileHeader, header) => DllCall('Gdiplus\GdipGetMetafileHeaderFromWmf', 'ptr', hWmf, 'ptr', wmfPlaceableFileHeader, 'ptr', header, 'uint')

	static GdipGetNearestColor(graphics, argb) => DllCall('Gdiplus\GdipGetNearestColor', 'ptr', graphics, 'ptr', argb, 'uint')

	static GdipGetPageScale(graphics, scale) => DllCall('Gdiplus\GdipGetPageScale', 'ptr', graphics, 'ptr', scale, 'uint')

	static GdipGetPageUnit(graphics, unit) => DllCall('Gdiplus\GdipGetPageUnit', 'ptr', graphics, 'ptr', unit, 'uint')

	static GdipGetPathData(path, pathData) => DllCall('Gdiplus\GdipGetPathData', 'ptr', path, 'ptr', pathData, 'uint')

	static GdipGetPathFillMode(path, fillmode) => DllCall('Gdiplus\GdipGetPathFillMode', 'ptr', path, 'ptr', fillmode, 'uint')

	static GdipGetPathGradientBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipGetPathGradientBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipGetPathGradientBlendCount(brush, &count) => DllCall('Gdiplus\GdipGetPathGradientBlendCount', 'ptr', brush, 'int*', &count, 'uint')

	static GdipGetPathGradientCenterColor(brush, colors) => DllCall('Gdiplus\GdipGetPathGradientCenterColor', 'ptr', brush, 'ptr', colors, 'uint')

	static GdipGetPathGradientCenterPoint(brush, points) => DllCall('Gdiplus\GdipGetPathGradientCenterPoint', 'ptr', brush, 'ptr', points, 'uint')

	static GdipGetPathGradientCenterPointI(brush, points) => DllCall('Gdiplus\GdipGetPathGradientCenterPointI', 'ptr', brush, 'ptr', points, 'uint')

	static GdipGetPathGradientFocusScales(brush, xScale, yScale) => DllCall('Gdiplus\GdipGetPathGradientFocusScales', 'ptr', brush, 'ptr', xScale, 'ptr', yScale, 'uint')

	static GdipGetPathGradientGammaCorrection(brush, &useGammaCorrection) => DllCall('Gdiplus\GdipGetPathGradientGammaCorrection', 'ptr', brush, 'int*', &useGammaCorrection, 'uint')

	static GdipGetPathGradientPath(brush, path) => DllCall('Gdiplus\GdipGetPathGradientPath', 'ptr', brush, 'ptr', path, 'uint')

	static GdipGetPathGradientPointCount(brush, &count) => DllCall('Gdiplus\GdipGetPathGradientPointCount', 'ptr', brush, 'int*', &count, 'uint')

	static GdipGetPathGradientPresetBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipGetPathGradientPresetBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipGetPathGradientPresetBlendCount(brush, &count) => DllCall('Gdiplus\GdipGetPathGradientPresetBlendCount', 'ptr', brush, 'int*', &count, 'uint')

	static GdipGetPathGradientRect(brush, rect) => DllCall('Gdiplus\GdipGetPathGradientRect', 'ptr', brush, 'ptr', rect, 'uint')

	static GdipGetPathGradientRectI(brush, rect) => DllCall('Gdiplus\GdipGetPathGradientRectI', 'ptr', brush, 'ptr', rect, 'uint')

	static GdipGetPathGradientSurroundColorCount(brush, &count) => DllCall('Gdiplus\GdipGetPathGradientSurroundColorCount', 'ptr', brush, 'int*', &count, 'uint')

	static GdipGetPathGradientSurroundColorsWithCount(brush, color, &count) => DllCall('Gdiplus\GdipGetPathGradientSurroundColorsWithCount', 'ptr', brush, 'ptr', color, 'int*', &count, 'uint')

	static GdipGetPathGradientTransform(brush, matrix) => DllCall('Gdiplus\GdipGetPathGradientTransform', 'ptr', brush, 'ptr', matrix, 'uint')

	static GdipGetPathGradientWrapMode(brush, wrapmode) => DllCall('Gdiplus\GdipGetPathGradientWrapMode', 'ptr', brush, 'ptr', wrapmode, 'uint')

	static GdipGetPathLastPoint(path, lastPoint) => DllCall('Gdiplus\GdipGetPathLastPoint', 'ptr', path, 'ptr', lastPoint, 'uint')

	static GdipGetPathPoints(GpPath, points, count) => DllCall('Gdiplus\GdipGetPathPoints', 'ptr', GpPath, 'ptr', points, 'int', count, 'uint')

	static GdipGetPathPointsI(GpPath, points, count) => DllCall('Gdiplus\GdipGetPathPointsI', 'ptr', GpPath, 'ptr', points, 'int', count, 'uint')

	static GdipGetPathTypes(path, &types, count) => DllCall('Gdiplus\GdipGetPathTypes', 'ptr', path, 'uchar*', &types, 'int', count, 'uint')

	static GdipGetPathWorldBounds(path, bounds, matrix, pen) => DllCall('Gdiplus\GdipGetPathWorldBounds', 'ptr', path, 'ptr', bounds, 'ptr', matrix, 'ptr', pen, 'uint')

	static GdipGetPathWorldBoundsI(path, bounds, matrix, pen) => DllCall('Gdiplus\GdipGetPathWorldBoundsI', 'ptr', path, 'ptr', bounds, 'ptr', matrix, 'ptr', pen, 'uint')

	static GdipGetPenBrushFill(pen, brush) => DllCall('Gdiplus\GdipGetPenBrushFill', 'ptr', pen, 'ptr', brush, 'uint')

	static GdipGetPenColor(pen, argb) => DllCall('Gdiplus\GdipGetPenColor', 'ptr', pen, 'ptr', argb, 'uint')

	static GdipGetPenCompoundArray(pen, dash, count) => DllCall('Gdiplus\GdipGetPenCompoundArray', 'ptr', pen, 'ptr', dash, 'int', count, 'uint')

	static GdipGetPenCompoundCount(pen, &count) => DllCall('Gdiplus\GdipGetPenCompoundCount', 'ptr', pen, 'int*', &count, 'uint')

	static GdipGetPenCustomEndCap(pen, customCap) => DllCall('Gdiplus\GdipGetPenCustomEndCap', 'ptr', pen, 'ptr', customCap, 'uint')

	static GdipGetPenCustomStartCap(pen, customCap) => DllCall('Gdiplus\GdipGetPenCustomStartCap', 'ptr', pen, 'ptr', customCap, 'uint')

	static GdipGetPenDashArray(pen, dash, count) => DllCall('Gdiplus\GdipGetPenDashArray', 'ptr', pen, 'ptr', dash, 'int', count, 'uint')

	static GdipGetPenDashCap197819(pen, dashCap) => DllCall('Gdiplus\GdipGetPenDashCap197819', 'ptr', pen, 'ptr', dashCap, 'uint')

	static GdipGetPenDashCount(pen, &count) => DllCall('Gdiplus\GdipGetPenDashCount', 'ptr', pen, 'int*', &count, 'uint')

	static GdipGetPenDashOffset(pen, offset) => DllCall('Gdiplus\GdipGetPenDashOffset', 'ptr', pen, 'ptr', offset, 'uint')

	static GdipGetPenDashStyle(pen, dashstyle) => DllCall('Gdiplus\GdipGetPenDashStyle', 'ptr', pen, 'ptr', dashstyle, 'uint')

	static GdipGetPenEndCap(pen, endCap) => DllCall('Gdiplus\GdipGetPenEndCap', 'ptr', pen, 'ptr', endCap, 'uint')

	static GdipGetPenFillType(pen, type) => DllCall('Gdiplus\GdipGetPenFillType', 'ptr', pen, 'ptr', type, 'uint')

	static GdipGetPenLineJoin(pen, lineJoin) => DllCall('Gdiplus\GdipGetPenLineJoin', 'ptr', pen, 'ptr', lineJoin, 'uint')

	static GdipGetPenMiterLimit(pen, miterLimit) => DllCall('Gdiplus\GdipGetPenMiterLimit', 'ptr', pen, 'ptr', miterLimit, 'uint')

	static GdipGetPenMode(pen, penMode) => DllCall('Gdiplus\GdipGetPenMode', 'ptr', pen, 'ptr', penMode, 'uint')

	static GdipGetPenStartCap(pen, startCap) => DllCall('Gdiplus\GdipGetPenStartCap', 'ptr', pen, 'ptr', startCap, 'uint')

	static GdipGetPenTransform(pen, matrix) => DllCall('Gdiplus\GdipGetPenTransform', 'ptr', pen, 'ptr', matrix, 'uint')

	static GdipGetPenUnit(pen, unit) => DllCall('Gdiplus\GdipGetPenUnit', 'ptr', pen, 'ptr', unit, 'uint')

	static GdipGetPenWidth(pen, width) => DllCall('Gdiplus\GdipGetPenWidth', 'ptr', pen, 'ptr', width, 'uint')

	static GdipGetPixelOffsetMode(graphics, pixelOffsetMode) => DllCall('Gdiplus\GdipGetPixelOffsetMode', 'ptr', graphics, 'ptr', pixelOffsetMode, 'uint')

	static GdipGetPointCount(path, &count) => DllCall('Gdiplus\GdipGetPointCount', 'ptr', path, 'int*', &count, 'uint')

	static GdipGetPropertyCount(image, &numOfProperty) => DllCall('Gdiplus\GdipGetPropertyCount', 'ptr', image, 'uint*', &numOfProperty, 'uint')

	static GdipGetPropertyIdList(image, numOfProperty, list) => DllCall('Gdiplus\GdipGetPropertyIdList', 'ptr', image, 'uint', numOfProperty, 'ptr', list, 'uint')

	static GdipGetPropertyItem(image, propId, propSize, buffer) => DllCall('Gdiplus\GdipGetPropertyItem', 'ptr', image, 'uint', propId, 'uint', propSize, 'ptr', buffer, 'uint')

	static GdipGetPropertyItemSize(image, propId, &size) => DllCall('Gdiplus\GdipGetPropertyItemSize', 'ptr', image, 'uint', propId, 'uint*', &size, 'uint')

	static GdipGetPropertySize(image, &totalBufferSize, &numProperties) => DllCall('Gdiplus\GdipGetPropertySize', 'ptr', image, 'uint*', &totalBufferSize, 'uint*', &numProperties, 'uint')

	static GdipGetRegionBounds(region, graphics, rect) => DllCall('Gdiplus\GdipGetRegionBounds', 'ptr', region, 'ptr', graphics, 'ptr', rect, 'uint')

	static GdipGetRegionBoundsI(region, graphics, rect) => DllCall('Gdiplus\GdipGetRegionBoundsI', 'ptr', region, 'ptr', graphics, 'ptr', rect, 'uint')

	static GdipGetRegionData(region, &buffer, bufferSize, &sizeFilled) => DllCall('Gdiplus\GdipGetRegionData', 'ptr', region, 'uchar*', &buffer, 'uint', bufferSize, 'uint*', &sizeFilled, 'uint')

	static GdipGetRegionDataSize(region, &bufferSize) => DllCall('Gdiplus\GdipGetRegionDataSize', 'ptr', region, 'uint*', &bufferSize, 'uint')

	static GdipGetRegionHRgn(region, graphics, hRgn) => DllCall('Gdiplus\GdipGetRegionHRgn', 'ptr', region, 'ptr', graphics, 'ptr', hRgn, 'uint')

	static GdipGetRegionScans(region, rects, &count, matrix) => DllCall('Gdiplus\GdipGetRegionScans', 'ptr', region, 'ptr', rects, 'int*', &count, 'ptr', matrix, 'uint')

	static GdipGetRegionScansCount(region, &count, matrix) => DllCall('Gdiplus\GdipGetRegionScansCount', 'ptr', region, 'uint*', &count, 'ptr', matrix, 'uint')

	static GdipGetRegionScansI(region, rects, &count, matrix) => DllCall('Gdiplus\GdipGetRegionScansI', 'ptr', region, 'ptr', rects, 'int*', &count, 'ptr', matrix, 'uint')

	static GdipGetRenderingOrigin(graphics, &x, &y) => DllCall('Gdiplus\GdipGetRenderingOrigin', 'ptr', graphics, 'int*', &x, 'int*', &y, 'uint')

	static GdipGetSmoothingMode(graphics, smoothingMode) => DllCall('Gdiplus\GdipGetSmoothingMode', 'ptr', graphics, 'ptr', smoothingMode, 'uint')

	static GdipGetSolidFillColor(brush, color) => DllCall('Gdiplus\GdipGetSolidFillColor', 'ptr', brush, 'ptr', color, 'uint')

	static GdipGetStringFormatAlign(format, align) => DllCall('Gdiplus\GdipGetStringFormatAlign', 'ptr', format, 'ptr', align, 'uint')

	static GdipGetStringFormatDigitSubstitution(format, &language, substitute) => DllCall('Gdiplus\GdipGetStringFormatDigitSubstitution', 'ptr', format, 'ushort*', &language, 'ptr', substitute, 'uint')

	static GdipGetStringFormatFlags(format, &flags) => DllCall('Gdiplus\GdipGetStringFormatFlags', 'ptr', format, 'int*', &flags, 'uint')

	static GdipGetStringFormatHotkeyPrefix(format, &hotkeyPrefix) => DllCall('Gdiplus\GdipGetStringFormatHotkeyPrefix', 'ptr', format, 'int*', &hotkeyPrefix, 'uint')

	static GdipGetStringFormatLineAlign(format, align) => DllCall('Gdiplus\GdipGetStringFormatLineAlign', 'ptr', format, 'ptr', align, 'uint')

	static GdipGetStringFormatMeasurableCharacterRangeCount(format, &count) => DllCall('Gdiplus\GdipGetStringFormatMeasurableCharacterRangeCount', 'ptr', format, 'int*', &count, 'uint')

	static GdipGetStringFormatTabStopCount(format, &count) => DllCall('Gdiplus\GdipGetStringFormatTabStopCount', 'ptr', format, 'int*', &count, 'uint')

	static GdipGetStringFormatTabStops(format, count, firstTabOffset, tabStops) => DllCall('Gdiplus\GdipGetStringFormatTabStops', 'ptr', format, 'int', count, 'ptr', firstTabOffset, 'ptr', tabStops, 'uint')

	static GdipGetStringFormatTrimming(format, trimming) => DllCall('Gdiplus\GdipGetStringFormatTrimming', 'ptr', format, 'ptr', trimming, 'uint')

	static GdipGetTextRenderingHint(graphics, mode) => DllCall('Gdiplus\GdipGetTextRenderingHint', 'ptr', graphics, 'ptr', mode, 'uint')

	static GdipGetTextureImage(brush, image) => DllCall('Gdiplus\GdipGetTextureImage', 'ptr', brush, 'ptr', image, 'uint')

	static GdipGetTextureTransform(brush, matrix) => DllCall('Gdiplus\GdipGetTextureTransform', 'ptr', brush, 'ptr', matrix, 'uint')

	static GdipGetTextureWrapMode(brush, wrapmode) => DllCall('Gdiplus\GdipGetTextureWrapMode', 'ptr', brush, 'ptr', wrapmode, 'uint')

	static GdipGetVisibleClipBounds(graphics, rect) => DllCall('Gdiplus\GdipGetVisibleClipBounds', 'ptr', graphics, 'ptr', rect, 'uint')

	static GdipGetVisibleClipBoundsI(graphics, rect) => DllCall('Gdiplus\GdipGetVisibleClipBoundsI', 'ptr', graphics, 'ptr', rect, 'uint')

	static GdipGetWorldTransform(graphics, matrix) => DllCall('Gdiplus\GdipGetWorldTransform', 'ptr', graphics, 'ptr', matrix, 'uint')

	static GdipGraphicsClear(graphics, color) => DllCall('Gdiplus\GdipGraphicsClear', 'ptr', graphics, 'uint', color, 'uint')

	static GdipImageForceValidation(image) => DllCall('Gdiplus\GdipImageForceValidation', 'ptr', image, 'uint')

	static GdipImageGetFrameCount(image, dimensionID, &count) => DllCall('Gdiplus\GdipImageGetFrameCount', 'ptr', image, 'ptr', dimensionID, 'uint*', &count, 'uint')

	static GdipImageGetFrameDimensionsCount(image, &count) => DllCall('Gdiplus\GdipImageGetFrameDimensionsCount', 'ptr', image, 'uint*', &count, 'uint')

	static GdipImageGetFrameDimensionsList(image, dimensionIDs, count) => DllCall('Gdiplus\GdipImageGetFrameDimensionsList', 'ptr', image, 'ptr', dimensionIDs, 'uint', count, 'uint')

	static GdipImageRotateFlip(image, rfType) => DllCall('Gdiplus\GdipImageRotateFlip', 'ptr', image, 'uint', rfType, 'uint')

	static GdipImageSelectActiveFrame(image, dimensionID, frameIndex) => DllCall('Gdiplus\GdipImageSelectActiveFrame', 'ptr', image, 'ptr', dimensionID, 'uint', frameIndex, 'uint')

	static GdipInvertMatrix(matrix) => DllCall('Gdiplus\GdipInvertMatrix', 'ptr', matrix, 'uint')

	static GdipIsClipEmpty(graphics, &result) => DllCall('Gdiplus\GdipIsClipEmpty', 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsEmptyRegion(region, graphics, &result) => DllCall('Gdiplus\GdipIsEmptyRegion', 'ptr', region, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsEqualRegion(region, region2, graphics, &result) => DllCall('Gdiplus\GdipIsEqualRegion', 'ptr', region, 'ptr', region2, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsInfiniteRegion(region, graphics, &result) => DllCall('Gdiplus\GdipIsInfiniteRegion', 'ptr', region, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsMatrixEqual(matrix, matrix2, &result) => DllCall('Gdiplus\GdipIsMatrixEqual', 'ptr', matrix, 'ptr', matrix2, 'int*', &result, 'uint')

	static GdipIsMatrixIdentity(matrix, &result) => DllCall('Gdiplus\GdipIsMatrixIdentity', 'ptr', matrix, 'int*', &result, 'uint')

	static GdipIsMatrixInvertible(matrix, &result) => DllCall('Gdiplus\GdipIsMatrixInvertible', 'ptr', matrix, 'int*', &result, 'uint')

	static GdipIsOutlineVisiblePathPoint(path, x, y, pen, graphics, &result) => DllCall('Gdiplus\GdipIsOutlineVisiblePathPoint', 'ptr', path, 'int', x, 'int', y, 'ptr', pen, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsOutlineVisiblePathPointI(path, x, y, pen, graphics, &result) => DllCall('Gdiplus\GdipIsOutlineVisiblePathPointI', 'ptr', path, 'int', x, 'int', y, 'ptr', pen, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsVisibleClipEmpty(graphics, &result) => DllCall('Gdiplus\GdipIsVisibleClipEmpty', 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsVisiblePathPoint(path, x, y, graphics, &result) => DllCall('Gdiplus\GdipIsVisiblePathPoint', 'ptr', path, 'int', x, 'int', y, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsVisiblePathPointI(path, x, y, graphics, &result) => DllCall('Gdiplus\GdipIsVisiblePathPointI', 'ptr', path, 'int', x, 'int', y, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsVisiblePoint(graphics, x, y, &result) => DllCall('Gdiplus\GdipIsVisiblePoint', 'ptr', graphics, 'int', x, 'int', y, 'int*', &result, 'uint')

	static GdipIsVisiblePointI(graphics, x, y, &result) => DllCall('Gdiplus\GdipIsVisiblePointI', 'ptr', graphics, 'int', x, 'int', y, 'int*', &result, 'uint')

	static GdipIsVisibleRect(graphics, x, y, width, height, &result) => DllCall('Gdiplus\GdipIsVisibleRect', 'ptr', graphics, 'int', x, 'int', y, 'int', width, 'int', height, 'int*', &result, 'uint')

	static GdipIsVisibleRectI(graphics, x, y, width, height, &result) => DllCall('Gdiplus\GdipIsVisibleRectI', 'ptr', graphics, 'int', x, 'int', y, 'int', width, 'int', height, 'int*', &result, 'uint')

	static GdipIsVisibleRegionPoint(region, x, y, graphics, &result) => DllCall('Gdiplus\GdipIsVisibleRegionPoint', 'ptr', region, 'int', x, 'int', y, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsVisibleRegionPointI(region, x, y, graphics, &result) => DllCall('Gdiplus\GdipIsVisibleRegionPointI', 'ptr', region, 'int', x, 'int', y, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsVisibleRegionRect(region, x, y, width, height, graphics, &result) => DllCall('Gdiplus\GdipIsVisibleRegionRect', 'ptr', region, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipIsVisibleRegionRectI(region, x, y, width, height, graphics, &result) => DllCall('Gdiplus\GdipIsVisibleRegionRectI', 'ptr', region, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', graphics, 'int*', &result, 'uint')

	static GdipLoadImageFromFile(filename, image) => DllCall('Gdiplus\GdipLoadImageFromFile', 'ptr', filename, 'ptr', image, 'uint')

	static GdipLoadImageFromFileICM(filename, image) => DllCall('Gdiplus\GdipLoadImageFromFileICM', 'ptr', filename, 'ptr', image, 'uint')

	static GdipLoadImageFromStream(stream, image) => DllCall('Gdiplus\GdipLoadImageFromStream', 'ptr', stream, 'ptr', image, 'uint')

	static GdipLoadImageFromStreamICM(stream, image) => DllCall('Gdiplus\GdipLoadImageFromStreamICM', 'ptr', stream, 'ptr', image, 'uint')

	static GdipMeasureCharacterRanges(graphics, string, length, font, &layoutRect, stringFormat, regionCount, regions) => DllCall('Gdiplus\GdipMeasureCharacterRanges', 'ptr', graphics, 'ptr', string, 'int', length, 'ptr', font, 'uint', &layoutRect, 'ptr', stringFormat, 'int', regionCount, 'ptr', regions, 'uint')

	static GdipMeasureDriverString(graphics, text, length, font, positions, flags, matrix, boundingBox) => DllCall('Gdiplus\GdipMeasureDriverString', 'ptr', graphics, 'ptr', text, 'int', length, 'ptr', font, 'ptr', positions, 'int', flags, 'ptr', matrix, 'ptr', boundingBox, 'uint')

	static GdipMeasureString(graphics, string, length, font, layoutRect, stringFormat, boundingBox, &codepointsFitted, &linesFilled) => DllCall('Gdiplus\GdipMeasureString', 'ptr', graphics, 'ptr', string, 'int', length, 'ptr', font, 'ptr', layoutRect, 'ptr', stringFormat, 'ptr', boundingBox, 'int*', &codepointsFitted, 'int*', &linesFilled, 'uint')

	static GdipMultiplyLineTransform(brush, matrix, order) => DllCall('Gdiplus\GdipMultiplyLineTransform', 'ptr', brush, 'ptr', matrix, 'uint', order, 'uint')

	static GdipMultiplyMatrix(matrix, matrix2, order) => DllCall('Gdiplus\GdipMultiplyMatrix', 'ptr', matrix, 'ptr', matrix2, 'uint', order, 'uint')

	static GdipMultiplyPathGradientTransform(brush, matrix, order) => DllCall('Gdiplus\GdipMultiplyPathGradientTransform', 'ptr', brush, 'ptr', matrix, 'uint', order, 'uint')

	static GdipMultiplyPenTransform(pen, matrix, order) => DllCall('Gdiplus\GdipMultiplyPenTransform', 'ptr', pen, 'ptr', matrix, 'uint', order, 'uint')

	static GdipMultiplyTextureTransform(brush, matrix, order) => DllCall('Gdiplus\GdipMultiplyTextureTransform', 'ptr', brush, 'ptr', matrix, 'uint', order, 'uint')

	static GdipMultiplyWorldTransform(graphics, matrix, order) => DllCall('Gdiplus\GdipMultiplyWorldTransform', 'ptr', graphics, 'ptr', matrix, 'uint', order, 'uint')

	static GdipNewInstalledFontCollection(fontCollection) => DllCall('Gdiplus\GdipNewInstalledFontCollection', 'ptr', fontCollection, 'uint')

	static GdipNewPrivateFontCollection(fontCollection) => DllCall('Gdiplus\GdipNewPrivateFontCollection', 'ptr', fontCollection, 'uint')

	static GdipPathIterCopyData(iterator, &resultCount, points, &types, startIndex, endIndex) => DllCall('Gdiplus\GdipPathIterCopyData', 'ptr', iterator, 'int*', &resultCount, 'ptr', points, 'uchar*', &types, 'int', startIndex, 'int', endIndex, 'uint')

	static GdipPathIterEnumerate(iterator, &resultCount, points, &types, count) => DllCall('Gdiplus\GdipPathIterEnumerate', 'ptr', iterator, 'int*', &resultCount, 'ptr', points, 'uchar*', &types, 'int', count, 'uint')

	static GdipPathIterGetCount(iterator, &count) => DllCall('Gdiplus\GdipPathIterGetCount', 'ptr', iterator, 'int*', &count, 'uint')

	static GdipPathIterGetSubpathCount(iterator, &count) => DllCall('Gdiplus\GdipPathIterGetSubpathCount', 'ptr', iterator, 'int*', &count, 'uint')

	static GdipPathIterHasCurve(iterator, &hasCurve) => DllCall('Gdiplus\GdipPathIterHasCurve', 'ptr', iterator, 'int*', &hasCurve, 'uint')

	static GdipPathIterIsValid(iterator, &valid) => DllCall('Gdiplus\GdipPathIterIsValid', 'ptr', iterator, 'int*', &valid, 'uint')

	static GdipPathIterNextMarker(iterator, &resultCount, &startIndex, &endIndex) => DllCall('Gdiplus\GdipPathIterNextMarker', 'ptr', iterator, 'int*', &resultCount, 'int*', &startIndex, 'int*', &endIndex, 'uint')

	static GdipPathIterNextMarkerPath(iterator, &resultCount, path) => DllCall('Gdiplus\GdipPathIterNextMarkerPath', 'ptr', iterator, 'int*', &resultCount, 'ptr', path, 'uint')

	static GdipPathIterNextPathType(iterator, &resultCount, &pathType, &startIndex, &endIndex) => DllCall('Gdiplus\GdipPathIterNextPathType', 'ptr', iterator, 'int*', &resultCount, 'uchar*', &pathType, 'int*', &startIndex, 'int*', &endIndex, 'uint')

	static GdipPathIterNextSubpath(iterator, &resultCount, &startIndex, &endIndex, &isClosed) => DllCall('Gdiplus\GdipPathIterNextSubpath', 'ptr', iterator, 'int*', &resultCount, 'int*', &startIndex, 'int*', &endIndex, 'int*', &isClosed, 'uint')

	static GdipPathIterNextSubpathPath(iterator, &resultCount, path, &isClosed) => DllCall('Gdiplus\GdipPathIterNextSubpathPath', 'ptr', iterator, 'int*', &resultCount, 'ptr', path, 'int*', &isClosed, 'uint')

	static GdipPathIterRewind(iterator) => DllCall('Gdiplus\GdipPathIterRewind', 'ptr', iterator, 'uint')

	static GdipPlayMetafileRecord(metafile, recordType, flags, dataSize, data) => DllCall('Gdiplus\GdipPlayMetafileRecord', 'ptr', metafile, 'ptr', recordType, 'uint', flags, 'uint', dataSize, 'ptr', data, 'uint')

	static GdipPrivateAddFontFile(fontCollection, filename) => DllCall('Gdiplus\GdipPrivateAddFontFile', 'ptr', fontCollection, 'ptr', filename, 'uint')

	static GdipPrivateAddMemoryFont(fontCollection, memory, length) => DllCall('Gdiplus\GdipPrivateAddMemoryFont', 'ptr', fontCollection, 'ptr', memory, 'int', length, 'uint')

	static GdipRecordMetafile(referenceHdc, type, frameRect, frameUnit, description, metafile) => DllCall('Gdiplus\GdipRecordMetafile', 'ptr', referenceHdc, 'ptr', type, 'ptr', frameRect, 'uint', frameUnit, 'ptr', description, 'ptr', metafile, 'uint')

	static GdipRecordMetafileFileName(fileName, referenceHdc, type, frameRect, frameUnit, description, metafile) => DllCall('Gdiplus\GdipRecordMetafileFileName', 'ptr', fileName, 'ptr', referenceHdc, 'ptr', type, 'ptr', frameRect, 'uint', frameUnit, 'ptr', description, 'ptr', metafile, 'uint')

	static GdipRecordMetafileFileNameI(fileName, referenceHdc, type, frameRect, frameUnit, description, metafile) => DllCall('Gdiplus\GdipRecordMetafileFileNameI', 'ptr', fileName, 'ptr', referenceHdc, 'ptr', type, 'ptr', frameRect, 'uint', frameUnit, 'ptr', description, 'ptr', metafile, 'uint')

	static GdipRecordMetafileI(referenceHdc, type, frameRect, frameUnit, description, metafile) => DllCall('Gdiplus\GdipRecordMetafileI', 'ptr', referenceHdc, 'ptr', type, 'ptr', frameRect, 'uint', frameUnit, 'ptr', description, 'ptr', metafile, 'uint')

	static GdipRecordMetafileStream(stream, referenceHdc, type, frameRect, frameUnit, description, metafile) => DllCall('Gdiplus\GdipRecordMetafileStream', 'ptr', stream, 'ptr', referenceHdc, 'ptr', type, 'ptr', frameRect, 'uint', frameUnit, 'ptr', description, 'ptr', metafile, 'uint')

	static GdipRecordMetafileStreamI(stream, referenceHdc, type, frameRect, frameUnit, description, metafile) => DllCall('Gdiplus\GdipRecordMetafileStreamI', 'ptr', stream, 'ptr', referenceHdc, 'ptr', type, 'ptr', frameRect, 'uint', frameUnit, 'ptr', description, 'ptr', metafile, 'uint')

	static GdipReleaseDC(graphics, hdc) => DllCall('Gdiplus\GdipReleaseDC', 'ptr', graphics, 'ptr', hdc, 'uint')

	static GdipRemovePropertyItem(image, propId) => DllCall('Gdiplus\GdipRemovePropertyItem', 'ptr', image, 'uint', propId, 'uint')

	static GdipResetClip(graphics) => DllCall('Gdiplus\GdipResetClip', 'ptr', graphics, 'uint')

	static GdipResetImageAttributes(imageattr, type) => DllCall('Gdiplus\GdipResetImageAttributes', 'ptr', imageattr, 'ptr', type, 'uint')

	static GdipResetLineTransform(brush) => DllCall('Gdiplus\GdipResetLineTransform', 'ptr', brush, 'uint')

	static GdipResetPageTransform(graphics) => DllCall('Gdiplus\GdipResetPageTransform', 'ptr', graphics, 'uint')

	static GdipResetPath(path) => DllCall('Gdiplus\GdipResetPath', 'ptr', path, 'uint')

	static GdipResetPathGradientTransform(brush) => DllCall('Gdiplus\GdipResetPathGradientTransform', 'ptr', brush, 'uint')

	static GdipResetPenTransform(pen) => DllCall('Gdiplus\GdipResetPenTransform', 'ptr', pen, 'uint')

	static GdipResetTextureTransform(brush) => DllCall('Gdiplus\GdipResetTextureTransform', 'ptr', brush, 'uint')

	static GdipResetWorldTransform(graphics) => DllCall('Gdiplus\GdipResetWorldTransform', 'ptr', graphics, 'uint')

	static GdipRestoreGraphics(graphics, state) => DllCall('Gdiplus\GdipRestoreGraphics', 'ptr', graphics, 'uint', state, 'uint')

	static GdipReversePath(path) => DllCall('Gdiplus\GdipReversePath', 'ptr', path, 'uint')

	static GdipRotateLineTransform(brush, angle, order) => DllCall('Gdiplus\GdipRotateLineTransform', 'ptr', brush, 'int', angle, 'uint', order, 'uint')

	static GdipRotateMatrix(matrix, angle, order) => DllCall('Gdiplus\GdipRotateMatrix', 'ptr', matrix, 'int', angle, 'uint', order, 'uint')

	static GdipRotatePathGradientTransform(brush, angle, order) => DllCall('Gdiplus\GdipRotatePathGradientTransform', 'ptr', brush, 'int', angle, 'uint', order, 'uint')

	static GdipRotatePenTransform(pen, angle, order) => DllCall('Gdiplus\GdipRotatePenTransform', 'ptr', pen, 'int', angle, 'uint', order, 'uint')

	static GdipRotateTextureTransform(brush, angle, order) => DllCall('Gdiplus\GdipRotateTextureTransform', 'ptr', brush, 'int', angle, 'uint', order, 'uint')

	static GdipRotateWorldTransform(graphics, angle, order) => DllCall('Gdiplus\GdipRotateWorldTransform', 'ptr', graphics, 'int', angle, 'uint', order, 'uint')

	static GdipSaveAdd(image, encoderParams) => DllCall('Gdiplus\GdipSaveAdd', 'ptr', image, 'ptr', encoderParams, 'uint')

	static GdipSaveAddImage(image, newImage, encoderParams) => DllCall('Gdiplus\GdipSaveAddImage', 'ptr', image, 'ptr', newImage, 'ptr', encoderParams, 'uint')

	static GdipSaveGraphics(graphics, state) => DllCall('Gdiplus\GdipSaveGraphics', 'ptr', graphics, 'ptr', state, 'uint')

	static GdipSaveImageToFile(image, filename, clsidEncoder, encoderParams) => DllCall('Gdiplus\GdipSaveImageToFile', 'ptr', image, 'ptr', filename, 'ptr', clsidEncoder, 'ptr', encoderParams, 'uint')

	static GdipSaveImageToStream(image, stream, clsidEncoder, encoderParams) => DllCall('Gdiplus\GdipSaveImageToStream', 'ptr', image, 'ptr', stream, 'ptr', clsidEncoder, 'ptr', encoderParams, 'uint')

	static GdipScaleLineTransform(brush, sx, sy, order) => DllCall('Gdiplus\GdipScaleLineTransform', 'ptr', brush, 'int', sx, 'int', sy, 'uint', order, 'uint')

	static GdipScaleMatrix(matrix, scaleX, scaleY, order) => DllCall('Gdiplus\GdipScaleMatrix', 'ptr', matrix, 'int', scaleX, 'int', scaleY, 'uint', order, 'uint')

	static GdipScalePathGradientTransform(brush, sx, sy, order) => DllCall('Gdiplus\GdipScalePathGradientTransform', 'ptr', brush, 'int', sx, 'int', sy, 'uint', order, 'uint')

	static GdipScalePenTransform(pen, sx, sy, order) => DllCall('Gdiplus\GdipScalePenTransform', 'ptr', pen, 'int', sx, 'int', sy, 'uint', order, 'uint')

	static GdipScaleTextureTransform(brush, sx, sy, order) => DllCall('Gdiplus\GdipScaleTextureTransform', 'ptr', brush, 'int', sx, 'int', sy, 'uint', order, 'uint')

	static GdipScaleWorldTransform(graphics, sx, sy, order) => DllCall('Gdiplus\GdipScaleWorldTransform', 'ptr', graphics, 'int', sx, 'int', sy, 'uint', order, 'uint')

	static GdipSetAdjustableArrowCapFillState(cap, fillState) => DllCall('Gdiplus\GdipSetAdjustableArrowCapFillState', 'ptr', cap, 'int', fillState, 'uint')

	static GdipSetAdjustableArrowCapHeight(cap, height) => DllCall('Gdiplus\GdipSetAdjustableArrowCapHeight', 'ptr', cap, 'int', height, 'uint')

	static GdipSetAdjustableArrowCapMiddleInset(cap, middleInset) => DllCall('Gdiplus\GdipSetAdjustableArrowCapMiddleInset', 'ptr', cap, 'int', middleInset, 'uint')

	static GdipSetAdjustableArrowCapWidth(cap, width) => DllCall('Gdiplus\GdipSetAdjustableArrowCapWidth', 'ptr', cap, 'int', width, 'uint')

	static GdipSetClipGraphics(graphics, srcgraphics, combineMode) => DllCall('Gdiplus\GdipSetClipGraphics', 'ptr', graphics, 'ptr', srcgraphics, 'ptr', combineMode, 'uint')

	static GdipSetClipHrgn(graphics, hRgn, combineMode) => DllCall('Gdiplus\GdipSetClipHrgn', 'ptr', graphics, 'ptr', hRgn, 'ptr', combineMode, 'uint')

	static GdipSetClipPath(graphics, path, combineMode) => DllCall('Gdiplus\GdipSetClipPath', 'ptr', graphics, 'ptr', path, 'ptr', combineMode, 'uint')

	static GdipSetClipRect(graphics, x, y, width, height, combineMode) => DllCall('Gdiplus\GdipSetClipRect', 'ptr', graphics, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', combineMode, 'uint')

	static GdipSetClipRectI(graphics, x, y, width, height, combineMode) => DllCall('Gdiplus\GdipSetClipRectI', 'ptr', graphics, 'int', x, 'int', y, 'int', width, 'int', height, 'ptr', combineMode, 'uint')

	static GdipSetClipRegion(graphics, region, combineMode) => DllCall('Gdiplus\GdipSetClipRegion', 'ptr', graphics, 'ptr', region, 'ptr', combineMode, 'uint')

	static GdipSetCompositingMode(graphics, compositingMode) => DllCall('Gdiplus\GdipSetCompositingMode', 'ptr', graphics, 'ptr', compositingMode, 'uint')

	static GdipSetCompositingQuality(graphics, compositingQuality) => DllCall('Gdiplus\GdipSetCompositingQuality', 'ptr', graphics, 'ptr', compositingQuality, 'uint')

	static GdipSetCustomLineCapBaseCap(customCap, baseCap) => DllCall('Gdiplus\GdipSetCustomLineCapBaseCap', 'ptr', customCap, 'uint', baseCap, 'uint')

	static GdipSetCustomLineCapBaseInset(customCap, inset) => DllCall('Gdiplus\GdipSetCustomLineCapBaseInset', 'ptr', customCap, 'int', inset, 'uint')

	static GdipSetCustomLineCapStrokeCaps(customCap, startCap, endCap) => DllCall('Gdiplus\GdipSetCustomLineCapStrokeCaps', 'ptr', customCap, 'uint', startCap, 'uint', endCap, 'uint')

	static GdipSetCustomLineCapStrokeJoin(customCap, lineJoin) => DllCall('Gdiplus\GdipSetCustomLineCapStrokeJoin', 'ptr', customCap, 'uint', lineJoin, 'uint')

	static GdipSetCustomLineCapWidthScale(customCap, widthScale) => DllCall('Gdiplus\GdipSetCustomLineCapWidthScale', 'ptr', customCap, 'int', widthScale, 'uint')

	static GdipSetEmpty(region) => DllCall('Gdiplus\GdipSetEmpty', 'ptr', region, 'uint')

	static GdipSetImageAttributesCachedBackground(imageattr, enableFlag) => DllCall('Gdiplus\GdipSetImageAttributesCachedBackground', 'ptr', imageattr, 'int', enableFlag, 'uint')

	static GdipSetImageAttributesColorKeys(imageattr, type, enableFlag, colorLow, colorHigh) => DllCall('Gdiplus\GdipSetImageAttributesColorKeys', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'uint', colorLow, 'uint', colorHigh, 'uint')

	static GdipSetImageAttributesColorMatrix(imageattr, type, enableFlag, colorMatrix, grayMatrix, flags) => DllCall('Gdiplus\GdipSetImageAttributesColorMatrix', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'ptr', colorMatrix, 'ptr', grayMatrix, 'ptr', flags, 'uint')

	static GdipSetImageAttributesGamma(imageattr, type, enableFlag, gamma) => DllCall('Gdiplus\GdipSetImageAttributesGamma', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'int', gamma, 'uint')

	static GdipSetImageAttributesNoOp(imageattr, type, enableFlag) => DllCall('Gdiplus\GdipSetImageAttributesNoOp', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'uint')

	static GdipSetImageAttributesOutputChannel(imageattr, type, enableFlag, channelFlags) => DllCall('Gdiplus\GdipSetImageAttributesOutputChannel', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'ptr', channelFlags, 'uint')

	static GdipSetImageAttributesOutputChannelColorProfile(imageattr, type, enableFlag, colorProfileFilename) => DllCall('Gdiplus\GdipSetImageAttributesOutputChannelColorProfile', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'ptr', colorProfileFilename, 'uint')

	static GdipSetImageAttributesRemapTable(imageattr, type, enableFlag, mapSize, map) => DllCall('Gdiplus\GdipSetImageAttributesRemapTable', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'uint', mapSize, 'ptr', map, 'uint')

	static GdipSetImageAttributesThreshold(imageattr, type, enableFlag, threshold) => DllCall('Gdiplus\GdipSetImageAttributesThreshold', 'ptr', imageattr, 'ptr', type, 'int', enableFlag, 'int', threshold, 'uint')

	static GdipSetImageAttributesToIdentity(imageattr, type) => DllCall('Gdiplus\GdipSetImageAttributesToIdentity', 'ptr', imageattr, 'ptr', type, 'uint')

	static GdipSetImageAttributesWrapMode(imageAttr, wrap, argb, clamp) => DllCall('Gdiplus\GdipSetImageAttributesWrapMode', 'ptr', imageAttr, 'uint', wrap, 'uint', argb, 'int', clamp, 'uint')

	static GdipSetImagePalette(image, palette) => DllCall('Gdiplus\GdipSetImagePalette', 'ptr', image, 'ptr', palette, 'uint')

	static GdipSetInfinite(region) => DllCall('Gdiplus\GdipSetInfinite', 'ptr', region, 'uint')

	static GdipSetInterpolationMode(graphics, interpolationMode) => DllCall('Gdiplus\GdipSetInterpolationMode', 'ptr', graphics, 'uint', interpolationMode, 'uint')

	static GdipSetLineBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipSetLineBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipSetLineColors(brush, color1, color2) => DllCall('Gdiplus\GdipSetLineColors', 'ptr', brush, 'uint', color1, 'uint', color2, 'uint')

	static GdipSetLineGammaCorrection(brush, useGammaCorrection) => DllCall('Gdiplus\GdipSetLineGammaCorrection', 'ptr', brush, 'int', useGammaCorrection, 'uint')

	static GdipSetLineLinearBlend(brush, focus, scale) => DllCall('Gdiplus\GdipSetLineLinearBlend', 'ptr', brush, 'int', focus, 'int', scale, 'uint')

	static GdipSetLinePresetBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipSetLinePresetBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipSetLineSigmaBlend(brush, focus, scale) => DllCall('Gdiplus\GdipSetLineSigmaBlend', 'ptr', brush, 'int', focus, 'int', scale, 'uint')

	static GdipSetLineTransform(brush, matrix) => DllCall('Gdiplus\GdipSetLineTransform', 'ptr', brush, 'ptr', matrix, 'uint')

	static GdipSetLineWrapMode(brush, wrapmode) => DllCall('Gdiplus\GdipSetLineWrapMode', 'ptr', brush, 'uint', wrapmode, 'uint')

	static GdipSetMatrixElements(matrix, m11, m12, m21, m22, dx, dy) => DllCall('Gdiplus\GdipSetMatrixElements', 'ptr', matrix, 'int', m11, 'int', m12, 'int', m21, 'int', m22, 'int', dx, 'int', dy, 'uint')

	static GdipSetMetafileDownLevelRasterizationLimit(metafile, metafileRasterizationLimitDpi) => DllCall('Gdiplus\GdipSetMetafileDownLevelRasterizationLimit', 'ptr', metafile, 'uint', metafileRasterizationLimitDpi, 'uint')

	static GdipSetPageScale(graphics, scale) => DllCall('Gdiplus\GdipSetPageScale', 'ptr', graphics, 'int', scale, 'uint')

	static GdipSetPageUnit(graphics, unit) => DllCall('Gdiplus\GdipSetPageUnit', 'ptr', graphics, 'uint', unit, 'uint')

	static GdipSetPathFillMode(path, fillmode) => DllCall('Gdiplus\GdipSetPathFillMode', 'ptr', path, 'uint', fillmode, 'uint')

	static GdipSetPathGradientBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipSetPathGradientBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipSetPathGradientCenterColor(brush, colors) => DllCall('Gdiplus\GdipSetPathGradientCenterColor', 'ptr', brush, 'uint', colors, 'uint')

	static GdipSetPathGradientCenterPoint(brush, points) => DllCall('Gdiplus\GdipSetPathGradientCenterPoint', 'ptr', brush, 'ptr', points, 'uint')

	static GdipSetPathGradientCenterPointI(brush, points) => DllCall('Gdiplus\GdipSetPathGradientCenterPointI', 'ptr', brush, 'ptr', points, 'uint')

	static GdipSetPathGradientFocusScales(brush, xScale, yScale) => DllCall('Gdiplus\GdipSetPathGradientFocusScales', 'ptr', brush, 'int', xScale, 'int', yScale, 'uint')

	static GdipSetPathGradientGammaCorrection(brush, useGammaCorrection) => DllCall('Gdiplus\GdipSetPathGradientGammaCorrection', 'ptr', brush, 'int', useGammaCorrection, 'uint')

	static GdipSetPathGradientLinearBlend(brush, focus, scale) => DllCall('Gdiplus\GdipSetPathGradientLinearBlend', 'ptr', brush, 'int', focus, 'int', scale, 'uint')

	static GdipSetPathGradientPath(brush, path) => DllCall('Gdiplus\GdipSetPathGradientPath', 'ptr', brush, 'ptr', path, 'uint')

	static GdipSetPathGradientPresetBlend(brush, blend, positions, count) => DllCall('Gdiplus\GdipSetPathGradientPresetBlend', 'ptr', brush, 'ptr', blend, 'ptr', positions, 'int', count, 'uint')

	static GdipSetPathGradientSigmaBlend(brush, focus, scale) => DllCall('Gdiplus\GdipSetPathGradientSigmaBlend', 'ptr', brush, 'int', focus, 'int', scale, 'uint')

	static GdipSetPathGradientSurroundColorsWithCount(brush, color, &count) => DllCall('Gdiplus\GdipSetPathGradientSurroundColorsWithCount', 'ptr', brush, 'ptr', color, 'int*', &count, 'uint')

	static GdipSetPathGradientTransform(brush, matrix) => DllCall('Gdiplus\GdipSetPathGradientTransform', 'ptr', brush, 'ptr', matrix, 'uint')

	static GdipSetPathGradientWrapMode(brush, wrapmode) => DllCall('Gdiplus\GdipSetPathGradientWrapMode', 'ptr', brush, 'uint', wrapmode, 'uint')

	static GdipSetPathMarker(path) => DllCall('Gdiplus\GdipSetPathMarker', 'ptr', path, 'uint')

	static GdipSetPenBrushFill(pen, brush) => DllCall('Gdiplus\GdipSetPenBrushFill', 'ptr', pen, 'ptr', brush, 'uint')

	static GdipSetPenColor(pen, argb) => DllCall('Gdiplus\GdipSetPenColor', 'ptr', pen, 'uint', argb, 'uint')

	static GdipSetPenCompoundArray(pen, dash, count) => DllCall('Gdiplus\GdipSetPenCompoundArray', 'ptr', pen, 'ptr', dash, 'int', count, 'uint')

	static GdipSetPenCustomEndCap(pen, customCap) => DllCall('Gdiplus\GdipSetPenCustomEndCap', 'ptr', pen, 'ptr', customCap, 'uint')

	static GdipSetPenCustomStartCap(pen, customCap) => DllCall('Gdiplus\GdipSetPenCustomStartCap', 'ptr', pen, 'ptr', customCap, 'uint')

	static GdipSetPenDashArray(pen, dash, count) => DllCall('Gdiplus\GdipSetPenDashArray', 'ptr', pen, 'ptr', dash, 'int', count, 'uint')

	static GdipSetPenDashCap197819(pen, dashCap) => DllCall('Gdiplus\GdipSetPenDashCap197819', 'ptr', pen, 'uint', dashCap, 'uint')

	static GdipSetPenDashOffset(pen, offset) => DllCall('Gdiplus\GdipSetPenDashOffset', 'ptr', pen, 'int', offset, 'uint')

	static GdipSetPenDashStyle(pen, dashstyle) => DllCall('Gdiplus\GdipSetPenDashStyle', 'ptr', pen, 'uint', dashstyle, 'uint')

	static GdipSetPenEndCap(pen, endCap) => DllCall('Gdiplus\GdipSetPenEndCap', 'ptr', pen, 'uint', endCap, 'uint')

	static GdipSetPenLineCap197819(pen, startCap, endCap, dashCap) => DllCall('Gdiplus\GdipSetPenLineCap197819', 'ptr', pen, 'uint', startCap, 'uint', endCap, 'uint', dashCap, 'uint')

	static GdipSetPenLineJoin(pen, lineJoin) => DllCall('Gdiplus\GdipSetPenLineJoin', 'ptr', pen, 'uint', lineJoin, 'uint')

	static GdipSetPenMiterLimit(pen, miterLimit) => DllCall('Gdiplus\GdipSetPenMiterLimit', 'ptr', pen, 'int', miterLimit, 'uint')

	static GdipSetPenMode(pen, penMode) => DllCall('Gdiplus\GdipSetPenMode', 'ptr', pen, 'uint', penMode, 'uint')

	static GdipSetPenStartCap(pen, startCap) => DllCall('Gdiplus\GdipSetPenStartCap', 'ptr', pen, 'uint', startCap, 'uint')

	static GdipSetPenTransform(pen, matrix) => DllCall('Gdiplus\GdipSetPenTransform', 'ptr', pen, 'ptr', matrix, 'uint')

	static GdipSetPenUnit(pen, unit) => DllCall('Gdiplus\GdipSetPenUnit', 'ptr', pen, 'uint', unit, 'uint')

	static GdipSetPenWidth(pen, width) => DllCall('Gdiplus\GdipSetPenWidth', 'ptr', pen, 'int', width, 'uint')

	static GdipSetPixelOffsetMode(graphics, pixelOffsetMode) => DllCall('Gdiplus\GdipSetPixelOffsetMode', 'ptr', graphics, 'ptr', pixelOffsetMode, 'uint')

	static GdipSetPropertyItem(image, item) => DllCall('Gdiplus\GdipSetPropertyItem', 'ptr', image, 'ptr', item, 'uint')

	static GdipSetRenderingOrigin(graphics, x, y) => DllCall('Gdiplus\GdipSetRenderingOrigin', 'ptr', graphics, 'int', x, 'int', y, 'uint')

	static GdipSetSmoothingMode(graphics, smoothingMode) => DllCall('Gdiplus\GdipSetSmoothingMode', 'ptr', graphics, 'uint', smoothingMode, 'uint')

	static GdipSetSolidFillColor(brush, color) => DllCall('Gdiplus\GdipSetSolidFillColor', 'ptr', brush, 'uint', color, 'uint')

	static GdipSetStringFormatAlign(format, align) => DllCall('Gdiplus\GdipSetStringFormatAlign', 'ptr', format, 'uint', align, 'uint')

	static GdipSetStringFormatDigitSubstitution(format, language, substitute) => DllCall('Gdiplus\GdipSetStringFormatDigitSubstitution', 'ptr', format, 'ushort', language, 'uint', substitute, 'uint')

	static GdipSetStringFormatFlags(format, flags) => DllCall('Gdiplus\GdipSetStringFormatFlags', 'ptr', format, 'int', flags, 'uint')

	static GdipSetStringFormatHotkeyPrefix(format, hotkeyPrefix) => DllCall('Gdiplus\GdipSetStringFormatHotkeyPrefix', 'ptr', format, 'int', hotkeyPrefix, 'uint')

	static GdipSetStringFormatLineAlign(format, align) => DllCall('Gdiplus\GdipSetStringFormatLineAlign', 'ptr', format, 'uint', align, 'uint')

	static GdipSetStringFormatMeasurableCharacterRanges(format, rangeCount, ranges) => DllCall('Gdiplus\GdipSetStringFormatMeasurableCharacterRanges', 'ptr', format, 'int', rangeCount, 'ptr', ranges, 'uint')

	static GdipSetStringFormatTabStops(format, firstTabOffset, count, tabStops) => DllCall('Gdiplus\GdipSetStringFormatTabStops', 'ptr', format, 'int', firstTabOffset, 'int', count, 'ptr', tabStops, 'uint')

	static GdipSetStringFormatTrimming(format, trimming) => DllCall('Gdiplus\GdipSetStringFormatTrimming', 'ptr', format, 'uint', trimming, 'uint')

	static GdipSetTextRenderingHint(graphics, mode) => DllCall('Gdiplus\GdipSetTextRenderingHint', 'ptr', graphics, 'uint', mode, 'uint')

	static GdipSetTextureTransform(brush, matrix) => DllCall('Gdiplus\GdipSetTextureTransform', 'ptr', brush, 'ptr', matrix, 'uint')

	static GdipSetTextureWrapMode(brush, wrapmode) => DllCall('Gdiplus\GdipSetTextureWrapMode', 'ptr', brush, 'uint', wrapmode, 'uint')

	static GdipSetWorldTransform(graphics, matrix) => DllCall('Gdiplus\GdipSetWorldTransform', 'ptr', graphics, 'ptr', matrix, 'uint')

	static GdipShearMatrix(matrix, shearX, shearY, order) => DllCall('Gdiplus\GdipShearMatrix', 'ptr', matrix, 'int', shearX, 'int', shearY, 'uint', order, 'uint')

	static GdipStartPathFigure(path) => DllCall('Gdiplus\GdipStartPathFigure', 'ptr', path, 'uint')

	static GdipStringFormatGetGenericDefault(format) => DllCall('Gdiplus\GdipStringFormatGetGenericDefault', 'ptr', format, 'uint')

	static GdipStringFormatGetGenericTypographic(format) => DllCall('Gdiplus\GdipStringFormatGetGenericTypographic', 'ptr', format, 'uint')

	static GdipTestControl(control, param) => DllCall('Gdiplus\GdipTestControl', 'uint', control, 'ptr', param, 'uint')

	static GdipTransformMatrixPoints(matrix, pts, count) => DllCall('Gdiplus\GdipTransformMatrixPoints', 'ptr', matrix, 'ptr', pts, 'int', count, 'uint')

	static GdipTransformMatrixPointsI(matrix, pts, count) => DllCall('Gdiplus\GdipTransformMatrixPointsI', 'ptr', matrix, 'ptr', pts, 'int', count, 'uint')

	static GdipTransformPath(path, matrix) => DllCall('Gdiplus\GdipTransformPath', 'ptr', path, 'ptr', matrix, 'uint')

	static GdipTransformPoints(graphics, destSpace, srcSpace, points, count) => DllCall('Gdiplus\GdipTransformPoints', 'ptr', graphics, 'uint', destSpace, 'uint', srcSpace, 'ptr', points, 'int', count, 'uint')

	static GdipTransformPointsI(graphics, destSpace, srcSpace, points, count) => DllCall('Gdiplus\GdipTransformPointsI', 'ptr', graphics, 'uint', destSpace, 'uint', srcSpace, 'ptr', points, 'int', count, 'uint')

	static GdipTransformRegion(region, matrix) => DllCall('Gdiplus\GdipTransformRegion', 'ptr', region, 'ptr', matrix, 'uint')

	static GdipTranslateClip(graphics, dx, dy) => DllCall('Gdiplus\GdipTranslateClip', 'ptr', graphics, 'int', dx, 'int', dy, 'uint')

	static GdipTranslateClipI(graphics, dx, dy) => DllCall('Gdiplus\GdipTranslateClipI', 'ptr', graphics, 'int', dx, 'int', dy, 'uint')

	static GdipTranslateLineTransform(brush, dx, dy, order) => DllCall('Gdiplus\GdipTranslateLineTransform', 'ptr', brush, 'int', dx, 'int', dy, 'uint', order, 'uint')

	static GdipTranslateMatrix(matrix, offsetX, offsetY, order) => DllCall('Gdiplus\GdipTranslateMatrix', 'ptr', matrix, 'int', offsetX, 'int', offsetY, 'uint', order, 'uint')

	static GdipTranslatePathGradientTransform(brush, dx, dy, order) => DllCall('Gdiplus\GdipTranslatePathGradientTransform', 'ptr', brush, 'int', dx, 'int', dy, 'uint', order, 'uint')

	static GdipTranslatePenTransform(pen, dx, dy, order) => DllCall('Gdiplus\GdipTranslatePenTransform', 'ptr', pen, 'int', dx, 'int', dy, 'uint', order, 'uint')

	static GdipTranslateRegion(region, dx, dy) => DllCall('Gdiplus\GdipTranslateRegion', 'ptr', region, 'int', dx, 'int', dy, 'uint')

	static GdipTranslateRegionI(region, dx, dy) => DllCall('Gdiplus\GdipTranslateRegionI', 'ptr', region, 'int', dx, 'int', dy, 'uint')

	static GdipTranslateTextureTransform(brush, dx, dy, order) => DllCall('Gdiplus\GdipTranslateTextureTransform', 'ptr', brush, 'int', dx, 'int', dy, 'uint', order, 'uint')

	static GdipTranslateWorldTransform(graphics, dx, dy, order) => DllCall('Gdiplus\GdipTranslateWorldTransform', 'ptr', graphics, 'int', dx, 'int', dy, 'uint', order, 'uint')

	static GdipVectorTransformMatrixPoints(matrix, pts, count) => DllCall('Gdiplus\GdipVectorTransformMatrixPoints', 'ptr', matrix, 'ptr', pts, 'int', count, 'uint')

	static GdipVectorTransformMatrixPointsI(matrix, pts, count) => DllCall('Gdiplus\GdipVectorTransformMatrixPointsI', 'ptr', matrix, 'ptr', pts, 'int', count, 'uint')

	static GdipWarpPath(path, matrix, points, count, srcx, srcy, srcwidth, srcheight, warpMode, flatness) => DllCall('Gdiplus\GdipWarpPath', 'ptr', path, 'ptr', matrix, 'ptr', points, 'int', count, 'int', srcx, 'int', srcy, 'int', srcwidth, 'int', srcheight, 'uint', warpMode, 'int', flatness, 'uint')

	static GdipWidenPath(nativePath, pen, matrix, flatness) => DllCall('Gdiplus\GdipWidenPath', 'ptr', nativePath, 'ptr', pen, 'ptr', matrix, 'int', flatness, 'uint')

	static GdipWindingModeOutline(path, matrix, flatness) => DllCall('Gdiplus\GdipWindingModeOutline', 'ptr', path, 'ptr', matrix, 'int', flatness, 'uint')

	static GdiplusNotificationHook(token) => DllCall('Gdiplus\GdiplusNotificationHook', 'uptr', token, 'uint')

	static GdiplusNotificationUnhook(token) => DllCall('Gdiplus\GdiplusNotificationUnhook', 'uptr', token, 'int')

	static GdiplusShutdown(token) => DllCall('Gdiplus\GdiplusShutdown', 'uptr', token, 'int')

	static GdiplusStartup(token, input, output) => DllCall('Gdiplus\GdiplusStartup', 'uptr', token, 'ptr', input, 'ptr', output, 'uint')
	;#endregion

}
