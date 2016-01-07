-module(bench).
-export([plaintext/3,json/3,queries/3,db/3,fortune/3,update/3]).
-include_lib("naga/include/naga.hrl").

-session(false).
-default_action(plain).
-action([plain,json,queries,db,fortune,update]).

plaintext(<<"GET">>, _, _) -> {output, <<"Hello, world!">>, ?CTYPE_PLAIN}.
json     (<<"GET">>, _, _) -> {{json,dtl}, [{message, <<"Hello, World!">>}]}. 
queries  (<<"GET">>, _, _) -> do_query().
db       (<<"GET">>, _, _) -> do_db().
fortune  (<<"GET">>, _, _) -> do_fortune().
update   (        _, _, _) -> do_update().

do_query()   -> ok.
do_db()      -> ok.
do_fortune() -> ok.
do_update()  -> ok.