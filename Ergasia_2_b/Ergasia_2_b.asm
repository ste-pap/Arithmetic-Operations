title Second Program
include Irvine32.inc


p equ 8d    ; Define constant p as 8

.data
w sdword ?   ; Define variable w as a signed doubleword (initialized to 0)
x sdword 16d  ; Initialize x to 16
y sdword 154d ; Initialize y to 154
z sdword -17d ; Initialize z to -17

.code
main PROC

mov eax,x     ; Move value of x into eax
add eax,y     ; Add y to eax (eax = x + y)

mov ebx,50d   ; Move immediate value 50 into ebx
add ebx,eax   ; Add eax to ebx (ebx = 50 + x + y)
add ebx,z     ; Add z to ebx (ebx = 50 + x + y + z)
sub ebx,p     ; Subtract p from ebx (ebx = 50 + x + y + z - p)

sub eax,ebx   ; Subtract ebx from eax and store result in eax (eax = (x + y) - (50 + x + y + z - p))
mov w,eax     ; Move eax (result of the subtraction) into w
mov eax,w     ; Move w (which now holds eax's original value) back into eax (not affecting anything)

call WriteInt  ; Call Irvine32 procedure to write the integer value in eax
call Crlf      ; Call Irvine32 procedure to output a newline

exit           ; Exit the program

main ENDP
end main