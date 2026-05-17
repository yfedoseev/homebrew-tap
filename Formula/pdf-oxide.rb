class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.50"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.50/pdf_oxide-macos-aarch64-0.3.50.tar.gz"
      sha256 "61f7231f97353233cedc3ba5fe8f0f80a6539ec8c4384c9e8adb59197a26640e"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.50/pdf_oxide-macos-x86_64-0.3.50.tar.gz"
      sha256 "48a9440ce6b817dd5286ff0815280679b92c54be6719ba0d63126c0016b8615c"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.50/pdf_oxide-linux-x86_64-musl-0.3.50.tar.gz"
    sha256 "a0fdfc4802bf352c7898e0d4f5c91b9980e7beb25c378ed44781e9a321778e9b"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
