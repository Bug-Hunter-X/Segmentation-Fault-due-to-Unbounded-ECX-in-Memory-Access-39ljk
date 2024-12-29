mov ecx, some_ecx_value ; Set the ecx value
mov ebx, some_ebx_value ; Set the ebx value
;check for ecx boundary
cmp ecx, 1000 ; check for upper bound
jg error_handler; jump to error handler if ecx is greater than 1000
mov eax, [ebx + ecx*4] ; Access memory only if address is within bounds
jmp end_of_program ; jump to end of program
error_handler:
; handle error here, example:
mov eax, -1
end_of_program: