class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.2/office_oxide-macos-aarch64-0.1.2.tar.gz"
      sha256 "16ef66d9bca7586fa8791a3819d2752c8d5c7f1a3a5fb5873e7998095b875bd9"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.2/office_oxide-macos-x86_64-0.1.2.tar.gz"
      sha256 "cd397595cae46dd13fd42e4af3bf0776e5deb60528a413d4763fe565dbd25556"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.2/office_oxide-linux-x86_64-musl-0.1.2.tar.gz"
    sha256 "ede6274ab379e91eeefd674aec24ec37792dc5a3042d7d7f477295012fcbfca1"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
