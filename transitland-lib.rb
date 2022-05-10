class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.10.2"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "c4d51bb39f24bdda9b8b2fdcbbf0b3eb360711e80d35b1f96011def2e68faa73"

  def install
    bin.install 'transitland'
  end
end
