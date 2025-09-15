FROM lscr.io/linuxserver/homeassistant:latest

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN set -euo pipefail \
  && PY_LOCAL_PATH="$(find /usr/local/lib -maxdepth 1 -type d -name 'python*')" \
  && PY_LOCAL_PATH="${PY_LOCAL_PATH%.bak}" \
  && mv "${PY_LOCAL_PATH}.bak" "${PY_LOCAL_PATH}" \
  && chown -R 8123:8123 "${PY_LOCAL_PATH}"
