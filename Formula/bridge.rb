class Bridge < Formula
  desc "Bridge CLI - Connect AI agents to WhatsApp"
  homepage "https://github.com/eduardoworrel/bridge"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/eduardoworrel/bridge/releases/download/v0.2.4/bridge-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "4f7dbdc5cdb4128c8c04b984339b700e28668614e1246aeea46a0b002f297c8c"
    end
    on_arm do
      url "https://github.com/eduardoworrel/bridge/releases/download/v0.2.4/bridge-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "TODO" # Build ARM64 version
    end
  end

  def install
    bin.install "bridge"
  end

  test do
    system "#{bin}/bridge", "version"
  end
end
