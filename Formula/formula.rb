class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.3/office_oxide-macos-aarch64-0.1.3.tar.gz"
      sha256 "0d8ec46120ea8de047895ee0afa95552359f662370a25fb20ccc786328a9f49c"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.3/office_oxide-macos-x86_64-0.1.3.tar.gz"
      sha256 "ff2f06e348c77008e8dd53d52a668f323adaa5b19cdcaf84be26da24ea868f1a"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.3/office_oxide-linux-x86_64-musl-0.1.3.tar.gz"
    sha256 "c91748bf7147ca75333f790dcf51b595150353a1639d1686adcaa367b18f8f0c"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
