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
ldc "\nInsira dois numeros..."
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextInt()I
istore 1

new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextInt()I
istore 2

iload 1
iload 2
iadd
istore 3


getstatic java/lang/System/out Ljava/io/PrintStream;
iload 3
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
