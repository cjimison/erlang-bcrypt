%% Copyright (c) 2011 Hunter Morris
%% Distributed under the MIT license; see LICENSE for details.
-module(bcrypt_app).
-author('Hunter Morris <hunter.morris@smarkets.com>').

-behaviour(application).

-export([start/2, stop/1]).

-spec start(normal,_) -> {error,_} | {ok,pid()}.
start(normal, _Args) ->
    case bcrypt_sup:start_link() of
        {ok, Pid}          -> {ok, Pid};
        {error, _} = Error -> Error
    end.

-spec stop(_) -> ok.
stop(_State) -> ok.
