class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.23"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.23/pdf_oxide-macos-aarch64-0.3.23.tar.gz"
      sha256 "dc8e1bd26a1dfc46dbd1bb7ca2c8c03c3fb18a76dbc4323be2625b1a2f4de231"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.23/pdf_oxide-macos-x86_64-0.3.23.tar.gz"
      sha256 "8348e817d8d6c11e88e4c3e49a3d1f8694843e45bb8a3ed5d8e35307f0d0f521"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.23/pdf_oxide-linux-x86_64-musl-0.3.23.tar.gz"
    sha256 "edd53599bcbb32617dadaa46497a7375f6a5b952a37da5d851bb97fe53d2a86e"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
