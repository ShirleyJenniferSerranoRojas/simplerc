#' Estimate the parameters of a random walk (mu and sigma)
#'
#' @param positions a sequence of positions
#' @return fitted walk estimated parameters
#' @examples
#' fit_walk(walk)
#' @export
fit_walk <- function(positions) {

  step_lengths <- diff(positions)
  list(mu = mean(step_lengths),
       sigma = sd(step_lengths))
}
