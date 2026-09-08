class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.78"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.78/pdf_oxide-macos-aarch64-0.3.78.tar.gz"
      sha256 "d9c59bb65ab37f4dbec677bc13fb304bb12455d875988a8241b31cf8ac8c059c"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.78/pdf_oxide-macos-x86_64-0.3.78.tar.gz"
      sha256 "8fde97f0bc02c205ae02af04b8e4639e26bebfd3739ea0ac6da8a87756643303"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.78/pdf_oxide-linux-x86_64-musl-0.3.78.tar.gz"
    sha256 "9efd1b2f76d0a984fca2035c00ca38c0a332933737a2fae6efaf686528233eac"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
