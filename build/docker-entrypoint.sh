#!/bin/bash
set -euo pipefail

# 그누보드 최신버전 자동설치 스크립트 시작
if [ ! -e gnuboard ]; then
mkdir gnuboard \
&& cd gnuboard \
&& curl -o gnuboard.tar.gz -fSL https://github.com/gnuboard/gnuboard5/tarball/master \
&& tar -xf gnuboard.tar.gz -C ./ --strip-components=1 \
&& rm gnuboard.tar.gz && mkdir data \
&& chown -R www-data:www-data ./ \
&& chmod -R 777 data \
&& sed -i "s/'utf8'/'utf8mb4'/g" config.php \
&& cd ..
fi
# 그누보드 자동설치 스크립트 끝

exec "$@"
