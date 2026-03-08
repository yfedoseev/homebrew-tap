class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.16"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.16/pdf_oxide-macos-aarch64-0.3.16.tar.gz"
      sha256 "abe74fa845ae96ee7c720877f815a72bd1f16c0b1de63271f94a6892106f88d8"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.16/pdf_oxide-macos-x86_64-0.3.16.tar.gz"
      sha256 "b4c59f069265d96ae7849cd5229d875fcfc7acb6e4c6e15fe5062d6561d3d93e"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.16/pdf_oxide-linux-x86_64-musl-0.3.16.tar.gz"
    sha256 "16a7402f792c4aebac69c5836a7604d9d439bcabe43c676bee48bc96da9444b3"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
