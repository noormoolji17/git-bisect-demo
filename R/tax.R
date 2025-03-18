tax_rate <- function() {
  0.10
}

add_tax <- function(amount) {
  round(amount * (1 + tax_rate()), 2)
}
