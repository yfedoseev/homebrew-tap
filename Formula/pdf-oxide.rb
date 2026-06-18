class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.66"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.66/pdf_oxide-macos-aarch64-0.3.66.tar.gz"
      sha256 "576cf460a5ec92ed01193d4a3705772816d4db7512233ef831af58fa967d5a58"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.66/pdf_oxide-macos-x86_64-0.3.66.tar.gz"
      sha256 "850fb5533b915012dc3314f99f6a6c75100d89ccd2d08ffa77564792fdf03262"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.66/pdf_oxide-linux-x86_64-musl-0.3.66.tar.gz"
    sha256 "3c130784b4204f37829b2f8fc78592643c81cbe5b1886e2a825a4856f348b3b9"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
