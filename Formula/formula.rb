class OfficeOxide < Formula
  desc "The fastest Office document toolkit — extract text from DOCX, XLSX, PPTX, DOC, XLS, PPT"
  homepage "https://github.com/yfedoseev/office_oxide"
  version "0.1.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.7/office_oxide-macos-aarch64-0.1.7.tar.gz"
      sha256 "f700c3ca04e0944e0207cc1bec3bf7549d84af51a44036441a7626105a46fd54"
    else
      url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.7/office_oxide-macos-x86_64-0.1.7.tar.gz"
      sha256 "3a868983ea7747797ed8b5e82b386b5fbf139f65f71b3b91a651e0222289cc0a"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/office_oxide/releases/download/v0.1.7/office_oxide-linux-x86_64-musl-0.1.7.tar.gz"
    sha256 "07dfa4affb182f8c4b7a29e99febb8b44ca0bc6be8e4bb9d9e5c70ec99c52138"
  end

  def install
    bin.install "office-oxide"
    bin.install "office-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/office-oxide --version")
  end
end
