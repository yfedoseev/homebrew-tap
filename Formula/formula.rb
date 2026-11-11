class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.17"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.17/office_oxide-macos-aarch64-0.1.17.tar.gz"
      sha256 "472a79fa14f06bffcb5d25e78a18bf51b914f4d020bd91e88a79bc06b31f788b"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.17/office_oxide-macos-x86_64-0.1.17.tar.gz"
      sha256 "5da6e85484eb7a581a3473836c95d96410d294530dcaf1755edabb90e3170c60"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.17/office_oxide-linux-x86_64-musl-0.1.17.tar.gz"
    sha256 "d831307887a91747b6e9b80bba3a3b8806a6d4003ebef25503cb3c59fdc7318f"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
