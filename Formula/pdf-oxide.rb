class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.20"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.20/pdf_oxide-macos-aarch64-0.3.20.tar.gz"
      sha256 "7c2c10cd21e6404cc6960c0d1bc2629044e860a2cb6859816dc413335a2b1fd8"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.20/pdf_oxide-macos-x86_64-0.3.20.tar.gz"
      sha256 "97ba0bfab87ed5c07fcdecd6024ee55642b60e0e6fe045d5ab2929056918b2ef"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.20/pdf_oxide-linux-x86_64-musl-0.3.20.tar.gz"
    sha256 "8a8849e58ca6bf42d735b94595456d37def1c700ff0ae72fd6a709ce2860a36f"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
