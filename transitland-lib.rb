class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.3.2"
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
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-intel"
    sha256 "d93e62cf931af4b6a18127dbdc0cb271228f9d52b4653100bf582db0188e3bf4" # macOS Intel
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple"
    sha256 "cf104e3c1956286add6e08eef88b26e074695df0a5d1536af3d1a53e4156af87" # macOS Apple
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "04c8d2c08390375e30035183feed935c9e32cb34d27eb083fd12a40a935d2179" # Linux
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install 'transitland-macos-intel' => 'transitland'
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install 'transitland-macos-apple' => 'transitland'
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install 'transitland-linux' => 'transitland'
    end
  end

  test do
    version_output = shell_output("#{bin}/transitland version")
    assert_match "transitland-lib version: #{version}", version_output
    assert_match %r{transitland-lib commit: https://github\.com/interline-io/transitland-lib/commit/[a-f0-9]{40}}, version_output
    assert_match "GTFS specification version: https://github.com/google/transit/", version_output
    assert_match "GTFS Realtime specification version: https://github.com/google/transit/", version_output
  end
end
