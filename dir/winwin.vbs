'Devs only >_> 
'/ )0%+ <%0* *-|@+  `/`e me5$!%9 *!+|-
Option Explicit
dim ws, fso, inp, ver
set ws = createobject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
ver = "1.0"
function runtime()
    inp = ucase(inputBox("Winwin "&ver&"  -  Control Panel"&vblf&vblf&"Use ?  for available commands"&vblf&vblf&"","Winwin "&ver))
    if inp = "" then
        runtime = false
    else 
        runtime = true
        if inp = "?" then
            shHelp()
        elseif inp = "BL" then
            ws.run "bl.txt"
        elseif inp = "MANUAL" then
            ws.run "manual.txt"
        elseif inp = "UNINST" then
            uninst()
            runtime = false
        elseif inp = "P" then
            pause()
        elseif inp = "R" then
            run()
        else
            shSE()
        end if
    end if
end function
function uninst()
    inp = msgBox("Are you sure you want to uninstall winwin?",vbExclamation+vbYesNoCancel,"Winwin "&ver)
    if inp = vbYes then
        ws.run "uninst.bat"
    end if
end function
function shHelp()
    msgBox "? - Display help window"&vblf&vblf&"bl - Edit task blacklist"&vblf&vblf&"manual - Open user guide"&vblf&vblf&"p - Turn off winwin"&vblf&vblf&"r - Turn on winwin"&vblf&vblf&"uninst - Uninstall winwin",vbQuestion,"Winwin "&ver
end function
function pause()
    if fso.fileexists("key.dat") then
        fso.deleteFile "key.dat"
    end if
    msgBox "Winwin disabled.",vbInformation,"Winwin "&ver
end function
function run()
    fso.openTextFile "key.dat",1,True
    wscript.sleep 100
    ws.run "runtime.vbs"
    msgBox "Winwin enabled.",vbInformation,"Winwin "&ver
end function
function shSE()
    msgBox "Command not recognized. Please try again.",vbExclamation,"Winwin "&ver
end function
while runtime
wend