#lang brag
program: [instruction] (NEWLINE [instruction])*
instruction: get  | set  | del
get: "GET" STRING
set: "SET" STRING STRING
del: "DEL" STRING
