class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.36"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.36/pdf_oxide-macos-aarch64-0.3.36.tar.gz"
      sha256 "bd6fd300196477a6e0476ede2fc10d42a7c55f93088de684b7e33a4a7a485a78"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.36/pdf_oxide-macos-x86_64-0.3.36.tar.gz"
      sha256 "956819037b20926300ef4fbe6957819f2cbc3a98546be739286d02bd51a9b60d"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.36/pdf_oxide-linux-x86_64-musl-0.3.36.tar.gz"
    sha256 "fdf2a2fee85b56f1d1813dbc4580e059e9547059d72eb9751b684663ddd7a3db"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
