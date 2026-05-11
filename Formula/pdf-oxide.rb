class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.46"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.46/pdf_oxide-macos-aarch64-0.3.46.tar.gz"
      sha256 "d297f94f303ea2fec0dfa4722a2635fde6f24ce5168707173a2c1bab6d4c6fc5"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.46/pdf_oxide-macos-x86_64-0.3.46.tar.gz"
      sha256 "b7e4bbaa872c23d18d8060303bd15ce52b8d00d223dc5468f81f8e0647f83ed4"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.46/pdf_oxide-linux-x86_64-musl-0.3.46.tar.gz"
    sha256 "457b0ac8fb848db950634178bd5639883aecbdc66aa3727a8b111cea4645c725"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
