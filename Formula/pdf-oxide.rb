class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.12"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.12/pdf_oxide-macos-aarch64-0.3.12.tar.gz"
      sha256 "2c05cfba0b7d77e769e07f9614a2e14f90df1571e36f406b117069293e5b74dc"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.12/pdf_oxide-macos-x86_64-0.3.12.tar.gz"
      sha256 "be82ca1bb254020a921e09e1bf59feafc77a121f7ff80d3dce4d8ae2f7b94c65"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.12/pdf_oxide-linux-x86_64-musl-0.3.12.tar.gz"
    sha256 "8ea09c48dc42985a9dda713168bf1b80dffdee1b342d2af97af4889407575d30"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
