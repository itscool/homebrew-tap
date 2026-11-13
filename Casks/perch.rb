cask "perch" do
  version "2.0.301"
  sha256 "12d2cfdb6871c64d02dce97fb1cf71de15214cf04789a01b3e2f5fb39d20fe3d"

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
