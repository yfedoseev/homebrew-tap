class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.76"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.76/pdf_oxide-macos-aarch64-0.3.76.tar.gz"
      sha256 "7a456cf07f17d29a98708d7338fb757e0e461bd393f4e4138db52d1dd8c90346"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.76/pdf_oxide-macos-x86_64-0.3.76.tar.gz"
      sha256 "6da231fd5e904ae47092db81a74dd9b57608938c364f13c63e40a63109479f0d"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.76/pdf_oxide-linux-x86_64-musl-0.3.76.tar.gz"
    sha256 "7017b373e512d5bbfc08b7baeae6915b9f6dcd6a5476e9b4e0330d7e74ae9aa4"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
