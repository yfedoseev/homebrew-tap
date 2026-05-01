class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.41"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.41/pdf_oxide-macos-aarch64-0.3.41.tar.gz"
      sha256 "ad2f5aa5dadada74edb7f7d8c35498af8ada17e39cbe5f80ee4a00f4f611fdf2"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.41/pdf_oxide-macos-x86_64-0.3.41.tar.gz"
      sha256 "8357dee3624b1e2b06958b3a1b46a65bb561c883a6d89108c11251320c2f8aee"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.41/pdf_oxide-linux-x86_64-musl-0.3.41.tar.gz"
    sha256 "7d9ed47b3ddb813a82a434e37b85c3edd226d0100858774d0c0ab7f3aeaa2f97"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
