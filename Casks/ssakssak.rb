cask "ssakssak" do
  version "0.4.11"
  sha256 "d906e0b6be2da43f22ccbd578fd2e9c26b6a39236408956b78297edc04b39287"

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
