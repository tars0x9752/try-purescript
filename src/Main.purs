module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Euler (answer)
import Num (circleArea)
import Person (aPerson, showPerson)
import Val (a_function)
import Sandbox (showAddress, showEntry, a_address, a_entry)

main :: Effect Unit
main = do
  log "-- Euler --"
  log (show answer)
  log ""
  log "-- Person --"
  log (showPerson aPerson)
  log ""
  log "-- Num --"
  log "circleArea 1"
  log (show (circleArea 1.0))
  log "circleArea 3"
  log (show (circleArea 3.0))
  log ""
  log "-- Val --"
  log "a_function 3"
  log (show (a_function 3))
  log ""
  log "-- Sandbox --"
  log (showAddress a_address)
  log (showEntry a_entry)

