class TransitlandLib < Formula
  desc "Library and tool for reading, writing, and processing transit data"
  homepage "https://github.com/interline-io/transitland-lib"
  version "v0.14.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-intel.zip"
    sha256 "cad19700c3ca32f6d6ba427990648d0a49ba6f937a1f27e7221a0f6f9e504c93"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-macos-apple.zip"
    sha256 "f921d942ad4b5f6e0fc2d00a5774ff443e2b739956f837af9b349f7a07b31fb6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/interline-io/transitland-lib/releases/download/#{version}/transitland-linux"
    sha256 "7cedb222dbc3071f276848a1f1cf0cdcfa92d4b7c35bd5abff5751065fe2e8de"
  end

  def install
    bin.install 'transitland'
  end
end
