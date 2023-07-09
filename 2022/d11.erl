-module(d11).
-export([run/0]).

-record(monke, {id, items, op, test, true_monke, false_monke, inspections}).

run() ->
    Input = [
    % ------------------------------------ REAL INPUT ----------------------------------
    %          id  items                             op                         test  true  false  insp
        {monke, 0, [92, 73, 86, 83, 65, 51, 55, 93], fun(Old) -> Old * 5 end,   11,   3,    4,     0},
        {monke, 1, [99, 67, 62, 61, 59, 98],         fun(Old) -> Old * Old end, 2,    6,    7,     0},
        {monke, 2, [81, 89, 56, 61, 99],             fun(Old) -> Old * 7 end,   5,    1,    5,     0},
        {monke, 3, [97, 74, 68],                     fun(Old) -> Old + 1 end,   17,   2,    5,     0},
        {monke, 4, [78, 73],                         fun(Old) -> Old + 3 end,   19,   2,    3,     0},
        {monke, 5, [50],                             fun(Old) -> Old + 5 end,   7,    1,    6,     0},
        {monke, 6, [95, 88, 53, 75],                 fun(Old) -> Old + 8 end,   3,    0,    7,     0},
        {monke, 7, [50, 77, 98, 85, 94, 56, 89],     fun(Old) -> Old + 2 end,   13,   4,    0,     0}
    ],
    % part 1
    Output = observe(Input, 20, 3),
    Inspections = lists:foldl(fun(X, Acc) -> X * Acc end, 1,
        lists:nthtail(length(Output) - 2, % two most active monkeys
            lists:sort([ M#monke.inspections || M <- Output ]))),
    io:fwrite("~p~n", [Inspections]),
    % part2
    Output2 = observe(Input, 10000, 1),
    Inspections2 = lists:foldl(fun(X, Acc) -> X * Acc end, 1,
        lists:nthtail(length(Output2) - 2, % two most active monkeys
            lists:sort([ M#monke.inspections || M <- Output2 ]))),
    io:fwrite("~p~n", [Inspections2]).

% play observation logic

observe(State, 0, _WorryMod) ->
    State;
observe(State, RoundsLeft, WorryMod) ->
    NewState = monke_play(State, State, WorryMod),
    observe(NewState, RoundsLeft - 1, WorryMod).

monke_play([], State, _WorryMod) ->
    State;
monke_play([#monke{id = Id} | Tail], State, WorryMod) ->
    Monke = get_monke(Id, State),
    Passes = [ pass_info(W, Monke, WorryMod) || W <- Monke#monke.items ],
    monke_play(Tail, process_passes(Passes, State, WorryMod), WorryMod).

pass_info(Worry, Monke, WorryMod) ->
    F = Monke#monke.op,
    NewWorry = F(Worry) div WorryMod,
    {Worry, NewWorry, Monke#monke.id, case NewWorry rem Monke#monke.test of
        0 -> Monke#monke.true_monke;
        _ -> Monke#monke.false_monke
    end}.

process_passes([], State, _WorryMod) ->
    State;
process_passes([Pass | Tail], State, 1) ->
    WorryScale = lists:foldl(fun(X, Acc) -> X * Acc end, 1, [ M#monke.test || M <- State ]),
    NS = update_state(Pass, State, WorryScale, []),
    process_passes(Tail, NS, 1);
process_passes([Pass | Tail], State, WorryMod) ->
    NS = update_state(Pass, State, 0, []),
    process_passes(Tail, NS, WorryMod).

update_state(_Pass, [], _Scale, Acc) ->
    Acc;
update_state({OldWorry, _NewWorry, From, _To} = Pass, [Monke | Tail], Scale, Acc)
    when Monke#monke.id == From
->
    update_state(Pass, Tail, Scale, Acc ++
        [Monke#monke{
            items = lists:delete(OldWorry, Monke#monke.items),
            inspections = Monke#monke.inspections + 1
        }]);
update_state({_OldWorry, NewWorry, _From, To} = Pass, [Monke | Tail], Scale, Acc)
    when Monke#monke.id == To
->
    NewAdjustedWorry = case Scale of
        0 -> NewWorry;
        _ -> NewWorry - (NewWorry div Scale * Scale)
    end,
    update_state(Pass, Tail, Scale, Acc ++
        [Monke#monke{items = [NewAdjustedWorry | Monke#monke.items]}]);
update_state(Pass, [Monke | Tail], Scale, Acc) ->
    update_state(Pass, Tail, Scale, Acc ++ [Monke]).

% play observation logic - END

get_monke(Id, [Monke | _Tail]) when Monke#monke.id == Id ->
    Monke;
get_monke(Id, [_Monke | Tail]) ->
    get_monke(Id, Tail);
get_monke(Id, []) ->
    {badmonke, Id}.
