[project]
name = "fishmlserv"
version = "0.8.0"
description = "ML KNN - using sklearn"
authors = [
    {name = "Kimwonjoon", email = "kimpass189@gmail.com"},
]
dependencies = [
    "fastapi>=0.112.2",
    "uvicorn[standard]>=0.30.6",
    "matplotlib>=3.9.2",
    "scikit-learn>=1.5.1",
    "pandas>=2.2.2",
    "pyarrow>=17.0.0",
]
requires-python = ">=3.11"
readme = "README.md"
license = {text = "MIT"}


[tool.pdm]
distribution = true
#packages = [
#    { include = "fishmlserv" },
#]
#include = [
#    "src/fishmlserv/model/model.pkl"
#]

[tool.pdm.dev-dependencies]
note = [
    "notebook>=7.2.2",
]
