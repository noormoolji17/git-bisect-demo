required_item_fields <- c("drink", "size", "milk", "shots")

validate_item <- function(item) {
  missing <- setdiff(required_item_fields, names(item))
  if (length(missing) > 0) {
    stop("Order item missing fields: ", paste(missing, collapse = ", "))
  }

  invisible(TRUE)
}
