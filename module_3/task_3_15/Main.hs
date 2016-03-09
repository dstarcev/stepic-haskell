import Prelude hiding (repeat)

repeat = iterate repeatHelper
repeatHelper = id
