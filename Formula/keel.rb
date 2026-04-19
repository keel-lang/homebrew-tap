class Keel < Formula
  desc "A programming language where AI agents are first-class citizens"
  homepage "https://keel-lang.dev"
  license "MIT"
  version "0.9.0"

  on_macos do
    url "https://github.com/keel-lang/keel/releases/download/v0.9.0/keel-aarch64-apple-darwin.tar.gz"
    sha256 "6ab2bf99347815ceb94dc0a834d0bbca8f73b885f0fefa901e66b52b64dfd1cf"
  end

  on_linux do
    url "https://github.com/keel-lang/keel/releases/download/v0.9.0/keel-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e64bb3ea1cdc229f349156aaffcf8a175a2352836e0246c80d352f334e0fd44a"
  end

  def install
    bin.install "keel"
  end

  test do
    system "#{bin}/keel", "--version"
  end
end
