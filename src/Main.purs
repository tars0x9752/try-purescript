module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Euler (answer)
import Person (aPerson, showPerson)

main :: Effect Unit
main = do
  log "Euler 1"
  log (show answer)
  log "Person 1"
  log (showPerson aPerson)
