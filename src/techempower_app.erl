-module(techempower_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

-spec start(_, _) -> {ok, pid()}.
start(_, _) ->
    error_logger:info_msg("Starting application techempower...", []),
    techempower:start_db(),
    naga:start(techempower),
    naga:start_fcgi(techempower),
    techempower_sup:start_link().

-spec stop(_) -> ok.
stop(_) ->
	ok.
