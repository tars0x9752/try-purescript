module Sandbox where

import Prelude

import Data.List (List)

type Address
  = { street :: String
    , city :: String
    , state :: String
    }

type Entry
  = { firstName :: String
    , lastName :: String
    , address :: Address
    }

type AddressBook = List Entry

showAddress :: Address -> String
showAddress addr = addr.street <> ", " <>
                   addr.city <> ", " <>
                   addr.state

showEntry :: Entry -> String
showEntry entry = entry.lastName <> ", " <>
                  entry.firstName <> ": " <>
                  showAddress entry.address

a_address ∷ Address
a_address = { street: "123 Fake St.", city: "Faketown", state: "CA" }

a_entry :: Entry
a_entry = { firstName: "John", lastName: "Smith", address: a_address }
