.PHONY: install test typecheck format-check format lint build ci ci-fix release-dry-run

# One-time setup: install Python (if needed) and dependencies
install:
	uv sync --dev

# Run tests
test:
	uv run pytest tests

# Type check
typecheck:
	uv run ty check src

# Check formatting (no write)
format-check:
	uv run ruff format src tests --check

# Apply formatting
format:
	uv run ruff format src tests

# Lint (with auto-fix)
lint:
	uv run ruff check src tests

lint-fix:
	uv run ruff check src tests --fix --unsafe-fixes

# Build package
build:
	uv build

# Full CI pipeline (same order as .github/workflows/ci.yml)
ci: install test typecheck format-check lint build

# Apply format and lint fixes (no --check)
ci-fix: format lint-fix

# Show next version from conventional commits (no tag/commit)
release-dry-run:
	uv run semantic-release --noop version
