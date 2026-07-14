class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.74"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.74/pdf_oxide-macos-aarch64-0.3.74.tar.gz"
      sha256 "214adf0df289c8986010c11060c0a08f3b54f9e55a21b56b8da21a558a417823"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.74/pdf_oxide-macos-x86_64-0.3.74.tar.gz"
      sha256 "45bcd6547b74ac424921a7cb35e417bef079698ec8eb9626118dd67892a6d81b"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.74/pdf_oxide-linux-x86_64-musl-0.3.74.tar.gz"
    sha256 "48d97aa294383a930a3694f4268a53d8b4a905c75e0c0132f3e4abbb56125005"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
