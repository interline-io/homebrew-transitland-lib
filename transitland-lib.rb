class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.10.3"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "ef63686440703c15e93dcb9579bf8401456f80dbb8f9694d6c4255be6fd1a9d3"

  def install
    bin.install 'transitland'
  end
end
