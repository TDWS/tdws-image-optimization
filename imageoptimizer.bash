#!/bin/bash
OPTIPNG_BIN="/usr/bin/optipng"
JPEGOPTIM_BIN="/usr/bin/jpegoptim"
LOG_DIR="/root"

if [[ $# -eq 0 ]] ; then
    echo 'need path';
    exit 1;
fi
PATH=$1


if ! [ -x "$(command -v $OPTIPNG_BIN)" ]; then
  echo 'optipng not installed exiting..' >&2;
  exit 1;
fi

if ! [ -x "$(command -v $JPEGOPTIM_BIN)" ]; then
  echo 'jpegoptim not installed exiting..' >&2;
  exit 1;
fi



echo `/bin/date` >> ${LOG_DIR}/optipng.log
/usr/bin/find ${PATH} -iname '*.png' -mtime -1 -exec ${OPTIPNG_BIN} -o5  -preserve {} \; >> ${LOG_DIR}/optipng.log
echo "---Done---"  >> ${LOG_DIR}/optipng.log

echo `/bin/date` >> ${LOG_DIR}/jpegoptim.log
/usr/bin/find ${PATH} -iname '*.jpg' -mtime -1 -exec ${JPEGOPTIM_BIN} --preserve --strip-all --totals {} \; >> ${LOG_DIR}/jpegoptim.log
echo "---Done---"  >> ${LOG_DIR}/jpegoptim.log

