#!/usr/bin/env bash

until cd "${APACHE_DOC_ROOT}/wp-content/themes/${THEME_NAME}" && npm install
do
  echo "Retrying npm install"
  sleep 5
done
npm start
