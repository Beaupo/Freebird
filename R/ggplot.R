#' ploting using ggplot
#' 
#' @param ggplot formation
#' 
#' @return plot
#'
#' @examples
#' 
plot_it <- function(data) {
  ggplot(data = crabs, mapping = aes(x = carapace_length, y = body_depth)) +
    geom_point()
}