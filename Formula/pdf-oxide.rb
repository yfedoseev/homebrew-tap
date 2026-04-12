class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.28"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.28/pdf_oxide-macos-aarch64-0.3.28.tar.gz"
      sha256 "f4a2861888fffdbba8c1cc5e1f43196f3df8177dadfb11adc5dfdfaea521dc1b"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.28/pdf_oxide-macos-x86_64-0.3.28.tar.gz"
      sha256 "b7f7525e6131b92ffbb7894b5401001196564d988c98fb1305487162a1f4d813"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.28/pdf_oxide-linux-x86_64-musl-0.3.28.tar.gz"
    sha256 "5ee0d35cdcc0e5c92e904ac1ba3a28b4b0f354e1859b3247e41a18ac5897833c"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
