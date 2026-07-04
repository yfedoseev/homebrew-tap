class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.71"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.71/pdf_oxide-macos-aarch64-0.3.71.tar.gz"
      sha256 "7dc998dc439cb07ab0b6c59473dc9ce713768e996141daa82c81c4205ec49569"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.71/pdf_oxide-macos-x86_64-0.3.71.tar.gz"
      sha256 "d8d22b0443f2573efd3f5e626d70236f7af9eb684d95ce3b2f2e695458867d6f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.71/pdf_oxide-linux-x86_64-musl-0.3.71.tar.gz"
    sha256 "66e8553da2f54d15aa6cdefd9dc6b1bc9bc6d4f64c1f90b5db8a7f7f63dea5a5"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
