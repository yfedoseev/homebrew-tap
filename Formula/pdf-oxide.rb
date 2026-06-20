class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.67"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.67/pdf_oxide-macos-aarch64-0.3.67.tar.gz"
      sha256 "c08ebbdb2e03dbf48c7ca75440889bfa4812b659279bf959e65daf632a906bff"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.67/pdf_oxide-macos-x86_64-0.3.67.tar.gz"
      sha256 "0e513981d127cd34d2763307e748bc730b6a3d8e5b1953fcbba0f50d5040830f"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.67/pdf_oxide-linux-x86_64-musl-0.3.67.tar.gz"
    sha256 "204544dc16d21dc52a295ade207bf2a961b736966f5ab82b3823fb0372e737fd"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
