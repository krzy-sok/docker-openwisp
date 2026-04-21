FROM astral/uv:debian-slim

RUN apt-get update && apt-get install -y git

# clone git
ARG ANTISNIFF_MODULE_SOURCE=https://github.com/krzy-sok/antisniff_module.git
RUN git clone https://github.com/krzy-sok/antisniff_module.git
WORKDIR /antisniff_module
RUN git checkout main && git pull

COPY --chown=openwisp:root ./antisniff/model.onnx \
    ./model.onnx
# copy model

# run program

ENTRYPOINT ["uv", "run", "./main.py"]
