cask "eye-saver" do
  version "0.1.0"
  sha256 "9d27cc2aa3e791079a12ef525d37818ff0264055532ab1c6c09f32b60e755cd9"

  url "https://github.com/thenjk57/eye-saver-downloads/releases/download/desktop-v0.1.0-beta.1/EyeSaverDesktop_macos.dmg",
      verified: "github.com/thenjk57/eye-saver-downloads/"
  name "Eye Saver"
  desc "Break timer to protect eyesight and encourage healthy screen habits"
  homepage "https://eyesaver.webdevnc.com/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Eye Saver Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.webdevnc.eyeSaverDesktop",
    "~/Library/Preferences/com.webdevnc.eyeSaverDesktop.plist",
    "~/Library/Saved Application State/com.webdevnc.eyeSaverDesktop.savedState",
  ]
end
