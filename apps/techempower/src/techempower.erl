-module(techempower).
-behaviour(supervisor).
-behaviour(application).
-export([init/1, start/2, stop/1, main/1, log_modules/0]).

main(A)    -> mad_repl:sh(A).
start(_,_) -> supervisor:start_link({local,techempower }, techempower,[]).
stop(_)    -> ok.
init([])   -> naga:start([techempower]),
			  kvs:join(),  
              sup().

sup()      -> { ok, { { one_for_one, 5, 100 }, [] } }.

log_modules() -> [].


