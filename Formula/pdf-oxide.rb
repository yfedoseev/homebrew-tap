class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.56"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.56/pdf_oxide-macos-aarch64-0.3.56.tar.gz"
      sha256 "9b38e78d1eed015d41108782291691a37b3e88c61557f1f4f5cbec2bfa8140f2"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.56/pdf_oxide-macos-x86_64-0.3.56.tar.gz"
      sha256 "d3498c8b3eb6d8f93dfa5b556ee8a708906bcf5375bca90c69bc566942257af3"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.56/pdf_oxide-linux-x86_64-musl-0.3.56.tar.gz"
    sha256 "8952dc79d8a291ea18d93fd6a465ce8612abb400849f7e89f96078fda5c93d09"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
