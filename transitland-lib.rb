class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.8.8"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "c4aa2ebaf5f61576f82078a0739b359fce59adf8ccfc2a6c0388156de1c3c4d5"

  def install
    bin.install 'transitland'
  end
end
