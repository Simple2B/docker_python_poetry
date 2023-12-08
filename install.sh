#!/usr/bin/env bash
mv /src/poetry.toml /app/ &&
mv /src/pyproject.toml /app/ &&
mv /src/poetry.lock /app/ &&

cd /app &&
poetry install --without dev &&
mv /src/* /app/
