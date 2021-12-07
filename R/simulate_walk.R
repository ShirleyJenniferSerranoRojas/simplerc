#' Simulate a random walk
#'
#' @param t time steps
#' @param mu Step lengths drawn from Normal(mu, sigma)
#' @param sigma Step lengths drawn from Normal(mu, sigma)
#' @return a simulated random walk
#' @examples
#' simulate_walk(t=100, mu=0.5,sigma=2)
#' simulate_walk(t=200, mu=0.8, sigma=2.5)
#' @export
simulate_walk <- function(t, mu, sigma) {
  cumsum(rnorm(t, mean = mu, sd = sigma))
}
