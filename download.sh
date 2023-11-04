#!/usr/bin/env bash
# Powered by ChatGPT

set -e
set -u

if [ -z "$1" ]; then
    # Default tracks if no language is provided
    tracks=("python" "typescript" "elixir" "dart" "rust" "go")
else
    tracks=("$1")
fi

function download_exercises() {
    local track="$1"
    echo "Downloading exercises for track: $track"
    curl \
      --silent --fail \
      "https://exercism.org/api/v2/tracks/$track/exercises" \
      | sed 's/"slug":"/\n/g' \
      | sed 's/",.*$//' \
      | grep -v '"exercises":' \
      | while read -r slug; do
            if [ ! -d "./$track/$slug" ]; then
                echo "[DOWNLOADING EXERCISE]: $slug for track: $track"
                if ! exercism download --track="$track" --exercise="$slug"; then
                    echo "[ERROR DOWNLOADING] exercise: $slug for track: $track"
                fi
            else
                echo "[ALREADY DOWNLOADED] Exercise: $slug for track: $track"
            fi
        done
}

for track in "${tracks[@]}"; do
    download_exercises "$track"
done
