-module(fortune).
-export([new/1,new/2, get/1]).

-include("fortune.hrl").

new(Message)      -> new(kvs:next_id(fortune,1), Message). 
new(Id, Message)  -> ok = kvs:put(#fortune{id=Id, message=Message}).

get(Id)           -> kvs:get(fortune, Id).