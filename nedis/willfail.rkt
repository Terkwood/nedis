#lang nedis
SET myname foo
GET myname
SET theirname bar
GET theirname
DEL myname
GET myname
DEL theirname
GET theirname
