class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.8.6"
  bottle :unneeded

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "285103e01affa74e20423be5ab5dd9801d3910ed077e2e89ae4448668878ff52"

  def install
    bin.install 'transitland'
  end
end
