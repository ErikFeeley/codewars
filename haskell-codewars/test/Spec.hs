import           Test.Hspec

import           Lib        (solution)

main :: IO ()
main = hspec $ do
    describe "tis only a test" $ do
        describe "adds numbers" $ do
            it "1 + 1" $ do
                1 + 1 `shouldBe` 2
        describe "code wars tests" $ do
            it "3s and 5s" $ do
                (solution 12) `shouldBe` 33
