;Kindle Unzip Book's then convert to mobi
;Couldnt get AHK to open up the bat file so I'm leaving it to streamdeck to do it on a 10sec delay.
; Put your kindlegen file and bat file in the folder with the .epub's and then you just run the bat.

#SingleInstance, [force]
ZipPass001(){
    SendInput,ZIPPASSWORDHERE
    Send, {enter}
}
; ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ If no password just put ; in front of both lines of code.




+^!q:: ; Unzip Automated Kindle   -------> MULTIPLE
    MouseClick, right, xpos, ypos
    sleep,100
    Send, {Down 3} {Right 1} {Down 1} {enter}
    IfWinExist ahk_class 7zFM.exe
	winactivate ahk_class 7zFM.exe
    sleep, 1000
    ZipPass001()
    ExitApp 
    return



+^!w:: ; Unzip Automated Kindle   -------> SINGLE 

    MouseClick, right, xpos, ypos
    Send, {Down 3} {Right 1} {Down 3} {enter}
    IfWinExist ahk_class 7zFM.exe
	winactivate ahk_class 7zFM.exe
    sleep, 1009
    ZipPass001() ; kept this since same pass
    ExitApp 
    return




;Sleep(){ ; How Long To Wait ---- left this here in case i want to use it in the future

    ;    sleep, 8000
    ;}


;



