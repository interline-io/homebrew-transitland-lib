class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.8.7"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "2c38a828f7988106e554749dca2c2cd79bcd24eec480b1246c64c32dd46542b8"

  def install
    bin.install 'transitland'
  end
end
