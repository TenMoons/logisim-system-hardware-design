 .text
########################################
#本程序实现计算并存储斐波那契数列前20项#
########################################
 .text
addi $s1,$0,20  # 总项数：20
addi $s0,$0,128  # 存储单元起始地址：0x80
addi $t1,$0,0  # 累计项数
addi $s2,$0,1  # 第一项：1
addi $s3,$0,1  # 第二项：1

fib:
sw $s2,0($s0)
sw $s3,4($s0)
add $s2,$s2,$s3  # 递推公式
add $s3,$s3,$s2
addi $t1,$t1,2
addi $s0,$s0,8  # 下一次存储单元地址
bne $t1,$s1,fib


addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  