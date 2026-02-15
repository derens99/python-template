"""Example test — add your tests here."""

from python_template import hello


def test_hello_returns_greeting() -> None:
    assert "python-template" in hello()
