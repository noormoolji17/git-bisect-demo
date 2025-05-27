.PHONY: test example

test:
	Rscript tests/test-pricing.R

example:
	Rscript examples/morning-rush.R
