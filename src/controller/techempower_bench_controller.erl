-module(techempower_bench_controller, [Req]).
-compile(export_all).

json(<<"GET">>, _) -> {json, [{message, "Hello, World!"}]}.

plaintext(<<"GET">>, _) -> {output, "Hello, World!"}.

db(<<"GET">>, _) ->
    {json, [{id, 3217},{number, 2149}]}.

queries(<<"GET">>, _) ->
    %%FIXME: do queries
    Result = [
              [{id,4174},{number,331}],
              [{id,51}, {number,6544}],
              [{id,4462},{number,952}],
              [{id,2221},{number,532}],
              [{id,9276},{number,3097}],
              [{id,3056},{number,7293}],
              [{id,6964},{number,620}],
              [{id,675},{number,6601}],
              [{id,8414},{number,6569}],
              [{id,2753},{number,4065}]
             ],
    {json, [{result,Result}]}.

fortunes(<<"">>, _) ->
    %%FIXME
    Id = 11,
    Msg = "&lt;script&gt;alert(&quot;This should not be displayed in a browser alert box.&quot;);&lt;/script&gt;</td></tr><tr><td>4</td><td>A bad random number generator: 1, 1, 1, 1, 1, 4.33e+67, 1, 1, 1</td></tr><tr><td>5</td><td>A computer program does what you tell it to do, not what you want it to do.</td></tr><tr><td>2</td><td>A computer scientist is someone who fixes things that aren&apos;t broken.</td></tr><tr><td>8</td><td>A list is only as strong as its weakest link. — Donald Knuth</td></tr><tr><td>0</td><td>Additional fortune added at request time.</td></tr><tr><td>3</td><td>After enough decimal places, nobody gives a damn.</td></tr><tr><td>7</td><td>Any program that runs right is obsolete.</td></tr><tr><td>10</td><td>Computers make very fast, very accurate mistakes.</td></tr><tr><td>6</td><td>Emacs is a nice operating system, but I prefer UNIX. — Tom Christaensen</td></tr><tr><td>9</td><td>Feature: A bug with seniority.</td></tr><tr><td>1</td><td>fortune: No such file or directory</td></tr><tr><td>12</td><td>フレームワークのベンチマーク",
    {ok, [{id, Id},{message, Msg}]}.

updates(<<"GET">>, _) ->
    %%FIXME: do queries
    Result = [
              [{id,4174},{number,331}],
              [{id,51}, {number,6544}],
              [{id,4462},{number,952}],
              [{id,2221},{number,532}],
              [{id,9276},{number,3097}],
              [{id,3056},{number,7293}],
              [{id,6964},{number,620}],
              [{id,675},{number,6601}],
              [{id,8414},{number,6569}],
              [{id,2753},{number,4065}]
             ],
    {json, [{result,Result}]}.
