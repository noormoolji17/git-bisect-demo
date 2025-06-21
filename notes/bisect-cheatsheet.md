# Bisect Cheatsheet

```sh
git bisect start HEAD known-good
git bisect run Rscript tests/test-pricing.R
git bisect reset
```
