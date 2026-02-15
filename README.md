# python-template

Add your description here.

## Project layout

- **`src/python_template/`** — your library/package code (importable as `python_template`)
- **`main.py`** — CLI entry point; run with `uv run python main.py`
- **`tests/`** — pytest tests

## Development

- **Install:** `uv sync`
- **Tests:** `uv run pytest tests`
- **Lint/format:** `uv run ruff check src tests` / `uv run ruff format src tests`
- **Type check:** `uv run ty check src`

## Versioning & releases (conventional commits + semver)

This project uses [Conventional Commits](https://www.conventionalcommits.org/), [python-semantic-release](https://python-semantic-release.readthedocs.io/) for tag/release creation, and [uv-dynamic-versioning](https://github.com/ninoseki/uv-dynamic-versioning) to derive the package version from git tags at build time.

- **Commit format:** `type(scope): description` — e.g. `feat: add X`, `fix: correct Y`, `BREAKING CHANGE:` for major bumps.
- **Version** is derived from git tags by `uv-dynamic-versioning` at build time — no version is stored in `pyproject.toml`. Types: `feat` → minor, `fix`/`perf` → patch, breaking change → major.
- **Releases run on push** (and can be triggered manually):
  - **main** → full release (e.g. `v1.0.0`, `v1.1.0`)
  - **dev** → release candidate (e.g. `v1.0.0-rc.1`, `v1.1.0-rc.2`)
  - **feat/** → alpha (e.g. `v1.2.0-alpha.1`; build metadata includes branch name so tags don't clash)
- **Publish (PyPI):** After a release from **main**, run the **Publish** workflow with the tag and set `PYPI_API_TOKEN`.
- **Local dry run:** `uv run semantic-release --noop version` to see the next version without changing anything.
- **Build:** `uv build` (wheels and sdist in `dist/`)
