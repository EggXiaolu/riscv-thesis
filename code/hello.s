.text    					# 指示符：进入代码节
.align 2   					# 指示符：将代码按 2^2 字节对齐
.globl main    				# 指示符：声明全局符号 main
main:    					# main 的开始符号
    addi sp,sp,-16    		# 分配栈帧
    sw   ra,12(sp)    		# 保存返回地址
    lui  a0,%hi(string1)    # 计算 string1 的地址
    addi a0,a0,%lo(string1)
    call printf    			# 调用 printf 函数
    lw   ra,12(sp)    		# 恢复返回地址
    addi sp,sp,16    		# 释放栈帧
    li   a0,0   			# 装入返回值 0
    ret    					# 返回
    .section .rodata    	# 指示符：进入只读数据节
    .balign 4    			# 指示符：将数据按 4 字节对齐
string1:    				# 第一个字符串符号
    .string "Hello World\n"	# 指示符：以空字符结尾的字符串