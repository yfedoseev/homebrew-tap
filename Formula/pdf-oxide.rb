class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.11/pdf_oxide-macos-aarch64-0.3.11.tar.gz"
      sha256 "2dad380db90a79af859e35aaf9259d640697b7942c483cae730ccace9cf93a02"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.11/pdf_oxide-macos-x86_64-0.3.11.tar.gz"
      sha256 "10abe4e6b4fe3ce46384a2d327ff40809f32d67afb57c6401b5f05b05390532f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.11/pdf_oxide-linux-x86_64-musl-0.3.11.tar.gz"
    sha256 "2b7a8acdd6658b49c19c49d118bb348d9a3517da9505f9a77cfd6969b1b6e123"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
