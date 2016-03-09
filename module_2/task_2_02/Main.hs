import Data.Function

multSecond = g `on` h

g = (*)

h = snd
