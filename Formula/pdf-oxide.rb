class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.55"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.55/pdf_oxide-macos-aarch64-0.3.55.tar.gz"
      sha256 "345f58ca5f91666edd8703edf2e8e79946093b0fdc320b741dc9136cf1c655ef"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.55/pdf_oxide-macos-x86_64-0.3.55.tar.gz"
      sha256 "03ecf5e8c6cdd987ea4b8cfca1c018da7ee38383cc6f3129fffc639d64e3ae98"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.55/pdf_oxide-linux-x86_64-musl-0.3.55.tar.gz"
    sha256 "31843a5b59402895c4d70bbb8752d1d8c24b6927f1b9d48b4b0ceff2871b032d"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
