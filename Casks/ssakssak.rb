cask "ssakssak" do
  version "0.4.2"
  sha256 "b09cfc754d4a5da72540047c241ec191c7bba71144bb9324145d3c6f336838f5"

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
