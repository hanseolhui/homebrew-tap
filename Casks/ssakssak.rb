cask "ssakssak" do
  version "0.4.10"
  sha256 "da326615667126cabeb0e8b6c7c1ab117b6d154df59e9abb26f2ab6b076ea3d0"

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
