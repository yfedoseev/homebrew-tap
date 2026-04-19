class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.35"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.35/pdf_oxide-macos-aarch64-0.3.35.tar.gz"
      sha256 "348ed906e94db0cbdf66103ac0c6532f3ab9ea37c53316cb81a5cfde15ef6048"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.35/pdf_oxide-macos-x86_64-0.3.35.tar.gz"
      sha256 "e070b6996160575cb9008a6ae9ecb21e8f0e65dec88c0b2ce9993652c9e5ff5a"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.35/pdf_oxide-linux-x86_64-musl-0.3.35.tar.gz"
    sha256 "889810ace8de2f4f04dd340c368ce29b4cccb33a641a9d1c42bf8e596dcf301f"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
