class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.39"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.39/pdf_oxide-macos-aarch64-0.3.39.tar.gz"
      sha256 "99e7f62e79d25e362215e2e8243fc1fd8f91f35f92f90b193a7f5961efdd6169"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.39/pdf_oxide-macos-x86_64-0.3.39.tar.gz"
      sha256 "d2c751f50ad09a92ee918096bbe95b4c0bfa949dc56f782c4c11dd5a3a579a47"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.39/pdf_oxide-linux-x86_64-musl-0.3.39.tar.gz"
    sha256 "9590afe003f005e11c3169864c6fdd77bc1e37a4eb9e28a4a85f7d02d11ebe12"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
