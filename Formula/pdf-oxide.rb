class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.47"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.47/pdf_oxide-macos-aarch64-0.3.47.tar.gz"
      sha256 "212dd7f696988c233347499f43a5fa7ea1ff16f3c0ef0eb2279997c61391d595"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.47/pdf_oxide-macos-x86_64-0.3.47.tar.gz"
      sha256 "8c9f05cfd06e62a3363da025090e0d2e2c65df871873e9814af26bdadad54b17"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.47/pdf_oxide-linux-x86_64-musl-0.3.47.tar.gz"
    sha256 "11c0d9521e102778956a0ab48fc041172585f957e4b82350b7adf4c36c6f574d"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
