class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.30"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.30/pdf_oxide-macos-aarch64-0.3.30.tar.gz"
      sha256 "f4f3709fd48f2b3c10851c8c2ea8a01d9461b37589bd2e38a11a44a89c8ac71c"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.30/pdf_oxide-macos-x86_64-0.3.30.tar.gz"
      sha256 "23a41952a26c4e1f952f5d49a6a7f79a99785c3698deafb7940ab00fb5e2dd85"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.30/pdf_oxide-linux-x86_64-musl-0.3.30.tar.gz"
    sha256 "16fa9cff5288e69adf12c3c266b61d77deb00815aa355df9bfd315fdc283f18f"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
