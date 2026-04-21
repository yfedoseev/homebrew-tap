class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.37"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.37/pdf_oxide-macos-aarch64-0.3.37.tar.gz"
      sha256 "89c28f725ca251f6e3dd4623ab7d2f7266097722131e59cea57083ea1ba22ea5"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.37/pdf_oxide-macos-x86_64-0.3.37.tar.gz"
      sha256 "630f8e0592bd3b95c945f00f978fea85762a1d299ed21f1478758a37b8bcf5f5"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.37/pdf_oxide-linux-x86_64-musl-0.3.37.tar.gz"
    sha256 "a945534ce059dfd7fd149357d86bd8e13dc383690dec761b0415a31064f69daa"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
