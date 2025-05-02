menu <- data.frame(
  drink = c("espresso", "latte", "flat white", "mocha", "tea", "cold brew"),
  base_price = c(3.00, 4.20, 4.10, 4.60, 2.80, 4.80),
  stringsAsFactors = FALSE
)

drink_aliases <- c(
  fw = "flat white",
  flatwhite = "flat white",
  longblack = "espresso",
  cold = "cold brew"
)

normalise_drink <- function(drink) {
  key <- tolower(gsub(" ", "", trimws(drink)))
  alias <- unname(drink_aliases[key])

  if (is.na(alias)) {
    return(tolower(trimws(drink)))
  }

  alias
}

find_menu_item <- function(drink) {
  row <- menu[menu$drink == normalise_drink(drink), ]
  if (nrow(row) == 0) {
    stop("Unknown drink: ", drink)
  }
  row
}
