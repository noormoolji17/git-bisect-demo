student_discount_rate <- function(enabled) {
  if (isTRUE(enabled)) {
    return(0.10)
  }
  0
}
