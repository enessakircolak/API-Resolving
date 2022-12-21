.code
MySegment segment read execute

selamcanim proc

_start:

    mov rax, gs:[60h]
    mov rax, [rax+18h]
    mov rax, [rax+20h]
    mov rax, [rax]
    mov rax, [rax]
    mov r12, [rax+20h]
    add r12, 15760h

    ;    sub rsp,38
    ;    xor eax,eax
    ;    lea R8,rcx
    ;    mov qword ptr ss:[rsp+28],eax
    ;    xor r9d,r9d
    ;    xor edx,edx
    ;    mow dword ptr ss:[rsp+20],eax
    ;    xor ecx,ecx
    ;	call r12

	;push 0
	;push 0
	;push 0
	;push rcx
	;push 0
	;push 0
	;call r12
    ;add rsp,30h

    ret
selamcanim endp

MySegment ends
end



