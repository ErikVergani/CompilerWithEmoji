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


ldc 5
istore 1


ldc 2
istore 2


ldc 7
istore 3



getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Jogo de Adivinhacao"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Adivinhe 3 numeros entre 0-9 na ordem correta"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V



ldc 0
istore 4


ldc 0
istore 5



START_WHILE_1:
iload 4
ldc 5
if_icmpge END_WHILE_1
iload 4
ldc 1
iadd
istore 4
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;255;223;0m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Tentativa"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
iload 4
invokevirtual java/io/PrintStream/println(I)V

getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;0;0;255m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Primeiro numero:"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextInt()I
istore 6
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Segundo numero:"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextInt()I
istore 7
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Terceiro numero:"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextInt()I
istore 8
iload 6
iload 1
if_icmpne NOT_IF_2
iload 7
iload 2
if_icmpne NOT_IF_3
iload 8
iload 3
if_icmpne NOT_IF_4
ldc 1
istore 5
goto END_WHILE_1
NOT_IF_4:
NOT_IF_3:
NOT_IF_2:
goto START_WHILE_1
END_WHILE_1:



iload 5
ldc 1
if_icmpne NOT_IF_5
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;0;255;0m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "PARABENS! Acertou em"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
iload 4
invokevirtual java/io/PrintStream/println(I)V

getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "tentativas"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

goto END_IF_ELSE_5
NOT_IF_5:
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;255;0;0m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Suas tentativas acabaram :c "
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;255;255;255m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Numeros corretos:"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
iload 1
invokevirtual java/io/PrintStream/println(I)V

getstatic java/lang/System/out Ljava/io/PrintStream;
iload 2
invokevirtual java/io/PrintStream/println(I)V

getstatic java/lang/System/out Ljava/io/PrintStream;
iload 3
invokevirtual java/io/PrintStream/println(I)V

END_IF_ELSE_5:

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
