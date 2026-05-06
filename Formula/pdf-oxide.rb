class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.44"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.44/pdf_oxide-macos-aarch64-0.3.44.tar.gz"
      sha256 "15fe72baa6a33bffe4c88daf866cdde3066650c65f2faa906b3ef8b801e5a323"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.44/pdf_oxide-macos-x86_64-0.3.44.tar.gz"
      sha256 "1b4407479861de1444bf7a578d2d1e8425244a7a7752f4a62ecf24ec591680ae"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.44/pdf_oxide-linux-x86_64-musl-0.3.44.tar.gz"
    sha256 "f48b7ed4a23ff43079cea9443a58a9431bea4342f1d632573922a040b2f5b3b3"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
