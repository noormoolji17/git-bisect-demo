source("coffee.R")

assert_equal <- function(actual, expected, label) {
  if (!isTRUE(all.equal(actual, expected))) {
    stop(label, ": expected ", expected, ", got ", actual, call. = FALSE)
  }
}

morning_order <- list(
  list(drink = "latte", size = "large", milk = "oat", shots = 2),
  list(drink = "tea", size = "small", milk = "dairy", shots = 1)
)

assert_equal(line_total("latte", size = "small", milk = "dairy", shots = 1), 4.20, "small latte")
assert_equal(line_total("espresso", size = "medium", milk = "dairy", shots = 2), 4.60, "espresso with extra shot")
assert_equal(line_total("FW", size = "medium", milk = "dairy", shots = 1), 4.80, "flat white alias")
assert_equal(line_total("latte", size = "large", milk = "oat", shots = 2), 6.80, "large oat latte with extra shot")

assert_equal(order_total(morning_order, student_discount = TRUE), 9.5, "discounted morning order")
assert_equal(order_total(morning_order, stamps = 10), 8.98, "loyalty order")
assert_equal(order_total(morning_order, coupon = "CAMPUS5"), 10.03, "coupon order")
