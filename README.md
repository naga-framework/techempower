# Naga Benchmarking Test

This is the Naga portion of a [benchmarking test suite](../) comparing a variety of web development platforms.

### Techempower Test Controller 
* [routes](apps/techempower/priv/techempower.routes)
* [bench controller](apps/techempower/src/controller/bench.erl)

## Infrastructure Software Versions
The tests were run with:

* [Cowboy 1.0.1](https://github.com/ninenines/cowboy)
* [Erlang 18](http://www.erlang.org/)
* [kvs](http://synrc.com/) [mnesia,postgres]

## Test URLs
###  Plain Test

http://localhost/plaintext

### Fortune Test

http://localhost/fortune

### JSON Encoding Test

http://localhost/json

### Data-Store/Database Mapping Test

http://localhost/db

### Variable Query Test
    
http://localhost/db?queries=2
