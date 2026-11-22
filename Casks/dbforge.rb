cask "dbforge" do
  version "0.4.5"
  sha256 "f01c79af9e3600764cde3c181f0d01bfa5389730d3e519cd517c7b2767d0df09"

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
