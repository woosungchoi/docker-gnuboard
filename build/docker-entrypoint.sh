#!/bin/bash
set -euo pipefail

# 라이믹스 최신버전 자동설치 스크립트 시작
if [ ! -e rhymix ]; then
mkdir rhymix \
&& cd rhymix \
&& curl -o rhymix.tar.gz -fSL https://github.com/rhymix/rhymix/tarball/master \
&& tar -xf rhymix.tar.gz -C ./ --strip-components=1 \
&& rm rhymix.tar.gz && mkdir files \
&& chown -R www-data:www-data ./ \
&& chmod -R 777 files \
&& cd ..
fi
# 라이믹스 자동설치 스크립트 끝

exec "$@"
