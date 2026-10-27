cask "ssokssok" do
  version "0.9.0"
  sha256 "114113eb2603b6f635e88ec56ffddf0c6f0c444c3053b651413d1326f57f5984"

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
