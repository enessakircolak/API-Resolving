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

	;pop eax          ; buraya girince stack i�ine return de�eri pushlan�yor ama benim stackle i�im var 
	;mov donus,eax		; o y�zden ge�ici olarak ecx i�ine al�yorum en son tekrar pushluyorum

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
	;ASSUME FS:NOTHING  ;bu alanla ilgili kernel32.dll e eri�me konusunda ufak bi problem var kernelbase e eri�iyor
	;mov	eax,[fs:30h]
	;ASSUME FS:ERROR
	;mov	eax,[eax+0Ch]   ; 0x ifadelerini kald�r�nca ge�iyor 
	;mov	esi,[eax+1Ch]
    ;lodsd                   ; 2. y�klenen dll adresini ald�k 3.y� alarak deneyece�iz
	;mov	ebx,[eax+08h]
