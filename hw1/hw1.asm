;; hw1.asm
;; Mario Ruiz 	#46301389

;; Put status of your code here: does it work? has bugs? etc

           ORG 0H
           SJMP  main
max:  ;; parameters a, b are in R0, R1;
         ;; return value should be in accumulator A
      ;; compare R0 and R1 (by subtraction, SUBB)
      MOV A, R0
      XRL A, R1
      RLC A
      ;; if both numbers negative or positive jump 
      JNC label1
      ;; else choose positive number
      MOV A, R0
      RLC A
      ;;if R0 is negative, copy R1 into A
      JC label2
      ;;else copy R0 into A
      SJMP label
      
label1:      
      MOV A, R0
      CLR C
      SUBB A, R1
      ;; if R0 larger (check carry/borrow bit)
      ;; jump (JC? JNC?) to copy R0's value into A,
      JNC label
label2:
      ;; else copy R1's value into A,
      MOV A, R1
      ;; return
      RET
label:
	MOV A, R0
	RET
	

main:
       ;; use R2 as the variable t, initialize to 0
       MOV R2, #0
       ;; put test parameters into R0 and R1
       MOV R0, #1
       MOV R1, #2
       ;; call the max subroutine
       ACALL  max
       ;; compare return value (A) with answer
       CLR C
       SUBB A, #2
       ;; if not the same (JZ? JNZ?), jump to Error
       JNZ Error
       ;; otherwise, increment R2, continue testing
       INC R2 
       
       MOV R0, #2
       MOV R1, #1
       ACALL  max
       CLR C
       SUBB A, #2
       JNZ Error
       INC R2 
       
       MOV R0, #-3
       MOV R1, #4
       ACALL  max
       CLR C
       SUBB A, #4
       JNZ Error
       INC R2 
       
       MOV R0, #-3
       MOV R1, #-2
       ACALL  max
       CLR C
       SUBB A, #-2
       JNZ Error
       INC R2 

	   MOV R0, #4
       MOV R1, #-3
       ACALL  max
       CLR C
       SUBB A, #4
       JNZ Error
       INC R2

	   MOV R0, #-2
       MOV R1, #-3
       ACALL  max
       CLR C
       SUBB A, #-2
       JNZ Error
       INC R2  
       
       
Success:
        SJMP  Success
Error:
        SJMP  Error
        END