class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.14"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.14/office_oxide-macos-aarch64-0.1.14.tar.gz"
      sha256 "c56aeab9f8684038df6569d7025fc973893e914e70f48fcffa9739aba9a63aae"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.14/office_oxide-macos-x86_64-0.1.14.tar.gz"
      sha256 "823e9ea44cbfe8ee5400a68b70bb8e797b7e94b6938f18363f99cbff936a6166"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.14/office_oxide-linux-x86_64-musl-0.1.14.tar.gz"
    sha256 "153ee73e5104e15ee109d5dcbadb3f7a4d2689a7d20c4393fef7f5db8b498f4e"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
