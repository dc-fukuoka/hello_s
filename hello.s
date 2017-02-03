/* gcc -nostdlib -static hello.s */
	.text
	_start:
	        .globl  _start
	        mov     $13, %edx      # third argument of write() syscall, strlen(message)
	        mov     $message, %ecx # second argument of write() syscall, head address of message
	        mov     $1, %ebx       # file descriptor of stdout, 1
	        mov     $4, %eax       # number of write() syscall, 4
	        int     $0x80          # execute syscall

	        xor     %ebx, %ebx     # set 0 to ebx, return code(xor A A = 0)
	        mov     $1, %eax       # numbuer of exit_() syscall, 1
	        int     $0x80          # execute syscall
	message:
	        .ascii  "Hello World!\n"
