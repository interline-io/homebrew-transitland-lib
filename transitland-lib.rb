class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.10.1"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "3ae516fad4f0073d980414fc1ab24917bf9b2959054ad85bf1b587eaf5c0bb4e"

  def install
    bin.install 'transitland'
  end
end
