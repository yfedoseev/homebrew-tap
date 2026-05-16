class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.49"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.49/pdf_oxide-macos-aarch64-0.3.49.tar.gz"
      sha256 "04726569a0a08ea25f1ba8f3a7396ec2729c5f0fed3d5b8ce9c2d20c98d5660d"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.49/pdf_oxide-macos-x86_64-0.3.49.tar.gz"
      sha256 "2160b79140e9a06ccf2a86b033007be56d5cfd54b5eff62cfc8799496b29333c"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.49/pdf_oxide-linux-x86_64-musl-0.3.49.tar.gz"
    sha256 "8faeb28767b3c51696b52e0b7e9100eb0570b3e15019899adf05ee0477e905a9"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
