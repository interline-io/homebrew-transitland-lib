class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.8.5"
  bottle :unneeded

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "3e8dbc094e892e3008fc068dfda8d1055f5173a0b8b92329e372a8e35f3fdfbb"

  def install
    bin.install 'transitland'
  end
end
