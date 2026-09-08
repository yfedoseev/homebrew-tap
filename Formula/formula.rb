class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.10"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.10/office_oxide-macos-aarch64-0.1.10.tar.gz"
      sha256 "2ab76e0c5a8ab8bcf52233c51c57e0fd29c9a489dfc31d29626b34fd2a51e598"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.10/office_oxide-macos-x86_64-0.1.10.tar.gz"
      sha256 "5f8fe44c66465580b08673c28f24be8f192167930ba5409d6725f6ab5b1e9805"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.10/office_oxide-linux-x86_64-musl-0.1.10.tar.gz"
    sha256 "3b327f0f9df5e39cbae7670984232bbc366b0fee0edaa08703398285238926a6"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
