class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.4/office_oxide-macos-aarch64-0.1.4.tar.gz"
      sha256 "f13d83cdd5582cb54d9679212f50b3b176aa36b464cb71ed079223c135a7c85a"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.4/office_oxide-macos-x86_64-0.1.4.tar.gz"
      sha256 "8aa5783dded2ca3575ed50b9c238cb36f40c14c527a3639a5796f78a9dc7f73d"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.4/office_oxide-linux-x86_64-musl-0.1.4.tar.gz"
    sha256 "44a9b0a73426381ae3e9eade54d3e2b1b100e8d590d8dbe39db05cec14d2b287"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
