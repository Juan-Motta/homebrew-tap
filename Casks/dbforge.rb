cask "dbforge" do
  version "0.5.1"
  sha256 "d1d6b1fc326984af5fd2fdb18f6ea6a9ed68f5d0b8edda0107c6ed6b4ca83b61"

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
