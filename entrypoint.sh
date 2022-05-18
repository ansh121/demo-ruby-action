#!/bin/sh

set -e
stats = $(sh -c "ruby /action.rb $*")

echo "::set-output stats=stats::$stats"

