loyalty_discount_rate <- function(stamps) {
  if (stamps >= 10) {
    return(0.15)
  }
  if (stamps >= 5) {
    return(0.05)
  }
  0
}
