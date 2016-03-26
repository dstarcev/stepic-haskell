module Module5.Task16 where
import Control.Monad.Reader (Reader, asks)

-- system code
type User = String
type Password = String
type UsersTable = [(User, Password)]

-- solution code
usersWithBadPasswords :: Reader UsersTable [User]
usersWithBadPasswords = asks $ map fst . filter isBad where
  isBad = ("123456" ==) . snd
