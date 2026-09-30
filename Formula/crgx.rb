class Crgx < Formula
  desc "Run any crate binary instantly — fetch, cache, and execute without cargo install"
  homepage "https://crgx.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/crgx/releases/download/v0.1.1/crgx-macos-aarch64-0.1.1.tar.gz"
      sha256 "b4a1af1d66fe02b4b8f242dc63c122432e04a84d79075122369ba05708d0f9d4"
    else
      url "https://github.com/yfedoseev/crgx/releases/download/v0.1.1/crgx-macos-x86_64-0.1.1.tar.gz"
      sha256 "3aa53c56266986910347422026c467567e7d8bc4523e3fb04b7dfb0465b896ff"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/crgx/releases/download/v0.1.1/crgx-linux-x86_64-musl-0.1.1.tar.gz"
    sha256 "7664b374ce41c278963e3c75dc9e1511d17e68bf2f2c6011fea84265fe40ce64"
  end

  def install
    bin.install "crgx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crgx --version")
  end
end
