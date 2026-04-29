class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.40"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.40/pdf_oxide-macos-aarch64-0.3.40.tar.gz"
      sha256 "ffec03cb51dbe8c3bb2d4705cbc23484d2329b9d9e60f1412d7b76294bbdf33e"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.40/pdf_oxide-macos-x86_64-0.3.40.tar.gz"
      sha256 "18ad9242382dccbda95c694e859b603a8f7fd0fb62c3f7e5c4ad68e32ff8b45b"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.40/pdf_oxide-linux-x86_64-musl-0.3.40.tar.gz"
    sha256 "5353f448f23a5206ce987626d1f30c251d695bfc7eae6ec6b4b89c675e507982"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
