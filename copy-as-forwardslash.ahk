#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Replace copied backslashes as fowardslashes ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^/:: ; Ctrl+/ (control + fowardslash)

;Empty the Clipboard.
    Clipboard =
;Copy the selected text to the Clipboard.
    SendInput, ^c
;Wait for the Clipboard to fill.
    ClipWait
;Perform the RegEx find and replace operation,
;where the needle is what we want to replace.
;Replace backslashes with forwardslashes
    haystack := Clipboard
    needle := "\\"
    replacement := "/"
    result := RegExReplace(haystack, needle, replacement)
;Empty the Clipboard
    Clipboard =
;Copy the result to the Clipboard.
    Clipboard := result
;Wait for the Clipboard to fill.
    ClipWait

;-- Optional: --
;Send (paste) the contents of the new Clipboard immediately after copying
    ;SendInput, %Clipboard%

;Done!
    return

; Replace copied backslashes as forwardslashes AND replace copied spaces with
; escaped spaces ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
^Space:: ; Ctrl+spacebar

;Empty the Clipboard.
    Clipboard =
;Copy the select text to the Clipboard.
    SendInput, ^c
;Wait for the Clipboard to fill.
    ClipWait
;Perform the RegEx find and replace operation,
;where the needle is what we want to replace.
;first replace backslashes with forwardslashes
    haystack := Clipboard
    needle := "\\"
    replacement := "/"
    result := RegExReplace(haystack, needle, replacement)
;then replace spaces with escaped spaces
	needle := " "
	replacement := "\ "
	result := RegExReplace(result, needle, replacement )
;Empty the Clipboard
    Clipboard =
;Copy the result to the Clipboard.
    Clipboard := result
;Wait for the Clipboard to fill.
    ClipWait

;-- Optional: --
;Send (paste) the contents of the new Clipboard immediately after copying
    ;SendInput, %Clipboard%

;Done!
    return
