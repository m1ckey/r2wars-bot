entry:
  mov esp, 0x3a0
  mov ecx, 0x400      ; upper bound
                      ; kamikaze opcode:
  mov edi, 0x0f00fc83 ; 0x83fc000f
  mov esi, 0x6060e144 ; 0x44e16060 
  mov ebp, 0xe4ff6060 ; 0x6060ffe4
  mov ebx, 0xffffffff ; illegal instructions to kill opponent
  mov edx, ebx
  mov eax, ebx
  pushad
  jmp esp

kamikaze:
  cmp esp, 0x0
  cmovz esp, ecx
  pushad
  pushad
  pushad
  pushad
  jmp esp
