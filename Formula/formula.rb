class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.11"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.11/office_oxide-macos-aarch64-0.1.11.tar.gz"
      sha256 "aa254385a43a7a26e011a43f5d6da0727b5bd8a2ba16a20b4e782b55b10592f9"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.11/office_oxide-macos-x86_64-0.1.11.tar.gz"
      sha256 "d638469c4a888a6dab71f0f9786390140d12f9de333a24b223fa1880f29f5d30"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.11/office_oxide-linux-x86_64-musl-0.1.11.tar.gz"
    sha256 "17d32a1a4b83e3ccc6893d8337d8410a5ecf233856b2fb32907194e8574f5fa9"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
