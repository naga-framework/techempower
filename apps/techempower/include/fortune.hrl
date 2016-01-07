-include_lib("kvs/include/kvs.hrl").

-record(fortune, {?ITERATOR(feed), message}).
