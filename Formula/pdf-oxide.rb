class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.60"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.60/pdf_oxide-macos-aarch64-0.3.60.tar.gz"
      sha256 "00bce3cc24135fe27272b22c69b68fce769bbf12b601bb1555c75ba480878358"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.60/pdf_oxide-macos-x86_64-0.3.60.tar.gz"
      sha256 "8798409f06b0283c4350b7a292e863189c739adfd4c36bdfa467b4a79cf5126f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.60/pdf_oxide-linux-x86_64-musl-0.3.60.tar.gz"
    sha256 "8493908fcc0cf98dc52d7c8cbb8d0fac15e2f615f4bc70d3c900e8b87c3dd536"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
