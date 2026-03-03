class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.13"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.13/pdf_oxide-macos-aarch64-0.3.13.tar.gz"
      sha256 "133d143b3edc2b39fef2cb3a9f45b044f48e48d3dbe4d1319fdf30d4d2678e31"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.13/pdf_oxide-macos-x86_64-0.3.13.tar.gz"
      sha256 "3a114d27e69caf37663c2329995957521073754e630e7c8a363e32c341a36b23"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.13/pdf_oxide-linux-x86_64-musl-0.3.13.tar.gz"
    sha256 "6d57c03b9d922f0729fea51df0b1c87481f4ce21fc7fdfb0215b9d4732e39c19"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
