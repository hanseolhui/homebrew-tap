cask "ssokssok" do
  version "0.7.0"
  sha256 "7affafa6c1a9c3a0701ebc0e24b375988fb92abfc1959479b26df451b8aa93cf"

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
