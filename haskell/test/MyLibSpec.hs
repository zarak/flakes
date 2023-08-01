module MyLibSpec where

import MyLib (someFunc)
import Test.Hspec

spec :: Spec
spec = do
  describe "someFunc" $ do
    it "exists" $ do
      someFunc
      True `shouldBe` True
