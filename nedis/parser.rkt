#lang brag
program: "\n"* instruction ("\n"+ instruction)*
instruction: get | set | del
get: "GET" key
set: "SET" key val
del: "DEL" key
key: STRING
val: STRING
