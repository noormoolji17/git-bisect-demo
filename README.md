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

For the bisect exercise, start from the known-good tag and compare it with the
current broken `HEAD`.
