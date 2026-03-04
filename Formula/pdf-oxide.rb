class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.14"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.14/pdf_oxide-macos-aarch64-0.3.14.tar.gz"
      sha256 "1a028848b491e8b395aa30b78f87d6ae56bc5928124e96b4896d43305b13c614"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.14/pdf_oxide-macos-x86_64-0.3.14.tar.gz"
      sha256 "81fc5428659127d6b9a68da2d4369df0fd362f032cc0553be7ba6bd36ca82e17"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.14/pdf_oxide-linux-x86_64-musl-0.3.14.tar.gz"
    sha256 "b5eb1769c9be0baa9f96928772d193ee0b256f84b4cbd01c619293c1b3284157"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
