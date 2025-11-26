from setuptools import setup

setup(
    name="n4k",
    version="0.1.0",
    py_modules=["n4k"],
    install_requires=[
        "newspaper4k",
    ],
    entry_points={
        "console_scripts": [
            "n4k=n4k:main",
        ],
    },
)
