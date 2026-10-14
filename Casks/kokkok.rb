cask "kokkok" do
  version "0.4.1"
  sha256 "437a21b198552e10301afb73628939e889899bcd78553258a3752aaca8e733fd"

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
