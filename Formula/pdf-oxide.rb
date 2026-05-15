class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.48"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.48/pdf_oxide-macos-aarch64-0.3.48.tar.gz"
      sha256 "a69ed7a3cbcc39ad36e780c0b8d35548bbd5d5b31872aa33ab02ab4a73b3584a"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.48/pdf_oxide-macos-x86_64-0.3.48.tar.gz"
      sha256 "6ac00dc1c059fb865e73b555013c46d69d816644e0a68e9d86ba919fc4daf63a"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.48/pdf_oxide-linux-x86_64-musl-0.3.48.tar.gz"
    sha256 "b7fe0909c9a6e373b13bd4e303501157c9876e0d5289d059ebc4e715efbeb254"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
