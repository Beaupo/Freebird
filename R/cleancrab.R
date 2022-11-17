#' Dropping the na's
#' 
#' @param dropping the na's
#' 
#' @return the clean data
#'
#' @export
cleaning_crabs <- function(filepath){
  clean_crabs <- read_csv(filepath)
  data_clean <- clean_crabs %>% 
    drop_na()
  if (sum(is.na(d_c)) == 0){
    return(good_to_go)
  } else {
    print("NAs in the house")
  }
}