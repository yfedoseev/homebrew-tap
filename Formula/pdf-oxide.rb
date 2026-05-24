class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.54"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.54/pdf_oxide-macos-aarch64-0.3.54.tar.gz"
      sha256 "71fe24369a10f504fad93b934169bb12b4a501b1b0a32b584685ca2b32d744ca"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.54/pdf_oxide-macos-x86_64-0.3.54.tar.gz"
      sha256 "7f6fe9cb26794b601dfe91560f02db68c5b5a62fe19fe61b865e7619dfa9ad9d"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.54/pdf_oxide-linux-x86_64-musl-0.3.54.tar.gz"
    sha256 "ccdcb1b33379c0297a6394230cffb36d37a9d01dd43d4616a68128e5f7faaf5f"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
