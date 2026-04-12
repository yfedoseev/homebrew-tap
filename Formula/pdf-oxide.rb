class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.27"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.27/pdf_oxide-macos-aarch64-0.3.27.tar.gz"
      sha256 "5cd3abf61e81a9b2b1ce490e4f32564583f1b86480f66e06ccfd74a11a9a7dec"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.27/pdf_oxide-macos-x86_64-0.3.27.tar.gz"
      sha256 "55e6b6cb64dfa84644f4995074677b38ad6f3c3c3cff915f7d3136c4cc02d64a"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.27/pdf_oxide-linux-x86_64-musl-0.3.27.tar.gz"
    sha256 "48ec724bb37c48e668d7708a0205ac4ac2977ca46f52b049102b2e940e4bfef0"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
