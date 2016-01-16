-module(bench).
-export([plaintext/3,json/3,queries/3,db/3,fortune/3,update/3]).
-include_lib("naga/include/naga.hrl").

-include("fortune.hrl").

-session(false).
-default_action(plain).
-actions([plain,json,queries,db,fortune,update]).

plaintext(<<"GET">>, _, _) -> {output, <<"Hello, world!">>, ?CTYPE_PLAIN}.

%% use dtl to render json
json       (<<"GET">>, _, _) -> {json, [{message, <<"Hello, World!">>}]}. 
queries    (<<"GET">>, _, _) -> Queries = queries(),
                                Data = [world:get(Id) || Id <- ids(Queries)], 
                                Rows = [{rows,Data}],
                                {json, dtl, [{body, Rows}]}.
update     (<<"GET">>, _, _) -> Queries = queries(),
                                Data = [world:new(Id) || Id <- ids(Queries)], 
                                Rows = [{rows,Data}],
                                {json, dtl, [{result, Rows}]}.
db         (<<"GET">>, _, _) -> {json, world:get(id())}.
fortune    (<<"GET">>, _, _) -> {ok, F} = kvs:get(fortune, id()),
                                Fortune = [{fortune, F#fortune.message}],
                                {ok, Fortune}.

%% ----------------- internal function.              
queries()    -> Queries = (catch wf:to_integer(wf:q(queries))),
	    		case {is_number(Queries), Queries > 500} of
	        		{true, true} -> 500;
	        		{false, _}   -> 1;
	        		_ -> Queries
	    		end.

%% list of unique id to update/read
id()      -> random:uniform(10000).
ids(N)    -> ids(abs(N), []).
ids(0, A) -> A;
ids(N, A) -> ids(N - 1, [random(A) | A]).

random(L) -> Id = id(),
    	     case lists:member(id(), L) of
	          	true -> random(L);
	          	false -> Id
             end.
