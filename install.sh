#!/usr/bin/env bash
chown -R app:app /app && cd /app && poetry install --without dev
