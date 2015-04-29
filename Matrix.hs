module Matrix where

-- If Ax = b, what is x?
solveAxb :: Fractional t => (t, t, t, t) -> (t, t) -> (t, t)
solveAxb (a11, a12,
          a21, a22)
         (b1,
          b2)
  = (( a22 * b1 - a12 * b2) / det,
     (-a21 * b1 + a11 * b2) / det)
  where det = a11 * a22 - a12 * a21

a :: Fractional t => (t, t, t, t)
a = (64919121,   -159018721,
     41869520.5, -102558961)

b :: Fractional t => (t, t)
b = (1,
     0)
