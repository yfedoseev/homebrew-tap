class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.24"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.24/pdf_oxide-macos-aarch64-0.3.24.tar.gz"
      sha256 "d3af53fcc2ed6302467a0ec9d77a14b443ae99207c8170de62d5b6b9766632cc"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.24/pdf_oxide-macos-x86_64-0.3.24.tar.gz"
      sha256 "b89d8b78529cd7d6a8cb5da71ecfe159d7d32422132b813dbabe8a3e73379689"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.24/pdf_oxide-linux-x86_64-musl-0.3.24.tar.gz"
    sha256 "164af2aaa849ce0c2e1401096127082d967c888e2f1f24144eccb91178106ae3"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
