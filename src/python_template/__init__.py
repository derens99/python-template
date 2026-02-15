"""Python template package — put your library code here."""

from importlib.metadata import version as _version

__version__ = _version("python-template")
__all__ = ["__version__", "hello"]


def hello() -> str:
    """Return a greeting. Replace with your own logic."""
    return "Hello from python-template!"
