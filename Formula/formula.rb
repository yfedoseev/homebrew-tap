class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.6/office_oxide-macos-aarch64-0.1.6.tar.gz"
      sha256 "593d70b901ddbc2f0cb6f3bd75e0c9424f5410756198ecf59eaa687f0307c6e2"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.6/office_oxide-macos-x86_64-0.1.6.tar.gz"
      sha256 "cf7bfc7467e4c2f760b6760d6b11e7246084c2ae15a728f406e6a40acdc16c6f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.6/office_oxide-linux-x86_64-musl-0.1.6.tar.gz"
    sha256 "0d8cba5eb10d286b0a119948a196575e30c50e66b2974a332c09d79ce7d28af9"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
