FROM python:3.14-alpine

ENV PAI_CONFIG_FILE=/data/options.json

RUN apk add --no-cache git tzdata

WORKDIR /opt/pai

# Pull your fork + branch with the Spectra fix
RUN git clone --depth 1 --branch feature/spectra-fw7-power-clean https://github.com/andrevza/pai.git /opt/pai

RUN pip install --no-cache-dir -r requirements.txt \
 && pip install --no-cache-dir .

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["sh", "/run.sh"]

