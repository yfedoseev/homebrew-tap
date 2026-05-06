class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.44"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.44/pdf_oxide-macos-aarch64-0.3.44.tar.gz"
      sha256 "c6fa5155ed48a1bc88cec7fc30a20e76442fb227cb9d8b038a6cb6dd55183d28"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.44/pdf_oxide-macos-x86_64-0.3.44.tar.gz"
      sha256 "954c6fc898723ec0298e2a568c54188fef781498f33d1ef7128b7ef4f0c07b0e"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.44/pdf_oxide-linux-x86_64-musl-0.3.44.tar.gz"
    sha256 "7e5294513b64dbdebaa7a54b9cec5fc9ba3c1433c58b9423296f85fc2c3c3466"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
