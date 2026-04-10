class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.23"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.23/pdf_oxide-macos-aarch64-0.3.23.tar.gz"
      sha256 "40223910eb882672d4f79433aff3b6fc71f9676bfff780ada1d80eb5d3574aec"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.23/pdf_oxide-macos-x86_64-0.3.23.tar.gz"
      sha256 "fea869d5254881b79a0ed25949d93eb07145efd9aa291fea154deca2a0fe5dc1"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.23/pdf_oxide-linux-x86_64-musl-0.3.23.tar.gz"
    sha256 "a7a3d21ea3af5256653135223cbb09ab5a41e41785c83e7e6f43bc104d826dfa"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
