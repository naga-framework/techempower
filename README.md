# Naga Benchmarking Test

This is the Naga portion of a [benchmarking test suite](../) comparing a variety of web development platforms.

### Techempower Test Controller 
* [routes](priv/techempower.routes)
* [index test controller](src/controller/index.erl)

## Infrastructure Software Versions
The tests were run with:

* [Cowboy 1.0.3](https://github.com/ninenines/cowboy)
* [Erlang 18.2](http://www.erlang.org/), [esl 18.2](http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_18.2-1~ubuntu~trusty_amd64.deb)
* [MySQL 5.5.29](https://dev.mysql.com/)
* [kvs](http://synrc.com/) [mnesia,riak,postgres]
