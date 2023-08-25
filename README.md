# Exercism

## Downloading

```bash
sh download.sh
```

## Listing
I mark exercises done by making adding a file called "done" in the folder of exercise.
To list all exercises done, run:

```bash
# list all unsolved exercises
sh list.sh

# list language specific unsolved exercises
sh list.sh <language>

# list exercises done by language
sh list.sh <language> done
```

## Running
Running tests depend on individual languages. Submitting them is common and straightforward.

```bash
# Assuming you are in the directory of the exercise
exercism submit
```

Detailed information on running tests are available in the README.md of each exercise.

### Rust

```bash
cargo test
```

### Python

```bash
python3.9 -m pytest -o markers=task {test_file_name}
```

### Dart

```bash
dart test
```