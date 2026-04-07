class Bridge < Formula
  desc "Bridge CLI - Connect AI agents to WhatsApp"
  homepage "https://github.com/eduardoworrel/bridge"
  version "VERSION"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/eduardoworrel/bridge/releases/download/vVERSION/bridge-x86_64-apple-darwin.tar.gz"
      sha256 "CHECKSUM"
    end
    on_arm do
      url "https://github.com/eduardoworrel/bridge/releases/download/vVERSION/bridge-aarch64-apple-darwin.tar.gz"
      sha256 "CHECKSUM"
    end
  end

  def install
    bin.install "whatsagent-cli" => "bridge"
  end

  test do
    system "#{bin}/bridge", "version"
  end
end
