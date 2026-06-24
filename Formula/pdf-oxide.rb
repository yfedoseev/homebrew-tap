class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.68"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.68/pdf_oxide-macos-aarch64-0.3.68.tar.gz"
      sha256 "37be9c10a338af7cd91c98c4e46bcbfadd9559e6d94aae60b4b825ce3fb673a3"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.68/pdf_oxide-macos-x86_64-0.3.68.tar.gz"
      sha256 "a98d82a63a9b518c7c70e6c06b81360681677156d4533513bc8d635c52cd6f40"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.68/pdf_oxide-linux-x86_64-musl-0.3.68.tar.gz"
    sha256 "9e67fffc1abe2c2bb7e6763c64f08631e9f066508b8408a44ac2d7040a6c0f91"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
