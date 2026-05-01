class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.1/office_oxide-macos-aarch64-0.1.1.tar.gz"
      sha256 "cff5cbcf60b19bcbfc6f6680938363c67e9882ed656cce0e1129122e63332929"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.1/office_oxide-macos-x86_64-0.1.1.tar.gz"
      sha256 "af4509b60db3867f7d99ab982834975d1592f006f56fc136d467f9651099cb1c"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.1/office_oxide-linux-x86_64-musl-0.1.1.tar.gz"
    sha256 "1ae8a4f96963cd14cc45e80afe221775f05e52eb6b626b9b9c10492afe64ce43"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
