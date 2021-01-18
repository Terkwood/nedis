#lang brag
program: (instruction | NEWLINE)*
NEWLINE: "\n"
instruction: (get | set | del)* NEWLINE
key: STRING
val: STRING
get: "GET" key
set: "SET" key val
del: "DEL" key
