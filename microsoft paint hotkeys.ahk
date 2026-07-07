#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe mspaint.exe")
CoordMode "Mouse", "Screen"

~x::Click(333, 60)
~z::Click(127, 61)
~t::Click(289, 66)
~r::Click(828, 59)
~b::Click(760, 57)
~c::Send("{Delete}")
~e::Click(241, 96)
~g::Click(895, 62)

#HotIf
