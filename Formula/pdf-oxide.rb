class PdfOxide < Formula
  desc "The fastest PDF toolkit — extract text, images, metadata, and more"
  homepage "https://github.com/yfedoseev/pdf_oxide"
  version "0.3.18"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.18/pdf_oxide-macos-aarch64-0.3.18.tar.gz"
      sha256 "ae64b2a4255bb1197e270c362f944799a469ac75ccacc77ef78496c5136e3c4a"
    else
      url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.18/pdf_oxide-macos-x86_64-0.3.18.tar.gz"
      sha256 "45b2b8c4f2afdd74cd037f9419c54c38790425d6ec57413fb1f0743fb1b7bfde"
    end
  end

  on_linux do
    url "https://github.com/yfedoseev/pdf_oxide/releases/download/v0.3.18/pdf_oxide-linux-x86_64-musl-0.3.18.tar.gz"
    sha256 "a89d90ac19beffcf3a7e8c5c877821532f34c45e5f66c13dcd565e743145fe66"
  end

  def install
    bin.install "pdf-oxide"
    bin.install "pdf-oxide-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdf-oxide --version")
  end
end
