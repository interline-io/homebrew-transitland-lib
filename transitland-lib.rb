class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.1.1"
  license "GPL-3.0-or-later"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^v?(\d+\.\d+\.\d+(?:-rc\d+)?)$/i)
  end

  head do
    url "https://github.com/interline-io/transitland-lib.git", branch: "main"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-intel.zip"
    sha256 "bbca76721c573d1d13623e76e4949c82e28e9d09bb9e199da4aeba0e5d433190"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple.zip"
    sha256 "a1824192dfd260a97a1cde32a07eb61b59b31cbae51a8c3a7070f3fe58309deb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "4930de03dea838340fa0fb881e7d069ec11d053dc32b0d024811af95437b0e79"
  end

  def install
    bin.install 'transitland'
  end

  test do
    version_output = shell_output("#{bin}/transitland version")
    assert_match "transitland-lib version: #{version}", version_output
    assert_match %r{transitland-lib commit: https://github\.com/interline-io/transitland-lib/commit/[a-f0-9]{40}}, version_output
    assert_match "GTFS specification version: https://github.com/google/transit/", version_output
    assert_match "GTFS Realtime specification version: https://github.com/google/transit/", version_output
  end
end
