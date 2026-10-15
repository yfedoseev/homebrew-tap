class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.15/office_oxide-macos-aarch64-0.1.15.tar.gz"
      sha256 "e432573aba26206a2feb8bb2c0bc6fdf8b4481ecd087ad49741bc5dca86cf8be"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.15/office_oxide-macos-x86_64-0.1.15.tar.gz"
      sha256 "681d426702badc0f845ed143c5a9f6b4c3f1f270b8fecea727e5d74658f1182b"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.15/office_oxide-linux-x86_64-musl-0.1.15.tar.gz"
    sha256 "e83793dc62511dcb3805b3cc1098a6e9bf3304518e92d2eb3246eb89a10bcc37"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
