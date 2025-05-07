format_money <- function(amount) {
  sprintf("$%.2f", amount)
}

receipt_line <- function(item) {
  paste(
    item$size,
    item$milk,
    item$drink,
    paste0("x", item$shots),
    format_money(line_total(item$drink, item$size, item$milk, item$shots))
  )
}

receipt <- function(items, student_discount = FALSE, stamps = 0, coupon = NULL) {
  c(
    vapply(items, receipt_line, character(1)),
    paste("Total", format_money(order_total(items, student_discount, stamps, coupon)))
  )
}
