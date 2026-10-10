cask "ssokssok" do
  version "0.7.10"
  sha256 "2e1c8fc6cdd66e96dd8eabee0c1bacbcf03088d30bf580845bc571d1f36d3587"

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
