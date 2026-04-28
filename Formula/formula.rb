class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.0/office_oxide-macos-aarch64-0.1.0.tar.gz"
      sha256 "0fba8dd537585a7bc5f9070ea5b5b8f42364c85247cfb092f74765cb2b09b2cc"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.0/office_oxide-macos-x86_64-0.1.0.tar.gz"
      sha256 "c3d1b3a9183c3305de6fa48308f43c2a7acdef01b8933e55e3e842bc1f6ce930"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.0/office_oxide-linux-x86_64-musl-0.1.0.tar.gz"
    sha256 "f985a2c6651384baba590efb1570ae193288bbbbdee27290c93738c3235a15b1"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
