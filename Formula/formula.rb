class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.12/office_oxide-macos-aarch64-0.1.12.tar.gz"
      sha256 "f84e2b30ec2690410fd28e021a3ee47289f129531aa590f1f931a0b4e39555da"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.12/office_oxide-macos-x86_64-0.1.12.tar.gz"
      sha256 "02d701406da98b278f8f7aabe4e9b6bc9c08cdd258ae0d409595b1130bc9144d"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.12/office_oxide-linux-x86_64-musl-0.1.12.tar.gz"
    sha256 "54dd8cafca8ded8a68b4fc086e079916bfcc74c52cf97183dd16340d17d0d025"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
