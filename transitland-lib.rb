class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v1.0.0-rc4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-intel.zip"
    sha256 "906416286f8c2a58fa8edca00a5e5bf137c92aae45481f164423cfc8349c8ca7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple.zip"
    sha256 "4568ce625d34d466a87e241eab78a6dbdd2fde4db88c22d19029e01ce9739944"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "f77034fa48e11999d97d965df5848ec3e4bfb4aa9d58d5d70ac3d03e6542f1dd"
  end

  def install
    bin.install 'transitland'
  end
end
