section .data
   
   message1 : db 'Enter the age: ',10,0   
   read_age : db "%d", 0               
   number   : dd 0             
   message2 : db 'Age greater than or equal to 18,so eligible for voting',10,0
   message3 : db 'Age less than 18 so not Eligible for voting',10,0
        age : dd 18


section .text

   global main
   extern printf
   extern scanf

main:

       push ebp          
       mov ebp,esp 
       push message1
       call printf

       add esp, 4 
       push number 
       push read_age 
       call scanf;

       mov eax,[number]

       cmp eax,[age]

       jge label1

       push message3
       call printf
       jmp done


label1:

        push message2
        call printf
        jmp done

done:

        mov esp,ebp
        pop ebp
        ret



