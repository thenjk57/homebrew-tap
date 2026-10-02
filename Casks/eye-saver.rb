cask "eye-saver" do
  version "0.1.0,1"
  sha256 "7be732f96317b162e0512b569ebdee132568eb529405274b19e8d60f190840a8"

  url "https://github.com/thenjk57/eye-saver-downloads/releases/download/desktop-v0.1.0-beta.1-notarized/EyeSaverDesktop_macos.dmg"
  name "Eye Saver"
  desc "Break timer to protect eyesight and encourage healthy screen habits"
  homepage "https://eyesaver.webdevnc.com/"

  depends_on macos: :monterey

  app "Eye Saver Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.webdevnc.eyeSaverDesktop",
    "~/Library/Preferences/com.webdevnc.eyeSaverDesktop.plist",
    "~/Library/Saved Application State/com.webdevnc.eyeSaverDesktop.savedState",
  ]
end
