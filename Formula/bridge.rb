class Bridge < Formula
  desc "Bridge CLI - Connect AI agents to WhatsApp"
  homepage "https://github.com/eduardoworrel/bridge"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/eduardoworrel/bridge/releases/download/v0.2.5/bridge-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "e03900217bef7978c14307cd039484f835527562066de431d06cd861a8892a05"
    end
  end

  def install
    bin.install "bridge"
  end

  test do
    system "#{bin}/bridge", "version"
  end
end
