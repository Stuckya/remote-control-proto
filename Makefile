.PHONY: tools lint breaking generate check

tools:
	pip install --require-hashes -r requirements-codegen.txt

lint:
	buf lint
	buf format --diff --exit-code

breaking:
	buf breaking --against '.git#branch=main'

generate:
	buf generate

# What CI runs on a pull request: generated code must match the schema exactly.
check: lint generate
	git diff --exit-code -- src/omote generated
