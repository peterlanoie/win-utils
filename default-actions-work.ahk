#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::o::
Send, Octopus
SendRaw %A_EndChar%
Return

::od::
Send, Octopus Deploy
SendRaw %A_EndChar%
Return

::oc::Octopus Cloud

^!+z Up::
;currentClipBoard := ClipboardAll  ; save clipboard contents
Send, ^c
ClipWait,1
;MsgBox, , , %Clipboard%,
url := "https://octopus.zendesk.com/agent/tickets/" . Clipboard
;MsgBox, , , %url%,
Run, %url%
;ClipBoard := currentClipBoard     ; return original Clipboard contents
;clipboard := "" ; Empty the clipboard
return

^!+q Up::
Send, ^c
ClipWait,1
url := "https://octofront.com/orders/Order/" . Clipboard
Run, %url%
clipboard := "" ; Empty the clipboard
return

:*:oemail::peter.lanoie@octopus.com

:*:pemail::planoie@gmail.com

:*:aemail::advice@octopus.com

:*:semail::sales@octopus.com

::lgtm::Looks good to me

::btw::by the way

::mz::https://octopus.zoom.us/j/4897547903

::zd::Zendesk

::fup::follow-up

::td::tl;dr