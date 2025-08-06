class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.2.4"
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
    sha256 "f7afff75ffcda082fee5d2669132c72271bb862a086c080c906913d89992debc" # macOS Intel
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple"
    sha256 "ab854669644913adda934cd5c62a5bde3b2190eae8c8bffcde6f7d17788ba5be" # macOS Apple
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # Linux
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
