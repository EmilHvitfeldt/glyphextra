#' Title
#'
#' @inheritParams ggplot2::draw_key
#'
#' @return A grid grob.
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'   geom_point(key_glyph = draw_key_usa)
#' @importFrom grid grobTree polygonGrob gpar
#' @importFrom ggplot2 .pt
#' @importFrom rlang %||%
draw_key_usa <- function(data, params, size) {
  grobTree(
    polygonGrob(x = usa_draw_data[, 1],
                y = usa_draw_data[, 2]),
    gp = gpar(
      col = NULL,
      fill = data$colour %||% "grey20",
      lwd = (data$size %||% 0.5) * .pt,
      lty = data$linetype %||% 0
    )
  )
}
