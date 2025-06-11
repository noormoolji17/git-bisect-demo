milk_surcharge <- function(milk) {
  alternatives <- c("oat", "soy", "almond")
  if (milk %in% alternatives) {
    return(alternative_milk_charge)
  }
  0
}

extra_shot_charge <- function(shots) {
  max(shots - 1, 0) * extra_shot_price
}

line_total <- function(drink, size = "medium", milk = "dairy", shots = 1) {
  row <- find_menu_item(drink)
  round(row$base_price + size_surcharge(size) + milk_surcharge(milk) + extra_shot_charge(shots), 2)
}

order_subtotal <- function(items) {
  sum(vapply(items, function(item) {
    validate_item(item)
    line_total(
      drink = item$drink,
      size = item$size,
      milk = item$milk,
      shots = item$shots
    )
  }, numeric(1)))
}

order_total <- function(items, student_discount = FALSE, stamps = 0, coupon = NULL) {
  subtotal <- order_subtotal(items)
  discount <- student_discount_rate(student_discount) +
    loyalty_discount_rate(stamps) +
    coupon_discount_rate(coupon)
  add_tax(subtotal * (1 - discount))
}
