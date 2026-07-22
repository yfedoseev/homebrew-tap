class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.8/office_oxide-macos-aarch64-0.1.8.tar.gz"
      sha256 "0647abae71772ce5e6c41854904c262a25c108872c4941dafd38be3fe59200db"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.8/office_oxide-macos-x86_64-0.1.8.tar.gz"
      sha256 "3d7c7d2d486f8babdb6c51847f4a3723aab9df385b3e54fdc172088b6a90b933"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.8/office_oxide-linux-x86_64-musl-0.1.8.tar.gz"
    sha256 "824cd355bde655a3167c33e6fc55a47a34ded9a694fd39f9b1e1cf38ef02bc61"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
