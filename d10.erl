-module(d10).
-export([run/0]).

run() ->
    % Input = [{addx, 15}, {addx, -11}, {addx, 6}, {addx, -3}, {addx, 5}, {addx, -1}, {addx, -8}, {addx, 13}, {addx, 4}, noop, {addx, -1}, {addx, 5}, {addx, -1}, {addx, 5}, {addx, -1}, {addx, 5}, {addx, -1}, {addx, 5}, {addx, -1}, {addx, -35}, {addx, 1}, {addx, 24}, {addx, -19}, {addx, 1}, {addx, 16}, {addx, -11}, noop, noop, {addx, 21}, {addx, -15}, noop, noop, {addx, -3}, {addx, 9}, {addx, 1}, {addx, -3}, {addx, 8}, {addx, 1}, {addx, 5}, noop, noop, noop, noop, noop, {addx, -36}, noop, {addx, 1}, {addx, 7}, noop, noop, noop, {addx, 2}, {addx, 6}, noop, noop, noop, noop, noop, {addx, 1}, noop, noop, {addx, 7}, {addx, 1}, noop, {addx, -13}, {addx, 13}, {addx, 7}, noop, {addx, 1}, {addx, -33}, noop, noop, noop, {addx, 2}, noop, noop, noop, {addx, 8}, noop, {addx, -1}, {addx, 2}, {addx, 1}, noop, {addx, 17}, {addx, -9}, {addx, 1}, {addx, 1}, {addx, -3}, {addx, 11}, noop, noop, {addx, 1}, noop, {addx, 1}, noop, noop, {addx, -13}, {addx, -19}, {addx, 1}, {addx, 3}, {addx, 26}, {addx, -30}, {addx, 12}, {addx, -1}, {addx, 3}, {addx, 1}, noop, noop, noop, {addx, -9}, {addx, 18}, {addx, 1}, {addx, 2}, noop, noop, {addx, 9}, noop, noop, noop, {addx, -1}, {addx, 2}, {addx, -37}, {addx, 1}, {addx, 3}, noop, {addx, 15}, {addx, -21}, {addx, 22}, {addx, -6}, {addx, 1}, noop, {addx, 2}, {addx, 1}, noop, {addx, -10}, noop, noop, {addx, 20}, {addx, 1}, {addx, 2}, {addx, 2}, {addx, -6}, {addx, -11}, noop, noop, noop],
    Input = [{addx, 1}, noop, {addx, 29}, {addx, -24}, {addx, 4}, {addx, 3}, {addx, -2}, {addx, 3}, {addx, 1}, {addx, 5}, {addx, 3}, {addx, -2}, {addx, 2}, noop, noop, {addx, 7}, noop, noop, noop, {addx, 5}, {addx, 1}, noop, {addx, -38}, {addx, 21}, {addx, 8}, noop, {addx, -19}, {addx, -2}, {addx, 2}, {addx, 5}, {addx, 2}, {addx, -12}, {addx, 13}, {addx, 2}, {addx, 5}, {addx, 2}, {addx, -18}, {addx, 23}, noop, {addx, -15}, {addx, 16}, {addx, 7}, noop, noop, {addx, -38}, noop, noop, noop, noop, noop, noop, {addx, 8}, {addx, 2}, {addx, 3}, {addx, -2}, {addx, 4}, noop, noop, {addx, 5}, {addx, 3}, noop, {addx, 2}, {addx, 5}, noop, noop, {addx, -2}, noop, {addx, 3}, {addx, 6}, noop, {addx, -38}, {addx, -1}, {addx, 35}, {addx, -6}, {addx, -19}, {addx, -2}, {addx, 2}, {addx, 5}, {addx, 2}, {addx, 3}, noop, {addx, 2}, {addx, 3}, {addx, -2}, {addx, 2}, noop, {addx, -9}, {addx, 16}, noop, {addx, 9}, {addx, -3}, {addx, -36}, {addx, -2}, {addx, 11}, {addx, 22}, {addx, -28}, noop, {addx, 3}, {addx, 2}, {addx, 5}, {addx, 2}, {addx, 3}, {addx, -2}, {addx, 2}, noop, {addx, 3}, {addx, 2}, noop, {addx, -11}, {addx, 16}, {addx, 2}, {addx, 5}, {addx, -31}, noop, {addx, -6}, noop, noop, noop, noop, noop, {addx, 7}, {addx, 30}, {addx, -24}, {addx, -1}, {addx, 5}, noop, noop, noop, noop, noop, {addx, 5}, noop, {addx, 5}, noop, {addx, 1}, noop, {addx, 2}, {addx, 5}, {addx, 2}, {addx, 1}, noop, noop, noop, noop],
    {Signal, CRT} = processor(Input, 0, 1, 0, []),
    io:fwrite("~w~n~p~n", [Signal, split(CRT, [])]).

processor([], _Cycles, _Register, Signal, CRT) ->
    {Signal, CRT};
processor([Cmd | Tail], Cycles, Register, Signal, CRT) ->
    {NC, NR, NS, NCRT} = execute(Cmd, Cycles, cycles_count(Cmd), Register, Signal, CRT),
    processor(Tail, NC, NR, NS, NCRT).

execute({addx, V}, CyclesPassed, 0, Register, Signal, CRT) ->
    {CyclesPassed, Register + V, Signal, CRT};
execute(noop, CyclesPassed, 0, Register, Signal, CRT) ->
    {CyclesPassed, Register, Signal, CRT};
execute(Cmd, CyclesPassed, CyclesLeft, Register, Signal, CRT) ->
    CurrentCycle = CyclesPassed + 1,
    % current signal level
    NewSignal = case ((CurrentCycle - 20) rem 40) of
        0 -> Signal + (Register * CurrentCycle);
        _ -> Signal
    end,
    % io:fwrite("Cycle ~w Register ~w Signal ~w~n", [CurrentCycle, Register, NewSignal]),
    % what to draw on CRT
    Char = case (CyclesPassed rem 40) >= Register-1 andalso (CyclesPassed rem 40) =< Register+1 of
        true  -> $#;
        false -> $.
    end,
    execute(Cmd, CurrentCycle, CyclesLeft - 1, Register, NewSignal, CRT ++ [Char]).

cycles_count({addx, _}) -> 2;
cycles_count(noop)      -> 1;
cycles_count(_)         -> badcommand.

split([], Acc) ->
    Acc;
split(List, Acc) ->
    {A, B} = lists:split(40, List),
    split(B, Acc ++ [A]).
