;; Helpful scripts for writing fancy-looking latin. :)

;; Default values
EnableAE    := 1
EnableOE    := 0
EnableLongS := 1

Gui, +ToolWindow +AlwaysOnTop -Resize -MaximizeBox -MinimizeBox
Gui, Font, s10 q5
Gui, Add, Checkbox, gSave vEnableAE   , Enable ae → æ
Gui, Add, Checkbox, gSave vEnableOE   , Enable oe → œ
Gui, Add, Checkbox, gSave vEnableLongS, Enable alt+s → ſ
Gui, Add, Button  , gDone wp, Done

GuiControl,, EnableAE   , %EnableAE%
GuiControl,, EnableOE   , %EnableOE%
GuiControl,, EnableLongS, %EnableLongS%

Done:
Gui, Submit

Save:
Gui, Submit, NoHide

;; Show the GUI
!z::
Gui, Show
return

#If EnableAE
    :*?c:Ae::Æ
    :*?c:ae::æ

#If EnableOE
    :*?c:Oe::Œ
    :*?c:oe::œ

#If EnableLongS
    !s::
    Send, ſ
    return

#If

;; Aa
!a::
Send, ā
return
!+a::
Send, Ā
return

;; Ee
!e::
Send, ē
return
!+e::
Send, Ē
return

;; Ii
!i::
Send, ī
return
!+i::
Send, Ī
return

;; Oo
!o::
Send, ō
return
!+o::
Send, Ō
return

;; Uu
!u::
Send, ū
return
!+u::
Send, Ū
return

;; Yy
!y::
Send, ȳ
return
!+y::
Send, Ȳ
return