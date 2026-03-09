class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.17"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.17/pdf_oxide-macos-aarch64-0.3.17.tar.gz"
      sha256 "10317998eec4d737b69bb9dc43937e9ee231c6e61fd9662f0466862b5841322f"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.17/pdf_oxide-macos-x86_64-0.3.17.tar.gz"
      sha256 "d9383fe4bf93d793b54b4cf80061276e7e2ae59cf988223a6a3c764e76b45dca"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.17/pdf_oxide-linux-x86_64-musl-0.3.17.tar.gz"
    sha256 "1c1d515fad9fac7d60caae03ac7d25f099d78d9808364bd55fab0e499ad9685f"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
