-- file: ch03/BookStore.hs
data BookInfo = Book Int String [String]
                deriving (Show)

-- file: ch03/BookStore.hs
data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

-- file: ch03/BookStore.hs
-- Create a new value of type BookInfo
myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]

-- file: ch03/BookStore.hs
type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody

-- file: ch03/BookStore.hs
-- BookRecord is a shorter name for a verobse type
type BookRecord = (BookInfo, BookReview)

-- file: ch03/BookStore.hs
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery -- no arguments for this constructor
                 | Invoice CustomerID
                   deriving (Show)

-- file: ch03/BookStore.hs
bookID       (Book id title authors) = id
bookTitle    (Book id title authors) = title
bookAuthors  (Book id title authors) = authors

-- file: ch03/BookStore.hs
-- The underscore character '-' is call a wild card
nicerID       (Book id _     _      ) = id
nicerTitle    (Book _  title authors) = title
nicerAuthors  (Book _  _     authors) = authors

-- file: ch03/BookStore.hs
data Customer = Customer {
      customerID      :: CustomerID
    , customerName    :: String
    , customerAddress :: Address
    } deriving (Show)

-- file: ch03/BookStore.hs
customer1 = Customer 271828 "J.R. Hacker"
            ["255 Syntax Ct", 
            "Ailpitas, CA 95134", 
            "USA"]

-- file: ch03/BookStore.hs
customer2 = Customer {
              customerID = 271828
            , customerAddress = ["1048576 Disk Drive",
                                 "Milpitas, CA 95134", 
                                 "USA"]
            , customerName = "Jane Q. Citizen"
            }
