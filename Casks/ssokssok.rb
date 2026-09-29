cask "ssokssok" do
  version "0.2.0"
  sha256 "94b592046b46ea470600c6c104c3d8297f66e3d6210087c51af5d6fdc46cfc0e"

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
