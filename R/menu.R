menu <- data.frame(
  drink = c("espresso", "latte", "flat white", "mocha", "tea", "cold brew"),
  base_price = c(3.00, 4.20, 4.10, 4.60, 2.80, 4.80),
  stringsAsFactors = FALSE
)

find_menu_item <- function(drink) {
  row <- menu[menu$drink == drink, ]
  if (nrow(row) == 0) {
    stop("Unknown drink: ", drink)
  }
  row
}
