class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.52"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.52/pdf_oxide-macos-aarch64-0.3.52.tar.gz"
      sha256 "1737b4648ab87c80e83a5f15800295c69240346f62064aa11197a1fd8cdfe05e"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.52/pdf_oxide-macos-x86_64-0.3.52.tar.gz"
      sha256 "668a2cd9a4345ca8eacc4ca6c2dfc36ab6585b5295971931278b854382d40ec9"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.52/pdf_oxide-linux-x86_64-musl-0.3.52.tar.gz"
    sha256 "03bf320c6fb5fd5d31cfec9075b7f518bb2f177956383059cbca9d78e1ae4225"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
