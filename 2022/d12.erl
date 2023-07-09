-module(d12).
-export([run/0]).

run() ->
    Input = {179, 41, "abcccccccccccccccccaaccccccccccccaaaaaaaacccccccccccaaaaaccccaaaaaaccaaaaaaaaaaaaaaaaaccccccccccccccccaaacccccaaaaaaaacccaaaccccccccccccccccccccccccccccccccccccccccccccccccccaaaaaabccccccccccccccccaaacaacccccccccccaaaacccccccccccccaaaaaacccaaaaaaccaaaaaaaaaaaaaaaaaaaacccccccccaaacaaacccccaaaaaaaaaccaaaaccccccccccccccccccccccccccccccccccccccccccccccccaaaaaaabcccccccccccccccccaaaaacccccccccccaaaaaccccccccccccaaaaaaccccaaaacccaaaacccaaaaaaaaaaaaacccccccccaaaaaaaaaacccaaaaaaaaccaaaaccccccccccccccccccccccccccccccccccaaacccccccccccaaaaaaabcccccccccccccccaaaaaacccccccccccaaacaaccaaccccccccaaaaaaccccaaaacccaaaccccaaaaaaaaaaaaaccccccccccaaaaaaaaaccaaaaaacccccaaacccccccccccccccccccccccccccccccccccaaaccccccccccccccaaaabcccccccccccccccaaaaaaaacccccccccaacccacaaacaacccccccaaccccccaccaccccccccaaaaaaaaaaaaccccccccccccccaaaaaaacccaaaaaaacccccccccccccaacccccccccccccccccccccccccccaaaccccccccccccccaaaabcccccccccccccccaacaaaaacccccccccccccccccaaaaacccccccccccccccccccccccccccaaaaaaaaaaaaccccccccccccccaaaaaaccccaaccaaacccccccccccaaaaaaccccccccccccccccccccccccccdccccccccccccccccaaabccaacccccccaaacccaaacaccccccccccaaacccaaaaaaccccccccccccccccccccccccccccaaacccaaaaaacaaaaccccccccaaaaaaaccccccccaaacccccccccccaaaaaacccccccccccccccccllllllcccdddddccccccccccccccabaaaacccacccaaccccaacccccccccccccaaacccaaaaaaaacccccccccccccccccaaccccccccacccaaaaccccaaaaccccccccaaacaaaccccccccccccccccccccccaaaaaaccccccccccccccccllllllllldddddddddddccaacccccabaaaaccaaaaaaaacccccccccccccccaaaaaaaacaacaaaaacccccccccccccccccaaacccccccaaacaaccccccaaaacccccccccccccaaccccccccccccccccccccccaaaaaccccccccccccccccclllllllllldddddddddeeaaacccccabaaaccccaaaaaaaaccccccccaaacccaaaaaaaacccaaacccccccccccccccccaaaaaaaaccccccaaaaacccccccaacccccccccccccccccccccccccccccccccccccccaaaaccccaaaccccccccckllppppplllmmmmmmmdeeeeaacccccabaaaacccaaaaaaaaacccccaaaaaaccccaaaaaccccaaccccccccccccccccccaaaaaaaaccccccaaaaaaacccccccccccccccccccccccccccccccccccccccccccccccccccccaaaacccccccckklpppppppplmmmmmmmmmeeeeacccccabaaaacccaaaaaaaaacccccaaaaaacccaaaaaaccccccccaacccccccccccccccaaaaaaccccccaaaaaaaacccccccccccccccccccccccccccccccccccccccccccccccccccccaaaacccccccckkkppppppppqmmmmmmmmmmeeeaaccccabaaaaaccaaaaaaaaccccccaaaaaacccaaaaaaccccccacaaaacccccccccccccaaaaaaccccccaaaaaaaaccccccccaaaaccccccccaaacccccccccccccccccccccccccccccccaaacccccccckkkpppuuuppqqqqqqqqmmmeeeeaccccabacccccaaaaaaaccccccccaaaaaccccaccaaaccccccaaaaaacccccacccccccaaaaaaccccccaaaaaacaaaccccccaaaaccccccccaaaacccccccccccccccccccccccccccccccccccccccckkkpppuuuuuuqqqqqqqqqnnneeecccccabcccccccaccaaaccccccccaaaaacccccccccccccccccaaaacccaaaacccccccaacaaacccccccccaaacaaaaaccccaaaaccccccccaaaaccccccccccccccccccccccccccccccccccccccckkkkpppuuuuuuuqvvvvqqqnnneeecccccabcccccccccccaaacaaccccccccccccccccccccccccccaaaacccaaaaaacccccccccccccccccccccccaaaaaaccccaaacccccccccaaaccccccccccccccccccccccccccccccccccccccckkkkrrpuuuxxxuvvvvvvvqqnnneeecccccabcccccccccccccccaacaaaccccccccccccccccccccccaacaacccaaaaacccccccccccccccccccccccaaaaaaccccccccccccccccccccccccccccccccccccccccccccccccccccccccckkkkrrrruuxxxxuvvvvvvvqqnnneeecccccabcccccccccccccccaaaaacccccccccccccccccccccccccccaccaaaaacccccaaccccccccccccccccccaaaaaccccccccccccccccaaaccccccccccccccaaacccccccccccccccccccckkkkrrrruuuxxxxyyyyyvvvqqnnneeccccccabcccccccccccccaaaaaacccccccccccaacaacccccccccccaaaaaaaaacccacaaaacaaccaaccccccccaaacaaccccccccccaaccccaaaaaacccaacaacccaaacacccccccccccccccccjjkkrrrruuuuuxxxyyyyyvvqrqnneffccccccabcccccccccccccaaaaaaaacccaaacccaaaaaccccccaacccaaaaaaaaacccaaaaaacaaaaaaccccccccaaacaaacccccccaaaaaacaaaaaaacccaaaaacaaaaaaaaccccccccccccccccjjjrrrtttuuxxxxxyyyyyvvrrnnnfffccccccabccccccccccccccccaaaaacccaaaaccaaaaaaccccaaaaaacaaaaaaaaacccaaaacccaaaaaccccccccaaaaaaacccccccaaaaaaaaaaaaaaccaaaaaccaaaaaaaaccccccccccccccccjjjrrrtttxxx{zzzzyyyvvrrrnnnfffccccccabccccccccccaaaccaaccaacccaaaaccaaaaaacccccaaaaacaaaaaaaaacccaaaaccaaaaaacccccccccaaaaaaccccccccaaaacaaaaaaacccaaaaaaccaaaaaacccccccccccccccccjjjrrrtttxxxxxyyyyyyvvrrrnnnfffccccccabcccccccccaaaaccaacccccccaaacccaaaaaacccaaaaaaaaaaaaaaaaacccaacacaaaaaaaacccccaaaaaaaacccccccccaaaacccaaaaaaccccaaaacccaaaaacccccccccccccccccjjjrrrtttxxxxxyyyyyyywvrrnnnfffccccccabcccccccccaaaacccccccccccccccccccaaaccccaaaaaaaaaaaaaaaaaacccccccaaaaaaaacccccaaaaaaaaaccccccccaccacccaaaaaaccccacccccaaaaaacccccccccccccccccjjjrrrrttttxxxyyyyyyywwrrroooffccccccabccccccccccaaaccccccccccccccccccccccccccaaaaaaaaaccaaaaaaaccccccccccaaccccccccaaaaaaaaaaccccccccccccccaacccccccccccccccaaccccccccccccccccccccjjjjqqqqttttxxyywwwwwwwwrrooofffcccccabcccccccccccccccccccccccccccccccccccccccccaaacacccccaaaaccccccccccccaacccccccccccaaacaaacccccccccccccccccccccccccccccaaacccccccccccccccccccaacjjjjqqqqqttwwwwwwwwwwwrrrooofffcccccabcccccccccccccccccccccccccccccccccccccccccaaccccccccccaacccccccccccccccccccccccccaaacccccccccccccccccccccccccccccccccaaacccccccccccccccccaaaaaajjjjqqqqttwwwwwwsswwrrrrooofffcccccabcccccaaaaccccccccccccccaacaaccccccccccccccccccccccccccccccccccccccccccccccccccccaacccccccccccccccccccccccccccccccaaaaaaaaccaaaacccccccccaaaaaacjjjiqqqtttwwwwsssssrrrrooofffcccccabccccaaaaaccccccccccccccaaaaacccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccaaaaaaaaccaaaaacccccccccaaaaacciiiiqqttswwwssssssrrroooogffcccccabccccaaaaaacccccccccccccaaaaaacccaaaccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccaaaaaccaaaaaaccccccccaaaaacccciiiqqqssssssspppooooooogggacccccabccccaaaaaaccccccccaacccaaaaaaccccaacccccccccccccccccccccccccccccccccaaaaccccccccccccccccccccccccccccccccccccccccccaaaaaaccaaaaaaccccccccaaaaaccccciiiqqsssssspppppoooooggggaaccccabccccaaaaaccccccaaaaacccaaaaaacaacaaaaaccccccccccccccccccccaacccccccaaaaacccccccccccaaaccccccccccccccccccccccccccccaaaaaacccaaaaacccccccccacccccccciiiqqqpssspppppgggggggggaaaccccabccccccaaacccccccaaaaaccccaaaccaaaaaaaacccccccaacccccccaaccaacccccccaaaaaacccccccccaaaacccccccccccaaaaccccccccccccaaccaaacccaaacccccaaacaaaccccccccciiqqppppppphhhggggggggaaaaccccabccccccccccccccccaaaaaccccccccccaaaaaccccccccaaacaaccccaaaaaacccccccaaaaaaaccccccccaaaacccccccccccaaaacccccccccaaaaaacccccccccccccccaaaaaaaccccccccciiippppppphhhhggggggcaaaccccccabaacccccccccccccaaaaaccccccccccccaaaaaccccccccaaaaacccccaaaaaaacccccaaaaacaaacccccccaaacccccccccccaaaacccccccccaaaaacccccccccccccccccaaaaaacccccccccciiiippphhhhhhcccccccaaaccccccabaacccccccccccccccaaacccccccccccaaacaaccccccaaaaaaccccccaaaaaaacccaaccaaacaaaaccaaaccccccccccccccccaaacccccccccaaaaaaacccccccccccccccaaaaaaaacccccccciiihhhhhhhhaaacccccccccccccccabaaccccccccccccccccccccccccccccccaacccccccccaaaaaaaacccaaaaaaccaaaaaacccccaaaacaaaaaccccccccccccccccccccccccccaaaaaaaaccccccccccccccaaaaaaaaaccccccccciihhhhhhcaaaaccccccccccccccaabaaccccccccccccccccccccccccccccccccaacccccccaacaaaaacccaaaaaaccaaaaacccccccaaaaaaaacccccccccccccccccccccccccccaaaaaaaacccccccccaaacaaaaaaaaaacccccccccccchhhaccccaaccccccccccccccaabaaccccccccccccccccccccccccccccccccaaaaaaccccccaaccccccccccaaccaaaaaaacccccaaaaaaaccccccccccccccccccccccccaaaccacaaacccccccccccaaaaaaacaaacaaaaaacccccccccaaacccccccccccccccaaaaaaabccccccccccccccccccccccccccccccccccaaaaaccccccaaccccccccccccccaaaaaaaacaaaaaaaaaaccccccccccccccccccccccccaaaaaaccaaaccccccccccccaaaaaacaaacaaaaaacccccccccaaaccccccccccccccccaaaaaabccccccccccccccccccccccccccccccccaaaaaaaacccccccccccccccccccccaaaaaaaacaaaaaaaaaaaaacccccccccccccccccccccaaaaaacccccccccccccccaaaaaaaaaaaaaaaaaacccccccccccccccccccccccccccccaaaaa"},
    Start = {1, 21, $a},
    End = {155, 21, ${},

    {W, H, _} = Input,
    Graph = build_graph(digraph:new([cyclic]), Input, Input, 1, 1),
    % part 1, mostly
    Travel = digraph:get_short_path(Graph, Start, End),
    % pprint(Travel, W, H, 1, 1),
    io:fwrite("~p~n", [length(Travel) - 1]),
    % part 2
    BNodes = [ V || {_, _, H} = V <- digraph:vertices(Graph), H == $b],
    ATravels = [ length(digraph:get_short_path(Graph, B, End)) || B <- BNodes ],
    % pprint(ATravel, W, H, 1, 1),
    io:fwrite("~p~n", [lists:min(ATravels)]).

build_graph(Graph, _Map, {_, _, []}, _X, _Y) ->
    Graph;
build_graph(Graph, Map, {Width, Height, [Point | MapTail]}, X, Y) ->
    Node = {X, Y, Point},
    digraph:add_vertex(Graph, Node),

    Neighbors = neighbors(Map, Node),
    [ digraph:add_vertex(Graph, N) || N <- Neighbors ],
    [ digraph:add_edge(Graph, Node, N) || {_, _, H} = N <- Neighbors, H =< Point + 1 ],

    {NewX, NewY} = case X of
        Width -> {1, Y + 1};
        _     -> {X + 1, Y}
    end,
    build_graph(Graph, Map, {Width, Height, MapTail}, NewX, NewY).


neighbors(Map, {X, Y, _P}) ->
    Options = [
        height(X + 1, Y, Map), % right
        height(X, Y + 1, Map), % bottom
        height(X - 1, Y, Map), % left
        height(X, Y - 1, Map)  % top
    ],
    [ Next || {_, _, NW} = Next <- Options, NW /= nogo ].

height(X, _Y, _Map) when X =< 0 ->
    {0, 0, nogo};
height(_X, Y, _Map) when Y =< 0 ->
    {0, 0, nogo};
height(X, _Y, {MaxX, _MaxY, _Mapdata}) when X > MaxX ->
    {0, 0, nogo};
height(_X, Y, {_MaxX, MaxY, _Mapdata}) when Y > MaxY ->
    {0, 0, nogo};
height(X, Y, {MaxX, _MaxY, MapData}) ->
    {X, Y, lists:nth((Y - 1) * MaxX + X, MapData)}.

pprint(_, _, Height, _, Y) when Y > Height ->
    io:fwrite("~n~n");
pprint(Travel, Width, Height, X, Y) ->
    C = [ T || {TX, TY, _} = T <- Travel, TX == X, TY == Y ],
    case C of
        [] -> io:fwrite(" ");
        [{_, _, Letter} | _] -> io:fwrite("~c", [Letter])
    end,
    case X == Width of
        true -> io:fwrite("~n"), pprint(Travel, Width, Height, 1, Y + 1);
        false -> pprint(Travel, Width, Height, X + 1, Y)
    end.
