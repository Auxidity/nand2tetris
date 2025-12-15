// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.
(START)
@p
M=0

(LOOP)
@p 
M=0
@KBD
D=M
@RENDER
D;JGT

@CLEAR
0;JMP

(CLEAR)
@SCREEN
D=A 
@p 
A=D+M 
M=0
@p 
M=M+1
@p 
D=M 
@8191
D=D-A
@CLEAR
D;JLT

@LOOP
0;JMP

(RENDER)
@SCREEN
D=A 
@p 
A=D+M
M=-1

@p 
M=M+1
@p
D=M 
@8191
D=D-A
@RENDER
D;JLT

@LOOP
0;JMP

