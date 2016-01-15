-module(world).
-export([new/1,new/2, get/1]).

-include("world.hrl").

new()            -> new(kvs:next_id(world,1), random:uniform(10000)).
new(Number)      -> new(kvs:next_id(world,1), Number). 

new(Id, Number)  -> {ok, W} = kvs:add(#world{id=Id, randomNumber=random:uniform(10000)}),
                    [{id, W#world.id}, {randomNumber, W#world.randomNumber}].

get(Id)          -> {ok, W} = kvs:get(world, Id),
                    [{id, W#world.id},{randomNumber, W#world.randomNumber}].

