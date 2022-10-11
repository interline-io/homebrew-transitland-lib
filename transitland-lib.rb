class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.11.1"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "0b66f92800c5b885b26f6879c9ef3ac601827821530f4a9a14485c31f80cce03"

  def install
    bin.install 'transitland'
  end
end
