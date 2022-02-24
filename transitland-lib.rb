class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.10.0"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "9cd7fbb08c15264aa5f84f5e238946c831d681ae5aa16dd4da0b4edd8870ec58"

  def install
    bin.install 'transitland'
  end
end
