class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.75"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.75/pdf_oxide-macos-aarch64-0.3.75.tar.gz"
      sha256 "32cad351654980df85462a86093a6080a159778572c2b0a2b75452c76d07fd2e"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.75/pdf_oxide-macos-x86_64-0.3.75.tar.gz"
      sha256 "494b32be31b8d9052a74130230a9ae840de01c6ac6bd12d67a09b75a830db66c"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.75/pdf_oxide-linux-x86_64-musl-0.3.75.tar.gz"
    sha256 "441b554f991d0016feda1c799197a31912d734b20ff9497b4fba2bb142581ea6"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
