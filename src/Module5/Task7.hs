module Module5.Task7 where
import Module5.Task5 (Log(..))

bindLog :: Log a -> (a -> Log b) -> Log b
bindLog (Log msga a) f = Log (msga ++ msgb) b where
  (Log msgb b) = f a
