class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.16.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-intel.zip"
    sha256 "2eda00e322c9868ef000cad9e5a9fe00c5a044347e24acc377f8e8de43c9f8cb"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple.zip"
    sha256 "f0f6a3fed1dfcf92f661b55a5d69848b4d90fcdef2737c5769fef8686ced7c95"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "0216f8958d2fe96f3a5b03baa26f3f791e8711588a8a7c7235062e869e7fc1f3"
  end

  def install
    bin.install 'transitland'
  end
end
