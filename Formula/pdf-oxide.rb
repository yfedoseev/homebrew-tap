class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.77"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.77/pdf_oxide-macos-aarch64-0.3.77.tar.gz"
      sha256 "c910c80085c68214be9f34a28db44d5a0d4a87dc3ec1e74ce4dd213dc037b09c"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.77/pdf_oxide-macos-x86_64-0.3.77.tar.gz"
      sha256 "b31e23ba67de61940fc3482b3d448d542fd3d0da0306941245cf5f48cb6491d8"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.77/pdf_oxide-linux-x86_64-musl-0.3.77.tar.gz"
    sha256 "09c75a46d854c5cea5496d6d7bfd62e17c46719e7d4b43d28dc9ed197eb284f5"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
