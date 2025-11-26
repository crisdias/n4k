from setuptools import setup

setup(
    name="nk4",
    version="0.1.0",
    py_modules=["nk4"],
    install_requires=[
        "newspaper4k",
    ],
    entry_points={
        "console_scripts": [
            "nk4=nk4:main",
        ],
    },
)
