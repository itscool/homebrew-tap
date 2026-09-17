cask "perch" do
  version "2.0.205"
  sha256 "d7354db4c62b0d72020291c4cfffb52cd609a820c79f86932032591f2626776d"

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
