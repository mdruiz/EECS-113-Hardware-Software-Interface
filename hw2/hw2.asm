;; Mario Ruiz   #46301389
;; hw2.asm

;; Put status of your code here: completely working code

ORG 0H
SJMP  MAIN

STRING1:  DB "your test string" ;; string data

DB 0 ;; Null termination

STRING1LEN: DB 16  ;; String length follows the null

STRING2:  DB  "Hello World"

DB 0

STRING2LEN: DB 11

STRING3:  DB  "UCI Anteater"

DB 0

STRING3LEN: DB 12

STRING4:  DB  "EECS 113"

DB 0

STRING4LEN: DB 8


STRCPY:
	;; The caller passes source string pointer in DPTR (in ROM).
	;; The caller passes destination string pointer in R0 (in RAM).
	;; The caller expects return value in accumulator A
	;; DPTR and R0 should not be modified.

	;; Initialize the len variable
	MOV R1, #0

	LOOP1:
	;; Load each character from source string's memory.
	MOV A, R1
	MOVC A, @A + DPTR
	
	;; Check to make sure it is not the null character
	CJNE A, #0, CONTINUE
	;; If it is null, return the len in A; otherwise, increment count and save the character to the corresponding RAM location.
	;;ELSE
	MOV A, R1
	RET

	CONTINUE:
	MOV @R0, A
	INC R1
	INC R0
	SJMP LOOP1


TESTSTRING:
	;; The purpose is to call STRCPY, fetch the answer
	;; (which follows the string data; e.g., STRING1LEN)
	;; and compare if they are the same.
	MOV R0, #48
	CALL STRCPY

	MOV R3, A
	INC R1
	MOV A, R1
	MOVC A, @A + DPTR
	
	;; If the length is different from the expected length
	;; A = expected value
	;; R3 = len value returned from STRCPY 
	CLR C
	SUBB A, R3 
	;; then jump to ERROR.
	JNZ ERROR
	;; Else Compare the copied data with the original (loop over length)
	MOV R1, #0
	MOV R0, #48

	LOOP2:
	MOV A, R1
	MOVC A, @A + DPTR
	MOV R4, A
	
	MOV A, @R0

	;; If character does not match
	SUBB A, R4
	;; then jump to ERROR.
	JNZ ERROR

	INC R1
	INC R0 
	DJNZ R3, LOOP2
	
	INC R2
	RET
 

MAIN:
	;; Use R2 as the variable t, initialize to 0
	MOV R2, #0
	;; Load the address of STRING1 to DPTR
	MOV DPTR, #STRING1
	;; Call TESTSTRING
	CALL TESTSTRING
	
	;; Load the address of STRING2 to DPTR
	MOV DPTR, #STRING2
	;;Call TESTSTRING
	CALL TESTSTRING

	MOV DPTR, #STRING3
	CALL TESTSTRING

	MOV DPTR, #STRING4
	CALL TESTSTRING

	SUCCESS: SJMP SUCCESS

	ERROR: SJMP ERROR

	END
