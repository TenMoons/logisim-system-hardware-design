 .text
########################################
#������ʵ�ּ��㲢�洢쳲���������ǰ20��#
########################################
 .text
addi $s1,$0,20  # ��������20
addi $s0,$0,128  # �洢��Ԫ��ʼ��ַ��0x80
addi $t1,$0,0  # �ۼ�����
addi $s2,$0,1  # ��һ�1
addi $s3,$0,1  # �ڶ��1

fib:
sw $s2,0($s0)
sw $s3,4($s0)
add $s2,$s2,$s3  # ���ƹ�ʽ
add $s3,$s3,$s2
addi $t1,$t1,2
addi $s0,$s0,8  # ��һ�δ洢��Ԫ��ַ
bne $t1,$s1,fib


addi   $v0,$zero,10         # system call for exit
syscall                  # we are out of here.  