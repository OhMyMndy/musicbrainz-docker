#!/bin/bash

set -e -u

export MUSICBRAINZ_DB_SCHEMA_SEQUENCE=27

dockerize -wait tcp://db:5432 -timeout 60s ./upgrade.sh
