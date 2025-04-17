normalise_size <- function(size) {
  key <- tolower(trimws(size))

  if (key %in% c("small", "s")) {
    return("small")
  }
  if (key %in% c("medium", "m", "regular", "large", "l")) {
    return("medium")
  }

  stop("Unknown size: ", size)
}

size_surcharge <- function(size) {
  normalised <- normalise_size(size)

  if (normalised == "small") {
    return(0)
  }
  if (normalised == "medium") {
    return(0.70)
  }
  if (normalised == "large") {
    return(1.10)
  }
}
