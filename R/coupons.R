coupon_discount_rate <- function(code) {
  if (is.null(code) || identical(code, "")) {
    return(0)
  }

  code <- toupper(trimws(code))
  if (code == "CAMPUS5") {
    return(0.05)
  }
  if (code == "MUGCLUB") {
    return(0.08)
  }

  0
}
