class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.3.4"
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
    sha256 "0f1fa6acbe703ba87d4da4dcf6779de3405ef1add3abffd20be35c2b16ec161d" # macOS Intel
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple"
    sha256 "c8da1716051b3a56bc475c75ee6fc0a5dbd385d7fe917ac278b2b7903d421c32" # macOS Apple
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "1fe5aacc9e438404a43b31bfa36fdf8b22e6d747932fa6e43200627a444a528f" # Linux
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
