.source Test.j
.class public Test
.super java/lang/Object

.method public <init>()V
aload_0
invokenonvirtual java/lang/Object/<init>()V
return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 50
.limit locals 100


bipush 11
newarray int
astore 1


ldc 0
istore 2


START_WHILE_1:
iload 2
ldc 11
if_icmpge END_WHILE_1
iload 2
iload 2
ldc 2
imul
istore 50
istore 51
aload 1
iload 51
iload 50
iastore
iload 2
ldc 1
iadd
istore 2
getstatic java/lang/System/out Ljava/io/PrintStream;
iload 2
ldc 1
isub
istore 52
aload 1
iload 52
iaload
invokevirtual java/io/PrintStream/println(I)V

goto START_WHILE_1
END_WHILE_1:

return
.end method

.method public static aleatorio(I)I
.limit stack 4
.limit locals 1
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
iload 0
invokevirtual java/util/Random/nextInt(I)I
ireturn
.end method
