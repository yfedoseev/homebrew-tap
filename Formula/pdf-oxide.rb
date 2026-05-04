class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.43"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.43/pdf_oxide-macos-aarch64-0.3.43.tar.gz"
      sha256 "6f036c22707253e0615c515afdd7ca717382f638781abd0b0be21ffc669d2151"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.43/pdf_oxide-macos-x86_64-0.3.43.tar.gz"
      sha256 "b1027cacb7df730486f01ba5327cb98260aad7667cc66502a1892a4fe878f583"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.43/pdf_oxide-linux-x86_64-musl-0.3.43.tar.gz"
    sha256 "260caef91133c57fcc8259899138203b39ddbbaa7a3937fbf618b327a73a0213"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
