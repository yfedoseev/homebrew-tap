class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.33"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.33/pdf_oxide-macos-aarch64-0.3.33.tar.gz"
      sha256 "5e564fa56444232e745a798a2eb3b4678268d449e0733d38f3866e0bc080027d"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.33/pdf_oxide-macos-x86_64-0.3.33.tar.gz"
      sha256 "ff226848d8db28298d69d58f311f144bc214c0238b981d3d427587196cd07664"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.33/pdf_oxide-linux-x86_64-musl-0.3.33.tar.gz"
    sha256 "7cf24af5f542a98b90a478f793319a0c185068cdd30793c7164060412bf21f70"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
