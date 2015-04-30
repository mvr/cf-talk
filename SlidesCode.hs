decimal :: RealFrac a => a -> [Integer]
decimal a = let d = floor a in
            d : decimal ((a - fromInteger d) * 10)

continuedFraction :: RealFrac a => a -> [Integer]
continuedFraction a = let d = floor a in
                      d : continuedFraction (recip (a - fromInteger d))


main = undefined
