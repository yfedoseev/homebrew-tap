class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.58"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.58/pdf_oxide-macos-aarch64-0.3.58.tar.gz"
      sha256 "9e705f09d354da83662956aaa800dc3b11f2dcd744a369cea65dac1f80ff78cb"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.58/pdf_oxide-macos-x86_64-0.3.58.tar.gz"
      sha256 "f2b00d017da88b9eaf829055b26222940aa5fdb72d4966bb2bfd9439517f7aec"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.58/pdf_oxide-linux-x86_64-musl-0.3.58.tar.gz"
    sha256 "a12498b40d0d18a23f8a70a6edf1eb95d0b3d0f660e3e10d7e31ced92f820a5a"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
