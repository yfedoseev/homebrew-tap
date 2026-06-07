class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.61"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.61/pdf_oxide-macos-aarch64-0.3.61.tar.gz"
      sha256 "129e84bc8da7566a1700db24aa36e920808beae422ec684f1e6f7f160623a941"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.61/pdf_oxide-macos-x86_64-0.3.61.tar.gz"
      sha256 "cfa723a2a038bddb39d3e555e4b27edbb6b1d46368713463441101948a3f47dd"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.61/pdf_oxide-linux-x86_64-musl-0.3.61.tar.gz"
    sha256 "9dbd266ed7ef5aae8a2fd1d58fca22ca4360edabb98f0d494e0cb8b28e271fd0"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
