module CodeWarsTests exposing (..)

import CodeWars exposing (..)
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


suite : Test
suite =
    test "one plus one equals two" <| \_ -> Expect.equal 2 (1 + 1)


addThree : Test
addThree =
    test "one plus 2 equals three" <| \_ -> Expect.equal 3 (1 + 2)


multiplyTests : Test
multiplyTests =
    describe "mulitply tests"
        [ test "2 times 4" <|
            \_ -> Expect.equal 8 (CodeWars.multiply 2 4)
        , test "3 times 5" <|
            \_ -> Expect.equal 15 (CodeWars.multiply 3 5)
        ]


multiply3sOr5sTests : Test
multiply3sOr5sTests =
    describe "almost fizzbuzzish"
        [ test "with 10" <|
            \_ ->
                Expect.equal 23 <|
                    CodeWars.multiply3sOr5s 10
        , test "with 200" <|
            \_ ->
                CodeWars.multiply3sOr5s 200
                    |> Expect.equal 9168
        , test "with other guy" <|
            \_ ->
                CodeWars.testGuy 200
                    |> Expect.equal 9168
        , test "wither better other guy" <|
            \_ ->
                CodeWars.betterTestGuy 200
                    |> Expect.equal 9168
        ]
