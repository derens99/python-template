"""CLI entry point. Run with: uv run python main.py"""

from python_template import hello


def main() -> None:
    print(hello())


if __name__ == "__main__":
    main()
