class PagesToDocx < Formula
  desc "Convert Apple Pages files to DOCX easily on macOS"
  homepage "https://github.com/YMP112/PagesToDocx-AppleApp"
  url "https://github.com/YMP112/PagesToDocx-AppleApp/releases/download/PagesToDocx/PagesToDocx.zip"
  sha256 "c6a32791cd7087a54fce9f129cb0830ec39e5427854abdfd5bcfd9c024a55f64"
  version "2.0"

  depends_on :macos

  def install
    prefix.install "PagesToDocx.app"
    bin.install_symlink "#{prefix}/PagesToDocx.app/Contents/MacOS/PagesToDocx" => "pages_to_docx"
  end

  def caveats
    <<~EOS
      The app was installed in:
        #{opt_prefix}/PagesToDocx.app
      To launch the GUI app, open it from Finder or run:
        open "#{opt_prefix}/PagesToDocx.app"
      To run from Terminal, use:
        pages_to_docx
    EOS
  end
end
