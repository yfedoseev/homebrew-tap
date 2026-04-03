class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.19"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.19/pdf_oxide-macos-aarch64-0.3.19.tar.gz"
      sha256 "6ad7931e4ebc53257407e82096fd8c3a3d450b512f87e0e1e110a89991d7a22b"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.19/pdf_oxide-macos-x86_64-0.3.19.tar.gz"
      sha256 "1be25fa730d90a32ade428a222145624eede2c090e0e3c28304cf301c6d0556f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.19/pdf_oxide-linux-x86_64-musl-0.3.19.tar.gz"
    sha256 "2d8c1b96e277c133ed3f1d94b7aa870a1c7febee2fc6f16a09cff05a44840e36"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
