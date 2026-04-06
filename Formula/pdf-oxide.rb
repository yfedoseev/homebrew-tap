class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.21"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.21/pdf_oxide-macos-aarch64-0.3.21.tar.gz"
      sha256 "9221f3fc48d0623bb9b150a71bf8cdbff285900bdfd7be621686f27a99aaec99"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.21/pdf_oxide-macos-x86_64-0.3.21.tar.gz"
      sha256 "88e890b7ec604b68f65df7e252bb018b14d20d5b75fde55a4f730e937fc638d8"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.21/pdf_oxide-linux-x86_64-musl-0.3.21.tar.gz"
    sha256 "ebadf65f63848a7abc137e04a00538bee8d4b62c041b4e225962e51023e4d364"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
