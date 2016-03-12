module Module3.Task15 where

import Prelude hiding (repeat)

repeat = iterate repeatHelper
repeatHelper = id
