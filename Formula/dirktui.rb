class Dirktui < Formula
  desc "Column file browser for the shell: dirk cd's, opens, and hands paths to the command line"
  homepage "https://github.com/itscool/homebrew-tap"
  url "https://github.com/itscool/homebrew-tap/releases/download/dirktui-v0.1.0/dirktui-0.1.0-arm64.tar.gz"
  sha256 "14feaabe69c098ac47d26907e5077716fa23229f1c86294e48c16b2c21b27dcd"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dirktui"
  end

  def caveats
    <<~EOS
      Put the shell side in your rc file — a `dirk` function and Right Arrow at the end of a line:
        dirktui install            # writes the block for $SHELL (zsh, bash or fish)
      or by hand:
        eval "$(dirktui init zsh)"  # fish: dirktui init fish | source
    EOS
  end

  test do
    assert_match "dirktui #{version}", shell_output("#{bin}/dirktui --version")
    assert_match "dirk", shell_output("#{bin}/dirktui init zsh")
  end
end
