#!/bin/bash

echo "ENTRYPOINT LAUNCHED"

# Use mounted script to delete unnecessary files
/bin/bash /work/delete.sh

exec "$@"
