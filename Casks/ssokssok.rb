cask "ssokssok" do
  version "0.7.1"
  sha256 "286a93852440af78e4944277c2df21ab8ac3691cc1eff2643a13a041a17b3525"

  url "https://github.com/hanseolhui/ssokssok/releases/download/v#{version}/SsokSsok-#{version}.zip"
  name "SsokSsok"
  name "쏙쏙"
  desc "Tuck menu bar icons into a cat box and use their menus without taking them out"
  homepage "https://github.com/hanseolhui/ssokssok"

  depends_on macos: :ventura

  app "SsokSsok.app"

  uninstall quit: "io.github.hanseolhui.ssokssok"

  zap trash: [
    "~/Library/Logs/SsokSsok.log",
    "~/Library/Preferences/io.github.hanseolhui.ssokssok.plist",
  ]
end
