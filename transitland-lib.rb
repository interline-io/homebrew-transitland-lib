class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.7.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
    sha256 "45e313abea742cd6bcd0925a91b77e9d9f81d8da2d0f9b5961337be9bc7c8b2a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "6672bdb344f0a66241f31db3f670b0c0d85e45585b85393224d433b9861b80ad"
    end
  end

  def install
    bin.install 'transitland'
  end
end
