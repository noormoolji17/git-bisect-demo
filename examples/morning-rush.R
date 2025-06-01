source("coffee.R")

orders <- list(
  list(drink = "latte", size = "large", milk = "oat", shots = 2),
  list(drink = "flat white", size = "medium", milk = "dairy", shots = 1),
  list(drink = "tea", size = "small", milk = "dairy", shots = 1)
)

cat(receipt(orders, student_discount = TRUE, coupon = "CAMPUS5"), sep = "\n")
