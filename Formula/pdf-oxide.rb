class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.15/pdf_oxide-macos-aarch64-0.3.15.tar.gz"
      sha256 "85da15b6e25d345df441a28fea95d8c3ffc0d3fbc06b7d9e7bc67a938f9307f6"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.15/pdf_oxide-macos-x86_64-0.3.15.tar.gz"
      sha256 "f8a5540b881cb8e890d89c091c416d8a2b821c3cd1c638290cefe8b06a42326b"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.15/pdf_oxide-linux-x86_64-musl-0.3.15.tar.gz"
    sha256 "6145c81fa10cabca0ab40104ef63704b2bdcb41c85920f9be91d646c0cfc3194"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
