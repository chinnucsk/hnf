-module(hnf_app).

-behaviour(application).
-export([start/2,stop/1]).

-spec start(any(), any()) -> any().
start(_Type, _StartArgs) ->
  inets:start(),
  hnf_sup:start_link().

-spec stop(any()) -> any().
stop(_State) ->
  ok.
