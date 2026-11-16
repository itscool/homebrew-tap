cask "perch" do
  version "2.0.311"
  sha256 "d42482a3412be02b77e973cfabe88497c2a59ea202dc0dfafa9fe407c23e92f4"

  url "https://github.com/itscool/perch/releases/download/v#{version}/Perch-#{version}.dmg"
  name "Perch"
  desc "Run one desk across several computers: monitors, keyboard, mouse, clipboard"
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
