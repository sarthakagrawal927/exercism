#!/usr/bin/env bash
# Powered by ChatGPT

function check_exercise() {
    local exercise_dir="$1"
    local track="$2"
    local exercise="$3"
    local show="$4"

    if [ "$show" == "done" ] && [ -f "$exercise_dir/done" ]; then
        echo "Exercise solved: $track/$exercise"
    elif [ "$show" == "undone" ] && [ ! -f "$exercise_dir/done" ]; then
        echo "Unsolved exercise: $track/$exercise"
    fi
}

function explore_track() {
    local track_dir="$1"
    local track="$2"
    local show="$3"

    for exercise_dir in "$track_dir"/*/; do
        exercise=$(basename "$exercise_dir")
        check_exercise "$exercise_dir" "$track" "$exercise" "$show"
    done
}

root_directory="./"  # Change this to the root directory where tracks are located

if [ -z "$1" ]; then
    # Default tracks if no language is provided
    tracks=("python" "typescript" "elixir" "dart" "rust" "cpp")
else
    tracks=("$1")
fi

show="${2:-undone}"  # Default to listing undone exercises if no argument is provided

for track in "${tracks[@]}"; do
    track_dir="$root_directory/$track"

    if [ -d "$track_dir" ]; then
        explore_track "$track_dir" "$track" "$show"
    else
        echo "Track directory not found: $track_dir"
    fi
done
