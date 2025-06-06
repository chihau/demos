#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "vertex_ai_firebase_flutter_app"
)

ci_projects "beta" "${PROJECT_NAMES[@]}"

echo "-- Success --"
