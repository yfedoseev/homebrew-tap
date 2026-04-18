class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.34"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.34/pdf_oxide-macos-aarch64-0.3.34.tar.gz"
      sha256 "fd6945f893a8bf74cbe51eec52782d238804dcac8a6f2c15513ddc008445d2df"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.34/pdf_oxide-macos-x86_64-0.3.34.tar.gz"
      sha256 "b2a743991e662b1af258cda129bc1185a461635c477e594bccd45aad7fb21ea5"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.34/pdf_oxide-linux-x86_64-musl-0.3.34.tar.gz"
    sha256 "33af431e7d7324c0a5d9a89e034b0aae7d54a4cd776da2bf93a63006444327e9"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
