-module(error).
-export(['404'/3,'500'/3]).         
-include_lib("naga/include/naga.hrl").

-default_action('404').
-actions(['404','500']).   %% subset of export

'404'(_, _, _)   -> {404, <<"Not Found">>,             ?CTYPE_PLAIN}.
'500'(_, _, _)   -> {500, <<"Internal Server Error">>, ?CTYPE_PLAIN}.

