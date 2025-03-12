source("coffee.R")

assert_equal <- function(actual, expected, label) {
  if (!isTRUE(all.equal(actual, expected))) {
    stop(label, ": expected ", expected, ", got ", actual, call. = FALSE)
  }
}

assert_equal(line_total("latte", size = "small", milk = "dairy", shots = 1), 4.20, "small latte")
assert_equal(line_total("latte", size = "large", milk = "oat", shots = 2), 6.80, "large oat latte with extra shot")

morning_order <- list(
  list(drink = "latte", size = "large", milk = "oat", shots = 2),
  list(drink = "tea", size = "small", milk = "dairy", shots = 1)
)

assert_equal(order_total(morning_order, student_discount = TRUE), 9.5, "discounted morning order")
