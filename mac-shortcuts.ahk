#SingleInstance Force
SendMode Input

; Script that emulates some of macOS shortcuts by making Windows' Alt key behave like Mac's Command key
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
#Left::Send, ^{Left} ; Win + Left = move carret to the beginning of previous word
#Right::Send, ^{Right} ; Win + Right = move carret to the beginning of next word

; Google Chrome
#IfWinActive ahk_exe chrome.exe

!r::Send, ^{vk52} ; Alt + R = refresh
!w::Send, ^{vk57} ; Alt + W = close current tab
!t::Send, ^{vk54} ; Alt + T = new tab
!+t::Send, ^+{vk54} ; Alt + Shift + T = reopen previous tab

#IfWinActive

; JetBrains WebStorm
; This only makes sense if you are using "Max OS X" keymap on Mac and "Default" keymap on Windows
; "Mac OS X 10.5+" keymap is impossible to reproduce on Windows
#IfWinActive ahk_exe webstorm64.exe

!y::Send, ^y ; Alt + Y = delete line
!d::Send, ^d ; Alt + D = duplicate line or selection
!p::Send, ^p ; Alt + P = parameter info
!e::Send, ^e ; Alt + E = recent files
!w::Send, ^w ; Alt + W = extend selection
!+w::Send, ^+w ; Alt + Shift + W = shrink selection
!r::Send, ^r ; Alt + R = replace
!+i::Send, ^+i ; Alt + Shift + I = quick definition

!n::Send, ^n ; Alt + N = navigate to class
!+n::Send, ^+n ; Alt + Shift + N = navigate to file
!#+n::Send, ^!+n ; Alt + Windows  + Shift + N = navigate to symbol
!g::Send, ^g ; Alt + G = navigate to line/column
!#Left::Send, ^!{Left} ; Alt + Windows + Left = navigate back
!#Right::Send, ^!{Right} ; Alt + Windows + Left = navigate forward
!b::Send, ^b ; Alt + B = navigate to declaration
!#b::Send, ^!b ; Alt + Windows + B = navigate to implementation(s)

!#t::Send, ^!t ; Alt + Windows + T = surround with
!+BackSpace::Send, ^+{Delete} ; Alt + Shift + Backspace = unwrap/remove
!#+t::Send, ^!+t ; Alt + Windows + Shift + T = refactor this
!#v::Send, ^!v ; Alt + Windows + V = extract variable
!#c::Send, ^!c ; Alt + Windows + C = extract constant
!#f::Send, ^!f ; Alt + Windows + F = extract field
!#p::Send, ^!p ; Alt + Windows + P = extract parameter
!#m::Send, ^!m ; Alt + Windows + M = extract method
!#n::Send, ^!n ; Alt + Windows + N = inline

!k::Send, ^k ; Alt + K = commit
!+k::Send, ^+k ; Alt + Shift + K = push
!t::Send, ^t ; Alt + T = update project

!+a::Send, ^+a ; Alt + Shift + A = find action

#IfWinActive