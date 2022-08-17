module Person where

import Prelude

data Person = Person { name :: String, age :: Int }

showPerson :: Person -> String
showPerson (Person o) = "name:" <> o.name <> ", age:" <> show o.age

aPerson :: Person
aPerson = Person { name: "hoge", age: 123 }
