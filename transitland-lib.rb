class TransitlandLib < Formula
  desc "Library and CLI tool for reading, writing, and processing GTFS transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.2.14"
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
    sha256 "c9d7f2ccb324995afccda93bf5032a7bc02c5971b1f06c78719c94890ac6c0df" # macOS Intel
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple"
    sha256 "b6617a6433bf98cf690514b68662a54a282eca345f31134bbd9b159ca6c7b621" # macOS Apple
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "b1839ecb5ad939c0189f0e732aac20ad733c34bfd4881e0438e8f11a42c841b3" # Linux
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
