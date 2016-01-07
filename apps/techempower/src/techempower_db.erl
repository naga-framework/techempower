-module(techempower_db).
-export([metainfo/0]).
-include_lib("kvs/include/metainfo.hrl").

-include("fortune.hrl").
-include("world.hrl").

metainfo() ->
    #schema{name=techempower,tables=[
         #table{name=fortune, container=feed,fields=record_info(fields,fortune), keys=[]},
         #table{name=world,   container=feed,fields=record_info(fields,world),   keys=[]}
    ]}.