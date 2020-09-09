class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos"
    sha256 "7ccb6092496831e7ab09c0b27aa06d64809b394844782e1bae6e6636f35d7a9b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "594b425c32873f0b607f2e3fa305d1a0debe301f3eec4a24182b705e2b77270b"
    end
  end

  def install
    bin.install 'transitland-macos' => 'transitland'
  end
end
