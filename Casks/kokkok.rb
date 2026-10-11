cask "kokkok" do
  version "0.4.0"
  sha256 "c97478b5773692a4634190cd768ecfe1987668ea90a30c45ccf8b5bde6ffbee5"

  url "https://github.com/hanseolhui/kokkok/releases/download/v#{version}/KokKok-#{version}.zip"
  name "KokKok"
  name "콕콕"
  desc "Mouse button and wheel combos, smooth scrolling and pointer speed for Mac"
  homepage "https://github.com/hanseolhui/kokkok"

  depends_on macos: :ventura

  app "KokKok.app"

  uninstall quit: "io.github.hanseolhui.kokkok"

  zap trash: [
    "~/Library/Logs/KokKok.log",
    "~/Library/Preferences/io.github.hanseolhui.kokkok.plist",
  ]
end
