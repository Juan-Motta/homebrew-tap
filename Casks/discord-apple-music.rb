cask "discord-apple-music" do
  version "0.2.1"
  sha256 "ca7d372a4a38f4250191cac775676c3a9a3e192e2db3fd5abebb9f7fa45d026b"

  url "https://github.com/Juan-Motta/discord-apple-music/releases/download/v0.2.1/DiscordAppleMusic-0.2.1-macos.zip"
  name "Discord Apple Music"
  desc "Show Apple Music playback as a Discord \"Listening to\" Rich Presence"
  homepage "https://github.com/Juan-Motta/discord-apple-music"

  auto_updates true
  depends_on macos: :sonoma

  app "Discord Apple Music.app"

  uninstall launchctl: "dev.discord-apple-music.agent",
            quit:      "dev.discord-apple-music"

  zap trash: [
    "~/Library/Application Support/Discord Apple Music",
    "~/Library/Preferences/dev.discord-apple-music.plist",
  ]

  caveats <<~EOS
    Open Discord Apple Music from Applications and turn on "Show in Discord".
    The first time, macOS asks whether it may control Music: click Allow.
  EOS
end
