module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Euler (answer)
import Person (aPerson, showPerson)
import Hoge (circleArea)

main :: Effect Unit
main = do
  log "Euler"
  log (show answer)
  log "Person"
  log (showPerson aPerson)
  log "circleArea 1"
  log (show (circleArea 1.0))
  log "circleArea 3"
  log (show (circleArea 3.0))
