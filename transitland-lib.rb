class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.2.0"
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
    sha256 "bac537d96e923868f772ee64bc7add997f8be4073b0aba1380407f48a0c3503b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple.zip"
    sha256 "dd1c73c0dfbe47ce9f912e45485737894ee100ad1b6f1a3241c49250796265d0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "7968ace15938b2e450af7b8a5d872f52ff119fa1076c96b377ed63c128e04d0a"
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
