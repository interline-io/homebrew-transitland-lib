class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.6.1-rc5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos.zip"
    sha256 "36dc20c87ec0bc6a6703a246576ef9e29132fa3feb09d5f37180ac9150adc91d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
      sha256 "6c971cb172d13e3b4b810d00046627378fbefd09728a3127207e87967353f686"
    end
  end

  def install
    bin.install 'transitland'
  end
end
