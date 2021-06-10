class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.8.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
    sha256 "b186a0f4119096346dd3de01d62fba5f1245ce1d8ae589ba055812ac3578a3ad"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "ead040ab305317e2200f7d550b3ea006ae7bdc3ac981382df6d6e2c31c2ee22a"
    end
  end

  def install
    bin.install 'transitland'
  end
end
