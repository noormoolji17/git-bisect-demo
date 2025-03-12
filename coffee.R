menu <- data.frame(
  drink = c("espresso", "latte", "flat white", "mocha", "tea"),
  base_price = c(3.00, 4.20, 4.10, 4.60, 2.80),
  stringsAsFactors = FALSE
)

size_surcharge <- function(size) {
  if (size == "small") {
    return(0)
  }
  if (size == "medium") {
    return(0.70)
  }
  if (size == "large") {
    return(1.10)
  }
  stop("Unknown size: ", size)
}

milk_surcharge <- function(milk) {
  if (milk %in% c("oat", "soy", "almond")) {
    return(0.60)
  }
  0
}

line_total <- function(drink, size = "medium", milk = "dairy", shots = 1) {
  row <- menu[menu$drink == drink, ]
  if (nrow(row) == 0) {
    stop("Unknown drink: ", drink)
  }

  extra_shots <- max(shots - 1, 0) * 0.90
  round(row$base_price + size_surcharge(size) + milk_surcharge(milk) + extra_shots, 2)
}

order_total <- function(items, student_discount = FALSE) {
  subtotal <- sum(vapply(items, function(item) {
    line_total(
      drink = item$drink,
      size = item$size,
      milk = item$milk,
      shots = item$shots
    )
  }, numeric(1)))

  if (student_discount) {
    subtotal <- subtotal * 0.9
  }

  round(subtotal * 1.1, 2)
}
