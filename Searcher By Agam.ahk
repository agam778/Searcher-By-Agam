#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
TrayTip, Welcome, Welcome to Agam's Searcher. Just type what you want to search and press a Search Engine below.
SetTimer, HideTrayTip, -10000
HideTrayTip() {
    TrayTip  ; Attempt to hide it the normal way.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; It may be necessary to adjust this sleep.
        Menu Tray, Icon
    }
}
Gui, Font, s19
Gui, Add, Text, center w950 , What do you want to search for?
Gui, Add, Edit, w950 vsearchtext,
Gui, Font, s15
Gui, Add, Text, center w950 , Click a search engine below to search in it.
Gui, Add, button, x40 y150 w120 h30, Google
Gui, Add, button, x+66 y150 w120 h30, Bing
Gui, Add, button, x+75 y150 w150 h30, DuckDuckGo
Gui, Add, button, x+56 y150 w180 h30, Merriam-Webster
Gui, Add, button, x+50 y150 w100 h30, Wikipedia
Gui, Add, Text, center w850, More Options
Gui, Add, button, x445 y230 w100 h30, Exit
Gui, Show, Center w1000 h300, Seacher By Agam
return


buttonGoogle:
GUI, Submit
Run, https://www.google.com/search?q=%searchtext%
ExitApp

buttonBing:
GUI, Submit
Run, https://www.bing.com/search?q=%searchtext%
ExitApp

buttonMerriam-Webster:
GUI, Submit
Run, https://www.merriam-webster.com/dictionary/%searchtext%
ExitApp

buttonDuckDuckGo:
GUI, Submit
Run, https://duckduckgo.com/?q=%searchtext%
ExitApp

buttonWikipedia:
GUI, Submit
Run, https://en.wikipedia.org/w/index.php?search=%searchtext%
ExitApp

buttonExit:
MsgBox, 0,Searcher By Agam,Bye👋👋, 3
GuiClose:
ExitApp