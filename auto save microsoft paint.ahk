#Requires AutoHotkey v2.0
#SingleInstance Force

; Check every 60 secs (60,000 milliseconds)
SetTimer(SaveActivePaintOnly, 60000)

SaveActivePaintOnly() {
    ; 1. Check if MS Paint is the active window using the executable name
    if WinActive("ahk_exe mspaint.exe") {
        
        ; 2. Get the current title of the active Paint window
        activeTitle := WinGetTitle("ahk_exe mspaint.exe")
        
        ; 3. Use InStr (In String) to see if it contains "Untitled"
        ; This is much safer than checking the exact text match
        if !InStr(activeTitle, "Untitled") {
            
            ; Send the save shortcut
            Send("^s")
            
            ; Show the confirmation message
            TrayTip("Paint Auto-Saved", activeTitle, 17)
            
            ; Hide the notification after 2 seconds
            SetTimer(() => TrayTip(), -2000)
        }
    }
}