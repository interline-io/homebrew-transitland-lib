class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.8.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
    sha256 "31dda70c7ce64b5343c83a24d363f75c306590790583d7629952dab6630cd5f8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "78ef09047e39f50d95bce49dfbe72a7e7a7846f8a1610642fd3a6c08d67b4bae"
    end
  end

  def install
    bin.install 'transitland'
  end
end
