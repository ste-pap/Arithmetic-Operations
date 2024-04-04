title First Program
include Irvine32.inc

p equ 8d

.data
w sdword ?
x sdword 16d
y sdword 154d
z sdword -17d

.code
main PROC

mov eax,x
add eax,y

mov ebx,50d
add ebx,x
add ebx,y
add ebx,z
sub ebx,p

sub eax,ebx
mov w,eax
mov eax,w ; ???

call WriteInt
call Crlf

exit
main ENDP
end main 