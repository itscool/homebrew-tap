cask "perch" do
  version "2.0.150"
  sha256 "d8f6de2e3259af1e2a056f2f040a41ee5f89fb47b393bd33a2985850dc1cb05a"

  url "https://github.com/itscool/perch/releases/download/v#{version}/Perch-#{version}.dmg"
  name "Perch"
  desc "Menu bar controls for safer agents, displays, keyboards, and lid-aware sleep"
  homepage "https://github.com/itscool/perch"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Perch.app"

  zap trash: [
    "~/Library/Application Support/Perch",
    "~/Library/LaunchAgents/local.scott.perch.guardian.plist",
    "~/Library/LaunchAgents/local.scott.perch.input.plist",
    "~/Library/Preferences/local.scott.perch.plist",
  ]
end
