module Module2.Task2 where

import Data.Function

multSecond = g `on` h

g = (*)

h = snd
