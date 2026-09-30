cask "ssakssak" do
  version "0.5.1"
  sha256 "4de17e1ecc586d89da2f7a6e78dfeee9bd71d02f84c9b4095518985fae9725a1"

  url "https://github.com/hanseolhui/ssakssak/releases/download/v#{version}/SsakSsak-#{version}.zip"
  name "SsakSsak"
  name "싹싹"
  desc "Mac cleaner that explains why each item is safe to remove"
  homepage "https://apps.seoriarts.com/ssakssak"

  depends_on macos: :ventura

  app "SsakSsak.app"

  uninstall quit: "io.github.hanseolhui.ssakssak"

  zap trash: [
    "~/Library/Application Support/SsakSsak",
    "~/Library/Logs/SsakSsak.log",
    "~/Library/Preferences/io.github.hanseolhui.ssakssak.plist",
  ]
end
