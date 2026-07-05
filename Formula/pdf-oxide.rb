class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.72"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.72/pdf_oxide-macos-aarch64-0.3.72.tar.gz"
      sha256 "af0a5a8532ca234d45495ecad7f855257e12ccf5cd71c978b6915f0910150992"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.72/pdf_oxide-macos-x86_64-0.3.72.tar.gz"
      sha256 "a05d82f3c9d3f936dcf8721e650b333d54b2f050d8e46bd67f9d654b823a155e"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.72/pdf_oxide-linux-x86_64-musl-0.3.72.tar.gz"
    sha256 "20ba77b1e8bbc63fc1f71558fdc4cbcc7a8852def77948473510959b7d067b1a"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
