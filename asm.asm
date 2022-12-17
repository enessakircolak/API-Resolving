;/SAFESEH:NO

.386
.model flat

.DATA
donus    DD 55
cagri    DD 55

.code

MySegment segment read execute

_selamcanim proc
	

	push ebp
	mov ebp,esp

	;pop eax          ; buraya girince stack içine return deðeri pushlanýyor ama benim stackle iþim var 
	;mov donus,eax		; o yüzden geçici olarak ecx içine alýyorum en son tekrar pushluyorum

MyFunc:
    mov eax,[ebp+12]
	add eax,124E4h
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
	;ASSUME FS:NOTHING  ;bu alanla ilgili kernel32.dll e eriþme konusunda ufak bi problem var kernelbase e eriþiyor
	;mov	eax,[fs:30h]
	;ASSUME FS:ERROR
	;mov	eax,[eax+0Ch]   ; 0x ifadelerini kaldýrýnca geçiyor 
	;mov	esi,[eax+1Ch]
    ;lodsd                   ; 2. yüklenen dll adresini aldýk 3.yü alarak deneyeceðiz
	;mov	ebx,[eax+08h]
