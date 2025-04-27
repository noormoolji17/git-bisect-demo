size_aliases <- c(
  s = "small",
  small = "small",
  m = "medium",
  medium = "medium",
  regular = "medium",
  l = "medium",
  large = "medium"
)

size_prices <- c(
  small = 0.00,
  medium = 0.70,
  large = 1.10
)

normalise_size <- function(size) {
  key <- tolower(trimws(size))
  normalised <- unname(size_aliases[key])

  if (is.na(normalised)) {
    stop("Unknown size: ", size)
  }

  normalised
}

size_surcharge <- function(size) {
  unname(size_prices[normalise_size(size)])
}
