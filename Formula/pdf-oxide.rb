class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.57"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.57/pdf_oxide-macos-aarch64-0.3.57.tar.gz"
      sha256 "e267b2488b617373314b8baed1e6e0b9fc09c8fe3961ad2b8680d7518de2599d"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.57/pdf_oxide-macos-x86_64-0.3.57.tar.gz"
      sha256 "0c9238fe2b06215b4c0e835f5231b3223e3b44cb0f12b212dc83af8c69987964"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.57/pdf_oxide-linux-x86_64-musl-0.3.57.tar.gz"
    sha256 "8b16204b8337e016ffeca125761f88755825efd83ae04a60a74e941716dd7499"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
