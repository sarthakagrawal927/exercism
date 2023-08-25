#!/usr/bin/env bash
# Powered by ChatGPT

set -e
set -u

tracks=("python" "typescript" "elixir" "dart" "rust" "cpp")

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
                echo "Downloading exercise: $slug for track: $track"
                if ! exercism download --track="$track" --exercise="$slug"; then
                    echo "Error downloading exercise: $slug for track: $track"
                fi
            else
                echo "Exercise: $slug for track: $track is already downloaded"
            fi
        done
}

for track in "${tracks[@]}"; do
    download_exercises "$track"
done
