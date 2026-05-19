class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.51"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.51/pdf_oxide-macos-aarch64-0.3.51.tar.gz"
      sha256 "9a8e2d8ad26e3bcbf30858e3eca558ea0b1992b2bae035dd5f05c55bba17dc37"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.51/pdf_oxide-macos-x86_64-0.3.51.tar.gz"
      sha256 "8cb33c4187855de57d7d590bafa536fa782d50bb89d5b668e7067393a14a8878"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.51/pdf_oxide-linux-x86_64-musl-0.3.51.tar.gz"
    sha256 "0d8f25d0e8cd0ac536664ea5c5de769115427ad478877a6ba2d34353fc352260"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
