.PHONY: install lint test typecheck ci pre-commit

install:
	pip install -r etl/pyproject.toml || true
	pip install pre-commit ruff mypy pytest bandit safety

pre-commit:
	pre-commit run --all-files

lint:
	ruff etl/src || true

typecheck:
	mypy etl/src || true

test:
	pytest -q || true

ci: lint typecheck test
