.model small        ;label for temporary data storage and procedure calls
.stack 1000h        ;variable storage section
.data               

;0dh,0ah moves the cursor to the beginning of the next row of the screen. double byte is used
msg db "",0dh,0ah   
    db "",0dh,0ah
    db "",0dh,0ah
    db "     :<><><><<><><><><><><><><><><><><><>><><><><><><><>:",0dh,0ah
    db "     :                                                  :",0dh,0ah
    db "     :                 Grace Airlines                   :",0dh,0ah
    db "     :                                                  :",0dh,0ah
    db "     :             .......................              :",0dh,0ah
    db "     :                                                  :",0dh,0ah
    db "     :            Press Enter to Continue               :",0dh,0ah  
    db "     :                                                  :",0dh,0ah
    db "     :**************************************************:",0dh,0ah
    
msg00 db "   !! Thank You For trusting our airlines. Keep Smiling :-) ::$",0dh,0ah
msg1 db "please Enter Value: $",0dh,0ah



msg2 db "    Choose Your Destination From Islamabad  ",0dh,0ah
     db 0dh,0ah,"1. Karachi",0dh,0ah
     db 0dh,0ah,"2. Peshawar",0dh,0ah
     db 0dh,0ah,"3. Lahore",0dh,0ah
     db 0dh,0ah,"4. Multan",0dh,0ah
     db 0dh,0ah,"5. Quetta",0dh,0ah
     db 0dh,0ah,"6. Gujranwala",0dh,0ah
     db 0dh,0ah,"7. Sialkot",0dh,0ah
     db 0dh,0ah,"Press 'e' to Exit. $",0dh,0ah   

     
msg3 db "    For Karachi the following flights are available: ",0dh,0ah
     db "1. JP0912",0dh,0ah
     db "2. KL9817",0dh,0ah
     db "3. HY0918",0dh,0ah
     db "4. AF8298",0dh,0ah
     db "5. NJ7373",0dh,0ah
     db "Press 'e' to Exit. $",0dh,0ah

msg4 db "    For Peshawar the following flights are avilable: ",0dh,0ah
     db "1. MD8281",0dh,0ah
     db "2. KL9817",0dh,0ah
     db "3. KI7646",0dh,0ah
     db "4. AF82981",0dh,0ah
     db "5. NJ73731",0dh,0ah
     db "Press 'e' to Exit. $",0dh,0ah

msg5 db "    For Lahore the following flights are avilable: ",0dh,0ah
     db "1. HG5241",0dh,0ah
     db "2. KL98171",0dh,0ah
     db "3. KJ8721",0dh,0ah
     db "4. AF8298",0dh,0ah
     db "5. BG6543",0dh,0ah
     db "Press 'e' to Exit. $",0dh,0ah

msg6 db "    For Multan the following flights are avilable: ",0dh,0ah
     db "1. HG52412",0dh,0ah
     db "2. KL98112",0dh,0ah
     db "3. KJ87212",0dh,0ah
     db "4. AF82983",0dh,0ah
     db "5. BG6543",0dh,0ah
     db "Press 'e' to Exit. $",0dh,0ah

msg7 db "    For Quetta the following flights are avilable: ",0dh,0ah
     db "1. HG524129",0dh,0ah
     db "2. KL98179",0dh,0ah
     db "3. KJ87219",0dh,0ah
     db "4. AF82989",0dh,0ah
     db "5. BG65439",0dh,0ah
     db "Press 'e' to Exit. $",0dh,0ah

msg8 db "    For Gujranwala the following flights are available: ",0dh,0ah
     db "1. JP09127",0dh,0ah
     db "2. KL98177",0dh,0ah
     db "3. HY09187",0dh,0ah
     db "4. AF82987",0dh,0ah
     db "5. NJ73737",0dh,0ah
     db "Press 'e' to Exit. $",0dh,0ah 

msg9 db "    For Sialkot the following flights are available: ",0dh,0ah
     db "1. JP0912",0dh,0ah
     db "2. KL9817",0dh,0ah
     db "3. HY0918",0dh,0ah
     db "4. AF8298",0dh,0ah
     db "5. NJ7373",0dh,0ah
     db "Press 'e' to Exit. $",0dh,0ah 


msg10 db "    Ticket # 8712J & Fare(Karachi) : 7800 ",0dh,0ah
      db "For previous menu, press '0' ",0dh,0ah
      db "Press 'e' to Exit. $",0dh,0ah


msg11 db "    Ticket # 8292J & Fare(Peshawar) : 3800 ",0dh,0ah
      db "For previous menu, press '0' ",0dh,0ah
      db "Press 'e' to Exit. $",0dh,0ah


msg12 db "    Ticket # 8712J & Fare(Lahore) : 3000 ",0dh,0ah
      db "For previous menu, press '0' ",0dh,0ah
      db "Press 'e' to Exit. $",0dh,0ah
      
msg13 db "    Ticket # 8712J & Fare(Multan) : 3200 ",0dh,0ah
      db "For previous menu, press '0' ",0dh,0ah
      db "Press 'e' to Exit. $",0dh,0ah


msg14 db "    Ticket # 8712J & Fare(Quetta) : 4500 ",0dh,0ah
      db "For previous menu, press '0' ",0dh,0ah
      db "Press 'e' to Exit. $",0dh,0ah


msg15 db "    Ticket # 8712J & Fare(Gujranwala) : 2800 ",0dh,0ah
      db "For previous menu, press '0' ",0dh,0ah
      db "Press 'e' to Exit. $",0dh,0ah


msg16 db "    Ticket # 8712J & Fare(Sialkot) : 2500 ",0dh,0ah
      db "For previous menu, press '0' ",0dh,0ah
      db "Press 'e' to Exit. $",0dh,0ah


check  db "For previous menu press '0' ",0dh,0ah
       db "Press 'e' to Exit. $",0dh,0ah  



.code                ;start of assembly code
main proc
    mov ax,@data     ;initizalize DS
    mov ds,ax        ;set that memory location as the standard variable (DS)
                     
    jmp START        ;jump to START label
    
    START:            
    
    mov ax,003h      ;mov 003h into ax
    int 10h          ;interrupt call
    
    mov ah,9         ;load 9 into ah
    lea dx,msg       ;load and display string (msg in data section) 
    int 21h          ;print character function
    
    call NL          
    
    ENTER:           
    
    mov ah,1         ; load 1 into ah
    int 21h          ;print character function
    
    cmp al,0dh       ;compare al with 0dh 
    je DESTINATION   ;jump if equal to and goto destination
    jne START        ;jump if not equal to and goto Start
    
    DESTINATION:     
    
    mov ax,003h      ;mov 003h into ax
    int 10h          ;interrupt call
    
    mov ah,9         ;load 9 into ah
    lea dx,msg2       ;load and display string (msg2 in data section) 
    int 21h          ;print character function
    
    
    call NL
    call VALUE
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
  
    
    cmp al,'1'       ;compare al with 1
    je Karachi       ;jump if equal to Karachi
    
    cmp al,'2'       ;compare 2 with al
    je Peshawar      ;jump if equal to Peshawar
    
    cmp al,'3'       ;compare 3 with al
    je Lahore        ;jump if equal to Lahore
    
    cmp al,'4'       ;compare 4 with al
    je Multan        ;jump if equal, to Multan
    
    cmp al,'5'       ;compare 5 with al
    je Quetta        ;jump if equal, to Quetta
    
    cmp al,'6'       ;compare 6 with al
    je Gujranwala    ;jump if equal, to Gujranwala
    
    cmp al,'7'       ;compare 7 with al
    je Sialkot       ;jump if equal, to Sialkot
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    jmp DESTINATION  ;jump to Destination
    
    
 ;.............................................................
    Karachi:
    
    mov ax,003h      ;mov 003h into ax
    int 10h          ;interrupt
    
    mov ah,9         ;mov 9 into ah
    lea dx,msg3      ;load and display string
    int 21h          ;print character function
    call VALUE
    
    call NL
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
    cmp al,'1'       ;compare 1 with ah
    je JP0912        ;jump if eqqual, to JP0912
    
    cmp al,'2'       ;compare 2 with ah
    je KL9817        ;jump if equal to KL9817
    
    cmp al,'3'       ;compare 3 with al
    je HY0918        ;jump if equal, to HY0918
    
    cmp al,'4'       ;compare 4 with al
    je AF8298        ;jump if equal, to AF8298
    
    cmp al,'5'       ;compare 5 with al
    je NJ7373        ;jump if euqal, to NJ7373
    
    cmp al,'0'       ;compare 0 with al
    je DESTINATION   ;jump if euqal, to destinatin
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    
    
    JP0912:
    
    mov ax,003h      ;load 003h into ax
    int 10h          ;interrupt
    
    mov ah,9         ;load 9 into ah
    lea dx,msg10     ;load and display string
    int 21h
    
    call VALUE
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
    ;call NL
    
    cmp al,'0'       ;compare 0 with al
    je Karachi       ;jump if equal, to Karachi
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    
    KL9817:
    mov ax,003h      ;load 003h into ax
    int 10h          ;interrupt
    
    mov ah,9         ;load 9 into ah
    lea dx,msg10     ;load and display string
    int 21h
    
    call VALUE
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
    ;call NL
    
    cmp al,'0'       ;compare 0 with al
    je Karachi       ;jump if equal, to Karachi
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    
    HY0918:
    mov ax,003h      ;load 003h into ax
    int 10h          ;interrupt
    
    mov ah,9         ;load 9 into ah
    lea dx,msg10     ;load and display string
    int 21h
    
    call VALUE
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
    ;call NL
    
    cmp al,'0'       ;compare 0 with al
    je Karachi       ;jump if equal, to Karachi
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    
    AF8298:
    mov ax,003h      ;load 003h into ax
    int 10h          ;interrupt
    
    mov ah,9         ;load 9 into ah
    lea dx,msg10     ;load and display string
    int 21h
    
    call VALUE
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
    ;call NL
    
    cmp al,'0'       ;compare 0 with al
    je Karachi       ;jump if equal, to Karachi
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    
   
    NJ7373:
    mov ax,003h      ;load 003h into ax
    int 10h          ;interrupt
    
    mov ah,9         ;load 9 into ah
    lea dx,msg10     ;load and display string
    int 21h
    
    call VALUE
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
    ;call NL
    
    cmp al,'0'       ;compare 0 with al
    je Karachi       ;jump if equal, to Karachi
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    
;,.........................................................    
    Peshawar:
    
    mov ax,003h       ;load 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg4       ;load and display string
    int 21h           ;print character function
    call VALUE
    
    call NL
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    cmp al,'1'        ;compare 1 with al
    je MD8281         ;jump if equal, to MD8281
    
    cmp al,'2'        ;compare 2 with al
    je KL9811         ;jump if equal, to KL9811
    
    cmp al,'3'        ;compare 3 with al
    je KI7646         ;jump if equal, to KI7646
    
    cmp al,'4'        ;compare 4 with al
    je AF82981        ;jump if equal, to AF82981
    
    cmp al,'5'        ;compare 5 with al
    je NJ73731        ;jump if equal, to NJ73731
    
    cmp al,'0'        ;compare 0 with al
    je DESTINATION    ;jump if equal, to DESTINATION
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    
    MD8281:
    mov ax,003h      ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg11      ;load and display string (msg11)
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Peshawar       ;jump if equal, to Peshawar
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    KL9811:
    mov ax,003h      ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg11      ;load and display string (msg11)
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Peshawar       ;jump if equal, to Peshawar
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    KI7646:
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg11      ;load and display string (msg11)
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Peshawar       ;jump if equal, to Peshawar
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    AF82981:   
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg11      ;load and display string (msg11)
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Peshawar       ;jump if equal, to Peshawar
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    NJ73731:
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg11      ;load and display string (msg11)
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Peshawar       ;jump if equal, to Peshawar
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    
;.....................................................
    Lahore:
    
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;mov 9 into ah
    lea dx,msg5       ;load and display string msg5
    int 21h           ;print character function
    call VALUE
    
    call NL
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    cmp al,'1'        ;compare 1 with al
    je HG5241         ;jump if equal, to HG5241 
    
    cmp al,'2'        ;compare 2 with al
    je KL98171        ;;jump if equal, to KL98171
    
    cmp al,'3'        ;compare 3 with al
    je KJ8721         ;jump if equal, to KJ8721
    
    cmp al,'4'        ;compare 4 with al
    je AF82982        ;jump if equal, to AF82982
    
    cmp al,'5'        ;compare 5 with al
    je BG6543         ;jump if equal, to BG6543
    
    cmp al,'0'        ;compare 0 with al
    je DESTINATION    ;jump if equal, to DESTINATION
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    
    HG5241:          
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg12      ;load and display string msg12
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Lahore         ;jump if equal, to Lahore
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    KL98171:      
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg12      ;load and display string msg12
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Lahore         ;jump if equal, to Lahore
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    KJ8721:     
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg12      ;load and display string msg12
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Lahore         ;jump if equal, to Lahore
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    AF82982: 
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg12      ;load and display string msg12
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Lahore         ;jump if equal, to Lahore
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    
    BG6543:  
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg12      ;load and display string msg12
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;mov 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Lahore         ;jump if equal, to Lahore
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT      
;..............................................................   
    Multan:
    
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg6       ;load and display string
    int 21h           ;print character function
    call VALUE
    
    call NL
    
    mov ah,1          ;move 1 into ah
    int 21h           ;print character function
    
    cmp al,'1'        ;compare 1 with ah
    je HG52412        ;jump  if equal, to HG2412
    
    cmp al,'2'        ;compare 2 with ah
    je KL98172        ;jump  if equal, to KL 98172
    
    cmp al,'3'        ;compare 3 with ah
    je KJ87212        ;jump  if equal, to KJ87212
    
    cmp al,'4'        ;compare 4 with ah
    je AF82983        ;jump  if equal, to AF82983
    
    cmp al,'5'        ;compare 5 with ah
    je BG65433        ;jump  if equal, to BG65433
    
    cmp al,'0'        ;compare 0 with ah
    je DESTINATION    ;jump  if equal, to DESTINATION
    
    cmp al,'e'        ;compare e with ah
    je EXIT           ;jump  if equal, to EXIT
    
    
    HG52412:     
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg13      ;load and display string msg13
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Multan         ;jump if equal, to Multan
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    KL98172:      
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg13      ;load and display string msg13
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Multan         ;jump if equal, to Multan
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    KJ87212:         
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg13      ;load and display string msg13
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Multan         ;jump if equal, to Multan
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    AF82983:         
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg13      ;load and display string msg13
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Multan         ;jump if equal, to Multan
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    
    BG65433:         
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg13      ;load and display string msg13
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Multan         ;jump if equal, to Multan
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to EXIT
    
    
    
    
;''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''    
    Quetta:
    
    mov ax,003h
    int 10h
    
    mov ah,9
    lea dx,msg7
    int 21h
    call VALUE
    
    call NL
    
    mov ah,1
    int 21h
    
    cmp al,'1'
    je HG52419
    
    cmp al,'2'
    je KL98179
    
    cmp al,'3'
    je KJ87219
    
    cmp al,'4'
    je AF82989
    
    cmp al,'5'
    je BG65439
    
    cmp al,'0'
    je DESTINATION
    
    cmp al,'e'
    je EXIT
    
    
    HG52419:  
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg14      ;load and display string msg14
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Quetta         ;jump if equal, to Quetta
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    KL98179:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg14      ;load and display string msg14
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Quetta         ;jump if equal, to Quetta
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    KJ87219:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg14      ;load and display string msg14
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Quetta         ;jump if equal, to Quetta
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    AF82989:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg14      ;load and display string msg14
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Quetta         ;jump if equal, to Quetta
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    
    BG65439:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg14      ;load and display string msg14
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Quetta         ;jump if equal, to Quetta
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    Gujranwala:
    
    mov ax,003h       ;move 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg8       ;lead and display string msg 8
    int 21h           ;print character function
    call VALUE
    
    call NL
    
    mov ah,1          ;move 1 into ah
    int 21h           ;print character function
    
    cmp al,'1'        ;compare 1 into al 
    je JP09127        ;jump if equal, to JP09127
    
    cmp al,'2'        ;compare 2 into al
    je KL98177        ;jump if equal, to KL98177
    
    cmp al,'3'        ;compare 3 into al
    je HY09187        ;jump if equal, to HY09187
    
    cmp al,'4'        ;compare 4 into al
    je AF82987        ;jump if equal, to AF82987
    
    cmp al,'5'        ;compare 5 into al
    je NJ73737        ;jump if equal, to NJ73737
    
    cmp al,'0'        ;compare 0 into al
    je DESTINATION    ;jump if equal, to DESTINATION
    
    cmp al,'e'        ;compare e into al
    je EXIT           ;jump if equal, to EXIT
    
    
    JP09127:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg15      ;load and display string msg15
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Gujranwala         ;jump if equal, to Gujranwala
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    KL98177:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg15      ;load and display string msg15
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Gujranwala         ;jump if equal, to Gujranwala
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    HY09187:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg15      ;load and display string msg15
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Gujranwala         ;jump if equal, to Gujranwala
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    AF82987:                          
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg15      ;load and display string msg15
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Gujranwala         ;jump if equal, to Gujranwala
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    
    NJ73737:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg15      ;load and display string msg15
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Gujranwala         ;jump if equal, to Gujranwala
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
;..................................................    
    Sialkot:
    
    mov ax,003h      ;move 003h into ax
    int 10h          ;interrupt
    
    mov ah,9         ;load 9 into ah
    lea dx,msg9      ;load and display string msg9
    int 21h          ;print character function
    call VALUE
    
    call NL
    
    mov ah,1         ;load 1 into ah
    int 21h          ;print character function
    
    cmp al,'1'       ;compare 1 with al
    je JP09125       ;jump if equal, to JP09125
    
    cmp al,'2'       ;compare 2 with al
    je KL98175       ;jump if equal, to KL98175
    
    cmp al,'3'       ;compare 3 with al
    je HY09185       ;jump if equal, to HY01985
    
    cmp al,'4'       ;compare 4 with al
    je AF82985       ;jump if equal, to AF82985
    
    cmp al,'5'       ;compare 5 with al
    je NJ73735       ;jump if equal, to NJ73735
    
    cmp al,'0'       ;compare 0 with al
    je DESTINATION   ;jump if equal, to DESTINATION
    
    cmp al,'e'       ;compare e with al
    je EXIT          ;jump if equal, to EXIT
    
    
    JP09125:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg16      ;load and display string msg16
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je  Sialkot         ;jump if equal, to  Sialkot
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    KL98175:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg16      ;load and display string msg16
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je  Sialkot         ;jump if equal, to  Sialkot
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    HY09185:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg16      ;load and display string msg16
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je  Sialkot         ;jump if equal, to  Sialkot
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    AF82985:                           
    mov ax,003h       ;mov 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 to ah
    lea dx,msg16      ;load and display string msg16
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je  Sialkot         ;jump if equal, to  Sialkot
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
    
    
    NJ73735:                           
    mov ah,9          ;load 9 to ah
    lea dx,msg16      ;load and display string msg16
    int 21h           ;print character function
    
    call VALUE
    
    mov ah,1          ;load 1 into ah
    int 21h           ;print character function
    
    
    
    cmp al,'0'        ;compare 0 with al
    je Sialkot         ;jump if equal, to  Sialkot
    
    cmp al,'e'        ;compare e with al
    je EXIT           ;jump if equal, to  EXIT
 
 
;...................................................

   
    NL:
    mov ah,2          ;load 2 into ah
    mov dl,0dh        ;move 0dh into dl (0dh=13in decimal and \r in ASCII so it shift cursor to start )
    int 21h           ;print character function
    mov dl,0ah        ;move 0ah into dl (0ah=10 in decimal and \n in ASCII so cursor shifts to next line)
    int 21h           ;print character function
    RET               ;return 
    
    VALUE:
    
    mov ah,9          ;load 9 into ah
    lea dx,msg1       ;load and display string msg1
    int 21h           ;print character function
    RET               ;Return
    
    EXIT:
    mov ax,003h       ;move 003h into ax
    int 10h           ;interrupt
    
    mov ah,9          ;load 9 into ah
    lea dx,msg00      ;load and display string msg00
    int 21h           ;print character function
    
    mov ah,4ch        ;load 4ch into ah
    int 21h           ;print character function
    
    main endp         ;end main procedure
end main 