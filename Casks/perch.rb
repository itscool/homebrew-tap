cask "perch" do
  version "2.0.262"
  sha256 "9df4dd04548743dc12aba00d6ec0f52a973cfc12c5dcecc38fed758e8d2dd6e8"

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
