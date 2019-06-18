library(vdiffr)
library(ggplot2)
test_that("USA key glyph work", {
  df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])

  # specify key glyph by name
  expect_doppelganger("USA key glyphs",
                      ggplot(df, aes(x, y)) +
                        geom_point(aes(color = z), key_glyph = draw_key_usa)
  )
})
