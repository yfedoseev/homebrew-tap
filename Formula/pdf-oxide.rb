class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.11/pdf_oxide-macos-aarch64-0.3.11.tar.gz"
      sha256 "7999122bff331055ca8b151625ec75eeb6776a159a5acd44b409d4f204af3be8"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.11/pdf_oxide-macos-x86_64-0.3.11.tar.gz"
      sha256 "d940bdff75de9d6507a2e38076bde96412984bcab06bb91000f08e9efd0a05e3"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.11/pdf_oxide-linux-x86_64-musl-0.3.11.tar.gz"
    sha256 "eff8993c5deeb69b101529a36fa36cd818976029622d5a8f973c7087320cfb60"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
