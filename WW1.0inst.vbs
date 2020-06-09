'Devs only >_>
'+e`|`/ @.|). m@)e +-|e 3e%+ 05, (-|@%6e m/ m!%) 
option explicit
dim fso, file, dir, ver, code, ws, username
ver = "1.0"
set fso = createobject("scripting.filesystemobject")
set ws = createobject("wscript.shell")
username = createobject("wscript.network").username
dir = inputBox("Install directory?","Winwin "&ver,"C:\ProgramData\winwin")
msgBox "Press OK to install.",vbInformation,"Winwin "&ver
if mid(dir,len(dir)-1,1) = "\" then
    dir = mid(dir,1,len(dir)-1)
end if
if not fso.folderexists(dir) then
    fso.createfolder dir
end if
set file = fso.opentextfile(dir&"\winwin.vbs",2,true)
code = "'Devs only >_> "
code = code&vbcrlf&"'/ )0%+ <%0* *-|@+  `/`e me5$!%9 *!+|-"
code = code&vbcrlf&"Option Explicit"
code = code&vbcrlf&"dim ws, fso, inp, ver"
code = code&vbcrlf&"set ws = createobject(""wscript.shell"")"
code = code&vbcrlf&"set fso = createobject(""scripting.filesystemobject"")"
code = code&vbcrlf&"ver = """&ver&""""
code = code&vbcrlf&"function runtime()"
code = code&vbcrlf&"    inp = ucase(inputBox(""Winwin ""&ver&""  -  Control Panel""&vblf&vblf&""Use ?  for available commands""&vblf&vblf&"""",""Winwin ""&ver))"
code = code&vbcrlf&"    if inp = """" then"
code = code&vbcrlf&"        runtime = false"
code = code&vbcrlf&"    else "
code = code&vbcrlf&"        runtime = true"
code = code&vbcrlf&"        if inp = ""?"" then"
code = code&vbcrlf&"            shHelp()"
code = code&vbcrlf&"        elseif inp = ""BL"" then"
code = code&vbcrlf&"            ws.run ""bl.txt"""
code = code&vbcrlf&"        elseif inp = ""MANUAL"" then"
code = code&vbcrlf&"            ws.run ""manual.txt"""
code = code&vbcrlf&"        elseif inp = ""UNINST"" then"
code = code&vbcrlf&"            uninst()"
code = code&vbcrlf&"            runtime = false"
code = code&vbcrlf&"        elseif inp = ""P"" then"
code = code&vbcrlf&"            pause()"
code = code&vbcrlf&"        elseif inp = ""R"" then"
code = code&vbcrlf&"            run()"
code = code&vbcrlf&"        else"
code = code&vbcrlf&"            shSE()"
code = code&vbcrlf&"        end if"
code = code&vbcrlf&"    end if"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"function uninst()"
code = code&vbcrlf&"    inp = msgBox(""Are you sure you want to uninstall winwin?"",vbExclamation+vbYesNoCancel,""Winwin ""&ver)"
code = code&vbcrlf&"    if inp = vbYes then"
code = code&vbcrlf&"        ws.run ""uninst.bat"""
code = code&vbcrlf&"    end if"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"function shHelp()"
code = code&vbcrlf&"    msgBox ""? - Display help window""&vblf&vblf&""bl - Edit task blacklist""&vblf&vblf&""manual - Open user guide""&vblf&vblf&""p - Turn off winwin""&vblf&vblf&""r - Turn on winwin""&vblf&vblf&""uninst - Uninstall winwin"",vbQuestion,""Winwin ""&ver"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"function pause()"
code = code&vbcrlf&"    if fso.fileexists(""key.dat"") then"
code = code&vbcrlf&"        fso.deleteFile ""key.dat"""
code = code&vbcrlf&"    end if"
code = code&vbcrlf&"    msgBox ""Winwin disabled."",vbInformation,""Winwin ""&ver"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"function run()"
code = code&vbcrlf&"    fso.openTextFile ""key.dat"",1,True"
code = code&vbcrlf&"    wscript.sleep 100"
code = code&vbcrlf&"    ws.run ""runtime.vbs"""
code = code&vbcrlf&"    msgBox ""Winwin enabled."",vbInformation,""Winwin ""&ver"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"function shSE()"
code = code&vbcrlf&"    msgBox ""Command not recognized. Please try again."",vbExclamation,""Winwin ""&ver"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"while runtime"
code = code&vbcrlf&"wend"
file.write code
file.close
set file = fso.opentextfile(dir&"\runtime.vbs",2,true)
code = "'Devs only >_> "
code = code&vbcrlf&"'m@% *!%)0*5 +e% |`e@__/ )0e$ 5<<, |--|? "
code = code&vbcrlf&"Option Explicit"
code = code&vbcrlf&"dim ws, fso, bl, i, file, str"
code = code&vbcrlf&"set ws = createobject(""wscript.shell"")"
code = code&vbcrlf&"set fso = createobject(""scripting.filesystemobject"")"
code = code&vbcrlf&"set bl = createobject(""scripting.dictionary"")"
code = code&vbcrlf&"str = ""winmgmts://""&ws.ExpandEnvironmentStrings(""%COMPUTERNAME%"")"
code = code&vbcrlf&"function getList()"
code = code&vbcrlf&"    set file = fso.opentextfile(""bl.txt"", 1, True)"
code = code&vbcrlf&"    bl.removeAll"
code = code&vbcrlf&"    while not file.atEndOfStream "
code = code&vbcrlf&"        bl.add ucase(file.readLine), """""
code = code&vbcrlf&"    wend"
code = code&vbcrlf&"    file.close"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"function runtime()"
code = code&vbcrlf&"    ws.run ""attrib key.dat +h +s"", 0, true"
code = code&vbcrlf&"    getList()"
code = code&vbcrlf&"    for each i in GetObject(str).InstancesOf(""win32_process"")"
code = code&vbcrlf&"        if bl.exists(ucase(i.name)) then"
code = code&vbcrlf&"            ws.run ""taskkill /f /im ""&i.name, 0, True"
code = code&vbcrlf&"        end if"
code = code&vbcrlf&"    next"
code = code&vbcrlf&"    if fso.fileExists(""key.dat"") then"
code = code&vbcrlf&"        runtime = true"
code = code&vbcrlf&"    else"
code = code&vbcrlf&"        runtime = false"
code = code&vbcrlf&"    end if"
code = code&vbcrlf&"end function"
code = code&vbcrlf&"while runtime()"
code = code&vbcrlf&"wend"
file.write code
file.close
set file = fso.opentextfile(dir&"\uninst.bat",2,true)
code = "@echo off"
code = code&vbcrlf&"echo You are about to uninstall winwin."
code = code&vbcrlf&"pause"
code = code&vbcrlf&"del /s /q ""%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\winwin.lnk"""
code = code&vbcrlf&"del /s /q %appdata%\..\..\Desktop\winwin.lnk"
code = code&vbcrlf&"attrib manual.txt -r"
code = code&vbcrlf&"rmdir /s /q ..\winwin"
file.write code
file.close
set file = fso.opentextfile(dir&"\manual.txt",2,true)
code = "To add items to the live blacklist, type process names"
code = code&vbcrlf&"into bl.txt, one item per line."
code = code&vbcrlf&""
code = code&vbcrlf&"Ex:"
code = code&vbcrlf&""
code = code&vbcrlf&"mspaint.exe"
code = code&vbcrlf&"iexplore.exe"
code = code&vbcrlf&"ribbons.scr"
code = code&vbcrlf&""
code = code&vbcrlf&"Typing this into bl.txt would ensure that paint, internet explorer, and ribbons"
code = code&vbcrlf&"(the ugliest screensaver) can never run on your system."
code = code&vbcrlf&""
code = code&vbcrlf&"Use winwin.vbs to start and stop the live blacklist."
code = code&vbcrlf&""
code = code&vbcrlf&"If winwin is active when your sytem shuts off, it will come on"
code = code&vbcrlf&"automatically when the system starts up again."
code = code&vbcrlf&""
code = code&vbcrlf&"Note that winwin is not turned on by default."
code = code&vbcrlf&"To start it, open winwin.vbs and type 'r'."
file.write code
file.close
set file = fso.opentextfile(dir&"\bl.txt",2,true)
file.close
ws.run "attrib "&dir&"\manual.txt +r", 0, true
set file = ws.createshortcut("C:\Users\"&username&"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\winwin.lnk")
file.targetpath = dir&"\runtime.vbs"
file.workingdirectory = dir
file.save
set file = ws.createshortcut("C:\Users\"&username&"\Desktop\winwin.lnk")
file.targetpath = dir&"\winwin.vbs"
file.workingdirectory = dir
file.save
msgBox "Winwin installed successfully.",vbInformation,"Winwin "&ver