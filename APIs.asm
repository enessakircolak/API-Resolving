;/SAFESEH:NO

.386
.model flat

.DATA
donus    DD 55
cagri    DD 55

.code

MySegment segment read execute

_selamcanim proc

	;pop eax          ; buraya girince stack içine return değeri pushlanıyor ama stackle işimiz var 
	;mov donus,eax		; o yüzden geçici olarak ecx içine alıyorum en son tekrar pushluyorum

	push ebp          ;PROLOG !!!
	mov ebp,esp
MyFunc:
    	mov eax,[ebp+12]
	;add eax,124E4h    		; Kernel32.dll base adresindenden sonra bu değer eklenince CreateThread API elde ediliyor
	mov dword ptr [cagri],eax
	

	push 0
	push 0
	push 0
	push [ebp + 8]
	push 0
	push 0
	call cagri
	pop ebp
	ret

_selamcanim endp

MySegment ends

end



	;MyFunc:
	;ASSUME FS:NOTHING  ;bu alanla ilgili kernel32.dll e erişme konusunda ufak bi problem var kernelbase e erişiyor
	;mov	eax,[fs:30h]
	;ASSUME FS:ERROR
	;mov	eax,[eax+0Ch]    
	;mov	esi,[eax+1Ch]
   	;lodsd                	  ; 2. yüklenen dll adresini aldık 3.yü alarak deneyeceğiz
	;mov	ebx,[eax+08h]
