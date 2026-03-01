class Crgx < Formula
  desc "Run any crate binary instantly — fetch, cache, and execute without cargo install"
  homepage "https://crgx.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/crgx/releases/download/v0.1.0/crgx-macos-aarch64-0.1.0.tar.gz"
      sha256 "e3fec79d7309899d1460d00a0af62753386b5b56af139e96699b8cf8db9b117e"
    else
      url "https://github.com/yfedoseev/crgx/releases/download/v0.1.0/crgx-macos-x86_64-0.1.0.tar.gz"
      sha256 "8eb577de3c75a18fda81754b43797e9943fe59c65e6f05347faebeffb2d7dee5"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/crgx/releases/download/v0.1.0/crgx-linux-x86_64-0.1.0.tar.gz"
    sha256 "fc97f3bc0e86caa4e6ac32b1bdd17d14f064a17813b47862e84ad3a4ec0f9399"
  end

  def install
    bin.install "crgx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crgx --version")
  end
end
