SetWindowLong := A_PtrSize=8 ? "SetWindowLongPtr" : "SetWindowLong"
GetWindowLong := A_PtrSize=8 ? "GetWindowLongPtr" : "GetWindowLong"

if (hwnd := WinExist("WiFreeWatermarkStatus")) {
    winlong := DllCall(GetWindowLong, "Ptr", hwnd, "Int", -20, "Int") 
    DllCall(SetWindowLong, "Ptr", hwnd, "Int", -20, "Int", winlong | 128)
}
