stamp_message <- function(stamps) {
  remaining <- max(10 - stamps, 0)
  if (remaining == 0) {
    return("Free upgrade unlocked")
  }
  paste(remaining, "stamps until the next reward")
}
