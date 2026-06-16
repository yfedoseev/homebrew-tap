class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.65"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.65/pdf_oxide-macos-aarch64-0.3.65.tar.gz"
      sha256 "c87e6742ff96bd7afd42769d652c5690dfe11c1fa1a22fe7afa11d3d21632a52"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.65/pdf_oxide-macos-x86_64-0.3.65.tar.gz"
      sha256 "ca943c20400da7feb88b8ae5b502ba76c696134735c9c70c24f5fdbccc521712"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.65/pdf_oxide-linux-x86_64-musl-0.3.65.tar.gz"
    sha256 "e90f6420e1adae7901827d371e8a60bc9da84d57481e9c97a471fa42edd86b61"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
