class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.12.0"

  url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
  sha256 "edb6536dba70bc736ac3080a934c45ea40883312199dc287c7959bfb57b7090e"

  def install
    bin.install 'transitland'
  end
end
