class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.22"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.22/pdf_oxide-macos-aarch64-0.3.22.tar.gz"
      sha256 "d55a5d42a75a578305634254d4f88157b2b24c360a3c119bb2c4dbd8dbd4eee9"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.22/pdf_oxide-macos-x86_64-0.3.22.tar.gz"
      sha256 "08763583ce52fbae7c89c312baee312486baeadd35bbcb76cbb2d32166e63785"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.22/pdf_oxide-linux-x86_64-musl-0.3.22.tar.gz"
    sha256 "859e9a54180fa4be984504ec7d32941e3a83681e02a75c24ad77ac7bc722e829"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
