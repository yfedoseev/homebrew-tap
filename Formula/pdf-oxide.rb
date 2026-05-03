class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.42"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.42/pdf_oxide-macos-aarch64-0.3.42.tar.gz"
      sha256 "ec5336d4548baded2346239039819e87276647ccfc1c56985b6c315a0298ce1a"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.42/pdf_oxide-macos-x86_64-0.3.42.tar.gz"
      sha256 "e8b38ea1bf3e62c1ad831463b8ed4531e9b0faf2d336b60f263197eca40760fb"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.42/pdf_oxide-linux-x86_64-musl-0.3.42.tar.gz"
    sha256 "ee27b8e83fcf2bd66b4a7a4d7fccb57d623a1586c9443f5996604df7eca4e772"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
