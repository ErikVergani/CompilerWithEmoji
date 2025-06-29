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


ldc 8
istore 1


iload 1
invokestatic Test/aleatorio(I)I
istore 2


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;0;255;0m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Sempre será menor que 8"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
iload 2
invokevirtual java/io/PrintStream/println(I)V



getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;225;255;51m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Sempre será menor que 100"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc 100
invokestatic Test/aleatorio(I)I
ldc 1
iadd
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
