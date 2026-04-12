class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.29"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.29/pdf_oxide-macos-aarch64-0.3.29.tar.gz"
      sha256 "8a950b4a5e8f22c5a6d994d56bf821adb46ee4267c1db99dd0aa098a4dfaa594"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.29/pdf_oxide-macos-x86_64-0.3.29.tar.gz"
      sha256 "773941a771c6fbed09b8148b914e8b562bc406cf87ab158b01b8b1a7aee1a217"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.29/pdf_oxide-linux-x86_64-musl-0.3.29.tar.gz"
    sha256 "6ed7d66b9e0e1396c4aa82af91d8c550ce2d80a31dc29c4bb3679f5341b31179"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
