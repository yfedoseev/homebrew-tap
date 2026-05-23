class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.53"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.53/pdf_oxide-macos-aarch64-0.3.53.tar.gz"
      sha256 "311d42161ff39586539d7ca7afcfaa8db64c0c9e58696a3fa6a2d47b2f10cacd"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.53/pdf_oxide-macos-x86_64-0.3.53.tar.gz"
      sha256 "22abb2af92b9782a5adc5c63576bd7d0bf890ee90b7eac6b686033e70260bf32"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.53/pdf_oxide-linux-x86_64-musl-0.3.53.tar.gz"
    sha256 "1ec8506150a9bab89887b3235b08e64549a263ca56f68b254f88a81b37e02549"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
