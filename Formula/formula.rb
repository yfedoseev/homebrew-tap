class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.5/office_oxide-macos-aarch64-0.1.5.tar.gz"
      sha256 "2d0b645fb5f7e7b37bd4c50253587b041060063346b094fa2eea850c70b9c0dc"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.5/office_oxide-macos-x86_64-0.1.5.tar.gz"
      sha256 "831789c08003439d1d9344e3f6273af3bf6c0e271cd16ae76c58fc50737edcf7"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.5/office_oxide-linux-x86_64-musl-0.1.5.tar.gz"
    sha256 "16b8e34219b90a753d6ab592fbaa6998f97368d9d30d70e809e19f3fd8954f03"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
