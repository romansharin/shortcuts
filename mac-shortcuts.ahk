#SingleInstance Force
SendMode Input

; Script that emulates some of macOS shortcuts by making Windows' Alt key behave like Mac's Command
; Original shortcuts are still usable
; Key codes (vk43 and so on) are used in order to make shortucts independent of selected keyboard layout

; GLOBAL
!c::Send, ^{vk43} ; Alt + C = copy
!v::Send, ^{vk56} ; Alt + V = paste
!x::Send, ^{vk58} ; Alt + X = cut
!s::Send, ^{vk53} ; Alt + S = save
!a::Send, ^{vk41} ; Alt + A = select all
!z::Send, ^{vk5a} ; Alt + Z = undo
!+z::Send, ^+{vk5a} ; Alt + Shift + Z = redo (in some apps)
!f::Send, ^{vk46} ; Alt + F = search
!BackSpace::Send ^{BackSpace} ; Alt + Backspace = delete whole word
!Left::Send, {Home} ; Alt + Left = move carret to the beginning of the line
!Right::Send, {End} ; Alt + Right = move carret to the end of the line
#Left::Send ^{Left} ; Win + Left = move carret to the beginning of previous word
#Right::Send ^{Right} ; Win + Right = move carret to the beginning of next word

; Google Chrome
#IfWinActive ahk_exe chrome.exe

!r::Send, ^{vk52} ; Alt + R = refresh
!w::Send, ^{vk57} ; Alt + W = close current tab
!t::Send, ^{vk54} ; Alt + T = new tab
!+t::Send, ^+{vk54} ; Alt + Shift + T = reopen previous tab

#IfWinActive

