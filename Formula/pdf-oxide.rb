class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.70"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.70/pdf_oxide-macos-aarch64-0.3.70.tar.gz"
      sha256 "7957a76881c3ad7ee41e9fb34386276c9fad1b69ae6ad10aeb511369f028d25a"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.70/pdf_oxide-macos-x86_64-0.3.70.tar.gz"
      sha256 "4a29b8ce74636104ef480f3e63d3462d7edae0b6082960346fa66ab7d7dd6800"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.70/pdf_oxide-linux-x86_64-musl-0.3.70.tar.gz"
    sha256 "fa18938b6ebc9e50b5a738c496198378cfe6e0ee529e607ef02aac8e880875de"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
