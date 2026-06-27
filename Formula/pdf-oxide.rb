class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.69"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.69/pdf_oxide-macos-aarch64-0.3.69.tar.gz"
      sha256 "6df536b1a7c98f1355a4d83a7efd1c3341436811258e5eddfebf40d67764a6e6"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.69/pdf_oxide-macos-x86_64-0.3.69.tar.gz"
      sha256 "f6ab25f022bd05a01992470fa3aa84341cfb1233a9222fc032a01c35fa08db2b"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.69/pdf_oxide-linux-x86_64-musl-0.3.69.tar.gz"
    sha256 "d1fdba9b809a092c07c015e0f10f999018b596b4ad3260b4931a781a8756284d"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
