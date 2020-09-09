class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "0.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos"
    sha256 "22b90d28eb1963864a17a0abb68ff17349d7e57e46d44fbb2a8880bb1a428b33"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "594b425c32873f0b607f2e3fa305d1a0debe301f3eec4a24182b705e2b77270b"
    end
  end

  def install
    bin.install "transitland"
  end
end
