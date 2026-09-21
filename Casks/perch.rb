cask "perch" do
  version "2.0.273"
  sha256 "8e2a8a67493cb96e63c5e79dcdc8473e5960868533009af994addf8dc0ba100f"

  url "https://github.com/itscool/perch/releases/download/v#{version}/Perch-#{version}.dmg"
  name "Perch"
  desc "Menu bar controls for safer agents, displays, keyboards, and lid-aware sleep"
  homepage "https://github.com/itscool/perch"

  auto_updates true
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
