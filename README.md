# homebrew-transitland-lib

Formulas for installing [transitland-lib](https://github.com/interline-io/transitland-lib) using the [Homebrew](https://brew.sh/) package manager on macOS.

## Installation

To install the transitland-lib binary for CLI use:

```sh
brew install interline-io/transitland-lib/transitland-lib
```

Want to use transitland-lib as a library within another Go-based project? See the transitland-lib readme for more information on [how to use it as a library](https://github.com/interline-io/transitland-lib#usage-as-a-library).

## Usage

See the transitland-lib readme for [CLI usage instructions](https://github.com/interline-io/transitland-lib#usage-as-a-cli-tool).

## For formula maintainers

### Updating to a New Release

When a new version of transitland-lib is released, follow these steps to update the Homebrew formula:

1. **Update the version** in `transitland-lib.rb`:
   ```ruby
   version "v1.2.4"  # Change to the new version
   ```

2. **Get the new SHA256 hashes** using the provided script:
   ```sh
   ./get-new-hashes.sh v1.2.4  # Replace with the new version
   ```

3. **Update the SHA256 hashes** in `transitland-lib.rb` with the output from the script:
   - macOS Intel: `f7afff75ffcda082fee5d2669132c72271bb862a086c080c906913d89992debc`
   - macOS Apple Silicon: `ab854669644913adda934cd5c62a5bde3b2190eae8c8bffcde6f7d17788ba5be`
   - Linux: `0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5`

4. **Test the formula** locally:
   ```sh
   brew install --build-from-source ./transitland-lib.rb
   ```

5. **Commit and push** the changes to the repository.
