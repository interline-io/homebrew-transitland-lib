class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.13.0"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "6b0d8a40f68d83d3a5f2a0b982a6c9627445ea82360274062e7446c70dc464eb"

  def install
    bin.install 'transitland'
  end
end
