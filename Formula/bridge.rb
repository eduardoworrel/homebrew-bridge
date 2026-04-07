class Bridge < Formula
  desc "Bridge CLI - Connect AI agents to WhatsApp"
  homepage "https://github.com/eduardoworrel/bridge"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/eduardoworrel/bridge/releases/download/v0.2.5/bridge-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "566088e7111b3074585cbec74fe5fc3f83976d8e06bdfe6f50a6a97fdd3dce10"
    end
  end

  def install
    bin.install "bridge"
  end

  test do
    system "#{bin}/bridge", "version"
  end
end
