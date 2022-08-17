module Val where

import Prelude ((*)) -- * operator

integer_value :: Int
integer_value = 42

number_value :: Number
number_value = 123.0

string_value :: String
string_value = "this is text"

a_function :: Int -> Int
a_function a = a * 2 

-- Algebraic Data Type --
data HogeUnion
  = HogeA
  | HogeB
  | HogeC

example1 :: HogeUnion
example1 = HogeA

example2 :: HogeUnion
example2 = HogeB

-- A "box" that can store only Ints
data IntBoxType = IntBoxValue Int

example3 :: IntBoxType
example3 = IntBoxValue 4

example4 :: Int -> IntBoxType
example4 x = IntBoxValue x

-- A "box" type that can store values of another type.
data AnyBoxType anotherType = AnyBoxValue anotherType

example5 ∷ AnyBoxType Int
example5 = AnyBoxValue 4

example6 :: Int -> AnyBoxType Int
example6 x = AnyBoxValue x

example7 :: AnyBoxType (AnyBoxType Int)
example7 = AnyBoxValue (AnyBoxValue 4)

-- You can read as
-- "If you give me a value that has a given type, which I'll refer to as
-- `someType`, then I can give you back a Box that stores a value of
-- `someType`."
example8 :: forall someType. someType -> AnyBoxType someType
example8 valueWhoseTypeIs_someType = AnyBoxValue valueWhoseTypeIs_someType
