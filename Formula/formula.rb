class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.16"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.16/office_oxide-macos-aarch64-0.1.16.tar.gz"
      sha256 "c435a9e6289e48081419b9f49c9f0271b84b35af62d1f600dab7939c014e9220"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.16/office_oxide-macos-x86_64-0.1.16.tar.gz"
      sha256 "8c303a80f2183ff212f1bbd7324a307258db1cd4555b82ac45a4037f645b6f4f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.16/office_oxide-linux-x86_64-musl-0.1.16.tar.gz"
    sha256 "1494c79f87b65d33ac697f2e8acc208519dda6701c94e9f14c22b631209a5995"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
