all:

test:
	for test in zanardo.*/tests; do \
		make -C "$$test" ; \
	done

.PHONY: all test
