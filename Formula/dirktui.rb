class Dirktui < Formula
  desc "Column file browser for the shell: dirk cd's, opens, and hands paths to the command line"
  homepage "https://github.com/itscool/homebrew-tap"
  url "https://github.com/itscool/homebrew-tap/releases/download/dirktui-v0.1.4/dirktui-0.1.4-arm64.tar.gz"
  sha256 "b54784b724f3f2931f37c24776acb9604bd43b275980d2e22909b38e969ac556"
  version "0.1.4"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "dirktui"
    # FISH GETS THE SHELL SIDE FROM THE INSTALL ITSELF: fish sources every file in the vendor
    # config directory, so the `dirk` function and Right Arrow are there in the next fish shell
    # with no rc file touched. zsh and bash have no such directory — a formula may not edit a
    # dotfile — so for them the caveat below is the one step left.
    (share/"fish/vendor_conf.d").mkpath
    (share/"fish/vendor_conf.d/dirk.fish").write Utils.safe_popen_read(bin/"dirktui", "init", "fish")
  end

  def caveats
    <<~EOS
      fish: done — `dirk` and Right Arrow are there in your next fish shell.
      zsh or bash: put the shell side in your rc file, once:
        dirktui install            # writes the block for $SHELL
      or by hand:
        eval "$(dirktui init zsh)"  # bash likewise
    EOS
  end

  test do
    assert_match "dirktui #{version}", shell_output("#{bin}/dirktui --version")
    assert_match "dirk", shell_output("#{bin}/dirktui init zsh")
    assert_predicate share/"fish/vendor_conf.d/dirk.fish", :exist?
  end
end
