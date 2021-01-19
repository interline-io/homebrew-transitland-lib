class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.7.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
    sha256 "b15b86873fd067390f7062f172e6108c88a848c9d8a6c5e29f64de3f976a16c8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "072564c2ba313292f1dc98c2bdb9d480c859c647b2f3718a00252bf58fec74f8"
    end
  end

  def install
    bin.install 'transitland'
  end
end
