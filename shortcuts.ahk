#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"
SetCapsLockState "AlwaysOff"

; Original shortcuts are still usable
; Key codes (vk43 and so on) are used in order to make shortcuts independent of selected keyboard layout

; GLOBAL
^Space::Send "{Ctrl Up}{Alt Down}{Shift}{Alt up}"   ; Ctrl + Space = switch keyboard layout
CapsLock & vkBA::Send "{Enter}"                     ; CapsLock + ; = enter

; Custom caret navigation
CapsLock & j::Send "{Left}"         ; CapsLock + j = left
CapsLock & k::Send "{Down}"         ; CapsLock + k = down
CapsLock & l::Send "{Right}"        ; CapsLock + l = right
CapsLock & i::Send "{Up}"           ; CapsLock + i = up
CapsLock & h::Send "{Backspace}"    ; CapsLock + h = backspace
CapsLock & u::Send "^{Left}"        ; CapsLock + u = move caret to the beginning of previous word
CapsLock & o::Send "^{Right}"       ; CapsLock + o = move caret to the beginning of next word
CapsLock & m::Send "{Home}"         ; CapsLock + m = move caret to the beginning of the line
CapsLock & .::Send "{End}"          ; CapsLock + . = move caret to the end of the line

; Same custom caret navigation keys but with text selection
#HotIf GetKeyState("Shift", "P")
    CapsLock & j::Send "+{Left}"    ; CapsLock + j = left
    CapsLock & k::Send "+{Down}"    ; CapsLock + k = down
    CapsLock & l::Send "+{Right}"   ; CapsLock + l = right
    CapsLock & i::Send "+{Up}"      ; CapsLock + i = up
    CapsLock & u::Send "^+{Left}"   ; CapsLock + u = move caret to the beginning of previous word
    CapsLock & o::Send "^+{Right}"  ; CapsLock + o = move caret to the beginning of next word
    CapsLock & m::Send "+{Home}"    ; CapsLock + m = move caret to the beginning of the line
    CapsLock & .::Send "+{End}"     ; CapsLock + . = move caret to the end of the line
#HotIf

; Custom screen scrolling
CapsLock & w::Send "{WheelUp}"      ; CapsLock + w = scroll up
CapsLock & s::Send "{WheelDown}"    ; CapsLock + s = scroll down
CapsLock & a::Send "{WheelLeft}"    ; CapsLock + a = scroll left
CapsLock & d::Send "{WheelRight}"   ; CapsLock + d = scroll right

; Mac-like shortcuts
; Alt becomes Cmd, Win becomes Option, Ctrl is Ctrl
!c::Send "^{vk43}"              ; Alt + C = copy
!v::Send "^{vk56}"              ; Alt + V = paste
!x::Send "^{vk58}"              ; Alt + X = cut
!s::Send "^{vk53}"              ; Alt + S = save
!a::Send "^{vk41}"              ; Alt + A = select all
!z::Send "^{vk5A}"              ; Alt + Z = undo
!+z::Send "^+{vk5A}"            ; Alt + Shift + Z = redo (in some apps)
!f::Send "^{vk46}"              ; Alt + F = search
!Left::Send "{Home}"            ; Alt + Left = move caret to the beginning of the line
!Right::Send "{End}"            ; Alt + Right = move caret to the end of the line
#Left::Send "^{Left}"           ; Win + Left = move caret to the beginning of previous word
#Right::Send "^{Right}"         ; Win + Right = move caret to the beginning of next word
#BackSpace::Send "^{BackSpace}"                             ; Win + Backspace = delete whole word
!BackSpace::Send "{Shift Down}{Home}{Shift Up}{BackSpace}"  ; Alt + Backspace = delete whole line


; Google Chrome
#HotIf WinActive("ahk_exe chrome.exe")
    !r::Send "^{vk52}"      ; Alt + R = refresh
    !w::Send "^{vk57}"      ; Alt + W = close current tab
    !t::Send "^{vk54}"      ; Alt + T = new tab
    !+t::Send "^+{vk54}"    ; Alt + Shift + T = reopen previous tab
#HotIf
