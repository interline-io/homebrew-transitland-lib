class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.6.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
    sha256 "fddff9f1f65df33c65e0f9fbc4a2199e130729ea3f3931a0ff912a55128b9264"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "ce99c64104e4aad0374aa1edf0ebe9607cbc330d5838a1a3933ba12c6777a1af"
    end
  end

  def install
    bin.install 'transitland'
  end
end
