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


finalTest : Int -> Int
finalTest num =
    filteredRange (\x -> x % 3 == 0 || x % 5 == 0) 1 (num - 1)
        |> List.sum


filteredRange : (Int -> Bool) -> Int -> Int -> List Int
filteredRange fn lo hi =
    filteredRangeHelp fn lo hi []


filteredRangeHelp : (Int -> Bool) -> Int -> Int -> List Int -> List Int
filteredRangeHelp fn lo hi list =
    if lo <= hi then
        if fn hi then
            filteredRangeHelp fn lo (hi - 1) ((::) hi list)
        else
            filteredRangeHelp fn lo (hi - 1) list
    else
        list


getVowelCount : String -> Int
getVowelCount =
    String.filter (\x -> String.contains (String.fromChar x) "aeiou")
        >> String.length


getVowelCount2 : String -> Int
getVowelCount2 =
    String.foldl
        (\char total ->
            if isVowel char then
                total + 1
            else
                total
        )
        0


isVowel : Char -> Bool
isVowel c =
    String.contains (String.fromChar c) "aeiou"
