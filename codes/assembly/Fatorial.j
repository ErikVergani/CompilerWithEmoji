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


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "insira um numero para calcular um fatorial..."
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextInt()I
istore 1

ldc 1
istore 2


ldc 1
istore 3


START_WHILE_1:
iload 3
iload 1
if_icmpgt END_WHILE_1
iload 2
iload 3
imul
istore 2
iload 3
ldc 1
iadd
istore 3
goto START_WHILE_1
END_WHILE_1:


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "O resultado e:"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
iload 2
invokevirtual java/io/PrintStream/println(I)V


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
