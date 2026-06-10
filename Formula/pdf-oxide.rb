class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.63"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.63/pdf_oxide-macos-aarch64-0.3.63.tar.gz"
      sha256 "6d278ac0a5be1b22dad80786f578835708f18337bcb14875ebafb18ffc77249b"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.63/pdf_oxide-macos-x86_64-0.3.63.tar.gz"
      sha256 "377800ce09bde70c37aa3f120ed92c58e7cce3c45b527f82078b9ca46e2cd797"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.63/pdf_oxide-linux-x86_64-musl-0.3.63.tar.gz"
    sha256 "8c5898fa847bd2dc4bc560455166b11ab1c76aea502d46652a2faddb8b282c34"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
