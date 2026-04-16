class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.32"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.32/pdf_oxide-macos-aarch64-0.3.32.tar.gz"
      sha256 "778fa017ed72a2419eca87a7a649d1473b01239549b512963f891cf469d8ce91"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.32/pdf_oxide-macos-x86_64-0.3.32.tar.gz"
      sha256 "326c04da6a018fc9e97f1e9cea291c5475e01d0c82fb0f772cb697b1359a8ea3"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.32/pdf_oxide-linux-x86_64-musl-0.3.32.tar.gz"
    sha256 "29ddcd4f4d949b9d17a352ce0460aecac9a32b77986a7a6a229e83e62e648149"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
