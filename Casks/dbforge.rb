cask "dbforge" do
  version "0.4.3"
  sha256 "22a909c62d8e59690857d11fe6fa351a6d1eb5ceebbc93b457414e6b8ac85a0a"

  url "https://github.com/Juan-Motta/dbforge/releases/download/v#{version}/DBForge-#{version}.dmg"
  name "DBForge"
  desc "Native database client for SQL databases, MongoDB, Cosmos DB and Redis"
  homepage "https://github.com/Juan-Motta/dbforge"

  auto_updates true
  depends_on :macos

  app "DBForge.app"

  uninstall quit: "dev.dbforge.app"

  zap trash: [
    "~/Library/Application Support/dev.dbforge.app",
    "~/Library/Caches/dev.dbforge.app",
    "~/Library/Saved Application State/dev.dbforge.app.savedState",
    "~/Library/WebKit/dev.dbforge.app",
  ]
end
