cask "ssakssak" do
  version "0.4.6"
  sha256 "7e0519507e89dc1137babc0c4ca7933cdfffbdcd24c3c1328b344867fbfc3234"

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
