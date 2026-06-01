class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.59"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.59/pdf_oxide-macos-aarch64-0.3.59.tar.gz"
      sha256 "1cbb90f2766ca3c8f3599e8ac69b07b7b44376e2eea464f6348b0e8a12268fe7"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.59/pdf_oxide-macos-x86_64-0.3.59.tar.gz"
      sha256 "34520df03f362d307f96a0a2b052d7bb3707825777a7f282981acd88c6786e48"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.59/pdf_oxide-linux-x86_64-musl-0.3.59.tar.gz"
    sha256 "1126f0af4ba6345e03dfcc315591ef8b4876ab964381142d79ef798b5c0e0164"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
