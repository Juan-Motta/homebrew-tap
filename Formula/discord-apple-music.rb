class DiscordAppleMusic < Formula
  desc "Show Apple Music playback as a Discord \"Listening to\" Rich Presence"
  homepage "https://github.com/Juan-Motta/discord-apple-music"
  url "https://github.com/Juan-Motta/discord-apple-music/releases/download/v0.1.0/discord-apple-music-0.1.0-macos-arm64.zip"
  sha256 "9d207fb381b60d3e3aa01fa9ceb8405dd62ff27e1b250214832e01cdf0b6023e"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "discord-apple-music"
  end

  def caveats
    <<~EOS
      Start it now and at every login:
        brew services start discord-apple-music

      The first time, macOS asks whether discord-apple-music may control Music: click Allow.

      Use either `brew services` or `discord-apple-music install`, not both,
      or two copies will run.
    EOS
  end

  service do
    run [opt_bin/"discord-apple-music", "run"]
    keep_alive true
    process_type :background
    log_path var/"log/discord-apple-music.log"
    error_log_path var/"log/discord-apple-music.log"
  end

  test do
    assert_match "Usage: discord-apple-music", shell_output("#{bin}/discord-apple-music --help")
  end
end
