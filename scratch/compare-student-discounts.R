source("coffee.R")

sample_order <- list(
  list(drink = "mocha", size = "medium", milk = "soy", shots = 1),
  list(drink = "tea", size = "small", milk = "dairy", shots = 1)
)

print(order_total(sample_order))
print(order_total(sample_order, student_discount = TRUE))
