module CodeWars exposing (..)


multiply : Int -> Int -> Int
multiply a b =
    a * b


multiply3sOr5s : Int -> Int
multiply3sOr5s num =
    List.range 1 (num - 1)
        |> List.filter (\x -> x % 3 == 0 || x % 5 == 0)
        |> List.sum


testGuy : Int -> Int
testGuy num =
    List.foldr
        (\x y ->
            if x % 3 == 0 || x % 5 == 0 then
                x + y
            else
                y
        )
        0
    <|
        List.range 1 (num - 1)



-- is it really better?


betterTestGuy : Int -> Int
betterTestGuy num =
    List.range 1 (num - 1)
        |> List.foldr
            (\x y ->
                if x % 3 == 0 || x % 5 == 0 then
                    x + y
                else
                    y
            )
            0
