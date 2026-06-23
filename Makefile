MODULE_PATH     := ps3iso
TESTS_PATH      := tests

default:
	@echo "Available targets: lint-check,lint-fix"

lint-check:
	uv run autoflake --check-diff $(MODULE_PATH) $(TESTS_PATH)
	uv run mypy -p $(MODULE_PATH)

lint-fix:
	uv run autoflake --in-place $(MODULE_PATH) $(TESTS_PATH)

test:
	uv run pytest -vvv
	
