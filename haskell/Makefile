LIBRARY_NAME=
TEST_SUITE=${LIBRARY_NAME}-test

test: build
	# make test TEST_OPTS="--match=/pattern/"
	cabal test --test-show-details=direct $(TEST_OPTS)

clean:
	rm -rf dist

run:
	cabal run

build:
	cabal build

watch:
	ghcid --target=$(LIBRARY_NAME) --run=":! ghcid --target=$(TEST_SUITE) --run" --warnings $$@
