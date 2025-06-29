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


ldc "Erik"
astore 1



getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\nInsira um nome"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


new java/util/Scanner
dup
getstatic java/lang/System/in Ljava/io/InputStream;
invokespecial java/util/Scanner/<init>(Ljava/io/InputStream;)V
invokevirtual java/util/Scanner/nextLine()Ljava/lang/String;
astore 2


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Vou exibir o nome screto..."
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;255;0;0m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
aload 1
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;255;255;255m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "Agora o que voce digitou"
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "\033[38;2;0;255;0m"
invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V

getstatic java/lang/System/out Ljava/io/PrintStream;
aload 2
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V


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
