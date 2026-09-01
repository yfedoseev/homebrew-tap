class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.9"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.9/office_oxide-macos-aarch64-0.1.9.tar.gz"
      sha256 "bdaa2b4efd60271b4283233978bf0a1bab0845b1c70f209c10e347110a5cc4d1"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.9/office_oxide-macos-x86_64-0.1.9.tar.gz"
      sha256 "dd2050182f0b62971bea75d7f8ca518be410fbb35f66303c58ff7236cafb7813"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.9/office_oxide-linux-x86_64-musl-0.1.9.tar.gz"
    sha256 "f3b4d5eb4052b2e9f8bc1779cc58be65c54d5e4975a54f4e9a1dc6b658fd0958"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
