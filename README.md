# shortcuts
Custom hotkeys for caret manipulation and scrolling. Also emulates some of macOS shortcuts on Windows. Inspired by [http://tonsky.me/blog/cursor-keys/](http://tonsky.me/blog/cursor-keys/)

## Caret manipulation
- `CapsLock` + `J` = left arrow
- `CapsLock` + `K` = down arrow
- `CapsLock` + `L` = right arrow
- `CapsLock` + `I` = up arrow
- `CapsLock` + `H` = backspace
- `CapsLock` + `U` = move caret to the beginning of the word
- `CapsLock` + `O` = move caret to the end of the word
- `CapsLock` + `M` = move caret to the beginning of the line
- `CapsLock` + `.` = move caret to the end of the line

## Scrolling
- `CapsLock` + `W` = scroll up
- `CapsLock` + `S` = scroll down
- `CapsLock` + `A` = scroll left
- `CapsLock` + `D` = scroll right

## macOS-like shortcuts for Windows
The goal is to reuse "muscle memory" when using Windows. `Alt` becomes `Cmd`, `Win` becomes `Option`, `Ctrl` is `Ctrl`
- `Alt` + `C` = copy
- `Alt` + `V` = paste
- `Alt` + `X` = cut
- `Alt` + `S` = save
- `Alt` + `A` = select all
- `Alt` + `Z` = undo
- `Alt` + `Shift` + `Z` = redo (in some apps)
- `Alt` + `F` = search
- `Win` + `Backspace` = delete whole word
- `Alt` + `Backspace` = delete whole line
- `Ctrl` + `Space` = change keyboard layout

### Google Chrome
- `Alt` + `R` = refresh
- `Alt` + `W` = close current tab
- `Alt` + `T` = new tab
- `Alt` + `Shift` + `T` = reopen previous tab


## Install on Windows
1. Download and install [AutoHotKey runtime](https://autohotkey.com/)
2. Copy `shortcuts.ahk` script into `Startup` folder
    - Press `Win + R` to open Run dialog
    - Type `shell:startup` to open `Startup` folder
    - Copy or make shortcut of the file `shortcuts.ahk` and put it there
3. Now script will automatically start on system startup.

## Install on macOS
1. Download and install [Karabiner-Elements](https://karabiner-elements.pqrs.org/)
2. Copy `shortcuts.json` to `~/.config/karabiner/assets/complex_modifications` directory
3. Open Karabiner -> `Complex modifications` -> `Add rule` -> `Enable all` under `Shortcuts` group or enable individual rules from `Shortcuts` lists
4. For external keyboards it might be necessary to open Karabiner -> `Devices` -> and then enable `Manipulate caps lock LED` for the external keyboard.
