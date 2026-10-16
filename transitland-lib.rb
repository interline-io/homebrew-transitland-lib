class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.4.0"
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
    sha256 "fac927b9c39e8a42170e7df432cc21fb3067bd2a6875353d5015e6bccb966c71" # macOS Intel
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple"
    sha256 "e496b98b1ca8adc7e88ce9bed708f35e269692918f8e53e44a555c7106b0611b" # macOS Apple
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "38e5845b5657c8a9df0fa95a77c646a58eb84a452ba4b4e9aff4fb9d4dec43d4" # Linux
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
