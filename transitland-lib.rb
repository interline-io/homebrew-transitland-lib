class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.7.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
    sha256 "7de930fca5894554d987a2a9b21853fa4f1916107b1428c9d30dc4e93a87b81a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "20f39331a634a219be019234e5882d02d45fff7b2d963cfa0a8b2a1e52e2a772"
    end
  end

  def install
    bin.install 'transitland'
  end
end
