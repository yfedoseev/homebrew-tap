class Crgx < Formula
  desc "Run any crate binary instantly — fetch, cache, and execute without cargo install"
  homepage "https://crgx.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/crgx/releases/download/v0.1.0/crgx-macos-aarch64-0.1.0.tar.gz"
      sha256 "0606292e1d7d175c47fa77e26878d265b85b3b646d600f102c1b36856bb57831"
    else
      url "https://github.com/yfedoseev/crgx/releases/download/v0.1.0/crgx-macos-x86_64-0.1.0.tar.gz"
      sha256 "c52ddb69ce94e016a2ed5c56b1081ce3152889d67e9decf7cb83876ec28487b2"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/crgx/releases/download/v0.1.0/crgx-linux-x86_64-0.1.0.tar.gz"
    sha256 "f1339ea5acf4ce988dc5a53eaa31f33bb7e01acd74446ba13ab4bacac9ca1ffe"
  end

  def install
    bin.install "crgx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crgx --version")
  end
end
