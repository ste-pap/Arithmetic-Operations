title First Program
include Irvine32.inc

p equ 8d              ; Define constant p as 8

.data
w sdword ?            ; Define variable w as a signed doubleword (initialized to 0)
x sdword 16d          ; Initialize x to 16
y sdword 154d         ; Initialize y to 154
z sdword -17d         ; Initialize z to -17

.code
main PROC

mov eax,x             ; Move value of x (16) into eax
add eax,y             ; Add y (154) to eax (eax = 16 + 154 = 170)

mov ebx,50d           ; Move immediate value 50 into ebx
add ebx,x             ; Add x (16) to ebx (ebx = 50 + 16 = 66)
add ebx,y             ; Add y (154) to ebx (ebx = 66 + 154 = 220)
add ebx,z             ; Add z (-17) to ebx (ebx = 220 - 17 = 203)
sub ebx,p             ; Subtract p (8) from ebx (ebx = 203 - 8 = 195)

sub eax,ebx           ; Subtract ebx (195) from eax (170) and store result in eax (eax = 170 - 195 = -25)
mov w,eax             ; Move eax (result of the subtraction) into w
mov eax,w             ; Move w (which now holds eax's original value) back into eax (not affecting anything)

call WriteInt         ; Call Irvine32 procedure to write the integer value in eax
call Crlf             ; Call Irvine32 procedure to output a newline

exit
main ENDP
end main