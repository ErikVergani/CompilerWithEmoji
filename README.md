# CompilerWithEmoji

OBS: Testado com Windows 11, emoji da função principal e declaração de funções é "Pessoa correndo de frente para direita" e "Pessoa andando de frente para a direita". Identificado que windows 10 e outros sitemas podem não possuir o emoji, sendo reconhecido como pessoa correndo + seta para direita.

### Declaração de Função Principal
```
🏃‍➡️{}
```

### Declaração de Funções
```
🚶‍➡️ foo()
```

### Atribuição de Variáveis
- Inteiro: `📌variavel = expressão`  
- String: `📌variavel = "texto"`

### Declaração de Arrays
```
📌array[tamanho]
```

### Atribuição em Arrays
```
📌array[índice] = valor
```

### Print no console
```
🖨️(conteúdo)
```

### Entrada de Dados
- Inteiro: `✍️(📌variavel)`  
- String: `✍️(string 📌variavel)`

---

### Controle de Fluxo
```
🤌 (expressão operador expressão) { ... }
🤌 (expressão operador expressão) { ... } 👍 { ... }
🎠 (expressão operador expressão) { ... }
👌
```

---

### Funções Especiais
```
Para emitir som: 🔊()
Para trocar a cor do texto no console: 🖌️(r, g, b)
Para retornar um numero aleatório até X limite: 🎲(InteiroMax)
```

---

### Operadores
- Aritméticos: `+`, `-`, `*`, `/`  
- Relacionais: `==`, `!=`, `<`, `<=`, `>`, `>=`

---

## grammar Ev

### ---------------- LEXER RULES ----------------
```antlr
RUN           : '🏃‍➡️' ;
PLUS          : '+' ;
MINUS         : '-' ;
TIMES         : '*' ;
OVER          : '/' ;
OPEN_C        : '{' ;
CLOSE_C       : '}' ;
OPEN_B        : '[' ;
CLOSE_B       : ']' ;
OPEN_P        : '(' ;
CLOSE_P       : ')' ;
ATTRIB        : '=' ;
EQUAL         : '==' ;
DIFFER        : '!=' ;
LESSER        : '<' ;
LESSER_EQUAL  : '<=' ;
GREATER       : '>' ;
GREATER_EQUAL : '>=' ;
PRINT         : '🖨️' ;
INPUT         : '✍️' ;
IF            : '🤌' ;
ELSE          : '👍' ;
WHILE         : '🎠' ;
COMMA         : ',' ;
VAR           : '📌' [a-z]+ ;
NUM           : [0-9]+ ;
STRING        : '"' ~['"]* '"' ;
NL            : ('\r')? '\n' ;
SPACE         : (' '|'\t')+ -> skip ;
BEEP          : '🔊' ;
SETCOLOR      : '🖌️' ;
BREAK         : '👌' ;
FUNCTION      : '🚶‍➡️' ;
ALEATORIO     : '🎲' ;
ID            : [a-zA-Z_][a-zA-Z0-9_]* ;
```

---

### ---------------- PARSER RULES ----------------
```antlr
program         : run (function_decl)* EOF ;
run             : RUN OPEN_C ;
function_decl   : FUNCTION ID OPEN_P CLOSE_P OPEN_C statement* CLOSE_C ;

statement       : NL
                | assignment
                | array_declaration
                | array_assignment
                | call_function
                | statement_if
                | statement_else
                | statement_while
                | statement_break ;

assignment          : VAR ATTRIB expression
                    | VAR ATTRIB STRING ;

array_declaration   : VAR OPEN_B NUM CLOSE_B ;

array_assignment    : VAR OPEN_B expression CLOSE_B ATTRIB expression ;

call_function       : function_print
                    | function_input
                    | function_beep
                    | function_setcolor
                    | function_call
                    | function_aleatorio ;

function_print      : PRINT OPEN_P print_expr CLOSE_P NL ;

function_input      : INPUT OPEN_P VAR CLOSE_P NL
                    | INPUT OPEN_P 'string' VAR CLOSE_P NL ;

function_beep       : BEEP OPEN_P CLOSE_P NL ;

function_setcolor   : SETCOLOR OPEN_P r=NUM COMMA g=NUM COMMA b=NUM CLOSE_P NL ;

function_call       : ID OPEN_P CLOSE_P NL ;

function_aleatorio  : ALEATORIO OPEN_P expression CLOSE_P ;

statement_if        : IF OPEN_P expression op=(EQUAL|DIFFER|LESSER|LESSER_EQUAL|GREATER|GREATER_EQUAL) expression CLOSE_P OPEN_C NL statement* CLOSE_C NL ;

statement_else      : IF ... ELSE ... ;

statement_while     : WHILE ... ;

statement_break     : BREAK NL ;

expression          : term (op=(PLUS|MINUS) term)* ;

term                : factor (op=(TIMES|OVER) factor)* ;

factor              : function_aleatorio
                    | NUM
                    | VAR
                    | VAR OPEN_B expression CLOSE_B ;
```
