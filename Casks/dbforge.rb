cask "dbforge" do
  version "0.4.6"
  sha256 "292dc883ae517b90102300eea011f1054540f343a7e985ba08cadf6ef25328f6"

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
