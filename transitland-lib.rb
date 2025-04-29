class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.1.0"
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
    sha256 "6a3547e73f4b5319568c66b787b10b7bd02e7e63c74a7b65082b652201803524"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple.zip"
    sha256 "b65929c5a745512f765998eca93461d88cf3edda5955cfb7af0f34a81564535d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "2e4fcc9ace55ff30dbb3d2537e46d0de757fa06a36f2efcb933c35bd1194bf82"
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
