class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.38"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.38/pdf_oxide-macos-aarch64-0.3.38.tar.gz"
      sha256 "36dc137f9da6a63a66e38769e6aa393118831f4af64bcf0522f2b8e8106b7b82"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.38/pdf_oxide-macos-x86_64-0.3.38.tar.gz"
      sha256 "1e8f6b023b5ea786d13e0d6eeb7c8981abff24b4b53b3920be1d0cb110e500a2"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.38/pdf_oxide-linux-x86_64-musl-0.3.38.tar.gz"
    sha256 "6056d4cc17665a50d73c1954d01a7e91c56f760beb5a02a672171be351778f40"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
