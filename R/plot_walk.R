#' Plots a random walk
#'
#' @param walk a simulated random walk
#' @return plot a random walk over 100 time steps.
#' @examples
#' plot_walk(walk)
#' plot_walk(simulated_walk)
#' @export
plot_walk <- function(walk) {
  #
  dat <- dplyr::tibble(
    time = seq_along(walk),
    position = walk
  )
  ggplot2::ggplot(dat, ggplot2::aes(time, position)) +
    ggplot2::geom_line() +
    ggplot2::geom_point() +
    ggplot2::theme_minimal()
}
