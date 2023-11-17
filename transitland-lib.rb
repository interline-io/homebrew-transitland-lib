class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.14.0-rc1"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "792a78408eba1343dffa8735b9a1f34e24bad3e38d15c67c38c1b861d4e12ae4"

  def install
    bin.install 'transitland'
  end
end
