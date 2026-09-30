class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.13"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.13/office_oxide-macos-aarch64-0.1.13.tar.gz"
      sha256 "81a8ae3105037c27d3bc4c25a2ed8f48e47df4711cfa276443eebc292c6dab8b"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.13/office_oxide-macos-x86_64-0.1.13.tar.gz"
      sha256 "481b76c5c10db3e9a9cb84fa0e778a83ac50cdd8d5412f3f1db295fec322713f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.13/office_oxide-linux-x86_64-musl-0.1.13.tar.gz"
    sha256 "490dd3fcd1dee1e70aa53f1781b837f68f09eb84835b4123beb14bb2bc07ab38"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
