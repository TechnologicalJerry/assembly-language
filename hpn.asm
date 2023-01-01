mov  si, Xmas
  cmp  dx, 0C19h  ; 25 dec
  je   GoPrint
  mov  si, NewY
  cmp  dx, 0101h  ; 01 jan
  je   GoPrint

  ...

GoPrint:
  mov  dx, si
  mov  ah, 09h   ; DOS.PrintString
  int  21h

  ...

Xmas: db 'Merry ...', 13, 10, '$'
NewY: db 'Happy ...', 13, 10, '$'