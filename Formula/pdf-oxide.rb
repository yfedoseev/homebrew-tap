class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.45"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.45/pdf_oxide-macos-aarch64-0.3.45.tar.gz"
      sha256 "449843f8d5fead5f791b902d0bd6903270a242503f68f049bba617a01ca8f114"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.45/pdf_oxide-macos-x86_64-0.3.45.tar.gz"
      sha256 "42b9e0b723fe73f2ea03c197fead99d41f69f73da7d84e84de87ec16f46c4cf2"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.45/pdf_oxide-linux-x86_64-musl-0.3.45.tar.gz"
    sha256 "0ffb9daa1a48faf97c3bbd4578f20b748b9dd28f5431195950e4a83dd7bd6b95"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
