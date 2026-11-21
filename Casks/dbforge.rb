cask "dbforge" do
  version "0.4.4"
  sha256 "546fed2d91eb217035776426fbd816bf35937a1ddd643f0400538642203c203c"

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
