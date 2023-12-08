FROM python:3.12

RUN adduser -uid 2001 app
RUN mkdir /app
RUN chown -R app:app /app

# Update pip
RUN pip install --upgrade pip

# set environment varibles
ENV PYTHONFAULTHANDLER 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONHASHSEED random
ENV PIP_NO_CACHE_DIR off
ENV PIP_DISABLE_PIP_VERSION_CHECK on

# Install poetry
RUN pip install poetry


COPY install.sh /usr/bin/install
RUN chmod +x /usr/bin/install

