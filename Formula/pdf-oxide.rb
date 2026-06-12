class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.64"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.64/pdf_oxide-macos-aarch64-0.3.64.tar.gz"
      sha256 "b5e01dad8f2569faed0a74c078859fd433318eb907005f743a6482061f25753a"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.64/pdf_oxide-macos-x86_64-0.3.64.tar.gz"
      sha256 "31f646b3dba70d22d6ae8e788219a5d9e9a4af5bfd13a17f210e8112205aca0a"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.64/pdf_oxide-linux-x86_64-musl-0.3.64.tar.gz"
    sha256 "ae2b67c79f45dd642fa2fa8afa0ee4746d78393c637fdea4fb805c16cfc7ebd8"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
