class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.73"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.73/pdf_oxide-macos-aarch64-0.3.73.tar.gz"
      sha256 "bea0116149f2ee7c5e49ebeef26d20a37596eb793a71164a6c21dfcc919bf854"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.73/pdf_oxide-macos-x86_64-0.3.73.tar.gz"
      sha256 "483de69f053e3d1df875906bcc7a007c21ff1c2ce89285727307e9e8bec15220"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.73/pdf_oxide-linux-x86_64-musl-0.3.73.tar.gz"
    sha256 "3e7dd3ecfb38f66aa08567e825e792e7aa25bb6ff51c3cc96bb11c7afa6baca4"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
