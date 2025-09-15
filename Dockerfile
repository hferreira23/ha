FROM lscr.io/linuxserver/homeassistant:latest

RUN \
  PY_LOCAL_PATH=$(find /usr/local/lib -maxdepth 1 -name python* -type d) && \
  PY_LOCAL_PATH="$${PY_LOCAL_PATH%.bak}" && \
  [[ -d "$${PY_LOCAL_PATH}.bak" ]] && \
    mv "$${PY_LOCAL_PATH}.bak" "$${PY_LOCAL_PATH}" && \
  chown -R 8123:8123 "$${PY_LOCAL_PATH}"
