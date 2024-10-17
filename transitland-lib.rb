class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.18.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-intel.zip"
    sha256 "772dcb0b4615dbda762a57e6621e0d11ec7ce27202efccdfbb53df7f636d3d30"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple.zip"
    sha256 "f3fb45d69453f82497b120407cf7f02b122d31d7e30c1ab1d741aeac79039ca4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "0f2442e3d892581d9a6a491cc01fd3af137ff2d539a2baacf7607decef28b498"
  end

  def install
    bin.install 'transitland'
  end
end
