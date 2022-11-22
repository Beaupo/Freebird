#' lm function 
#' 
#' @param  numarical data
#' 
#' @return  carapace length body_depth lm plot
#' 
#' 
#' 
 lm_function <- function(carapace_length, body_depth){
model_fit <- lm(carapace_length ~ body_depth, data = crabs)
broom::tidy(model_fit)
broom::augment(model_fit) -> augmented_fit
qqnorm(augmented_fit$.resid)
qqline(augmented_fit$.resid, col = "purple")
}
