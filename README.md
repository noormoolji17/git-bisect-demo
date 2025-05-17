# Campus Coffee Calculator

Tiny R scripts for pricing coffee orders at a fictional campus cart.

```r
source("coffee.R")
line_total("latte", size = "large", milk = "oat", shots = 2)
```

Run the checks with:

```sh
Rscript tests/test-pricing.R
```

Bisect starter:

```sh
git bisect start HEAD known-good
git bisect run Rscript tests/test-pricing.R
```
