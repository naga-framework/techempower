-module(world).
-export([new/1,new/2, get/1]).

-include("world.hrl").

new(Number)      -> new(kvs:next_id(world,1), Number). 
new(Id, Number)  -> kvs:add(#world{id=Id, randomnumber=Number}).
get(Id)          -> kvs:get(world, Id).