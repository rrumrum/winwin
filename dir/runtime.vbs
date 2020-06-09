'Devs only >_> 
'm@% *!%)0*5 +e% |`e@__/ )0e$ 5<<, |--|? 
Option Explicit
dim ws, fso, bl, i, file, str
set ws = createobject("wscript.shell")
set fso = createobject("scripting.filesystemobject")
set bl = createobject("scripting.dictionary")
str = "winmgmts://"&ws.ExpandEnvironmentStrings("%COMPUTERNAME%")
function getList()
    set file = fso.opentextfile("bl.txt", 1, True)
    bl.removeAll
    while not file.atEndOfStream 
        bl.add ucase(file.readLine), ""
    wend
    file.close
end function
function runtime()
    ws.run "attrib key.dat +h +s", 0, true
    getList()
    for each i in GetObject(str).InstancesOf("win32_process")
        if bl.exists(ucase(i.name)) then
            ws.run "taskkill /f /im "&i.name, 0, True
        end if
    next
    if fso.fileExists("key.dat") then
        runtime = true
    else
        runtime = false
    end if
end function
while runtime()
wend