cask "toktok" do
  version "0.5.1"
  sha256 "890be62001c59a1cf1f9299fd40289149ba5d89f39d342dec8e5070facf66d7d"

  url "https://github.com/hanseolhui/toktok/releases/download/v#{version}/TokTok-#{version}.zip"
  name "TokTok"
  name "톡톡"
  desc "Trackpad TipTap gesture: rest one finger, tap left for back, right for forward"
  homepage "https://github.com/hanseolhui/toktok"

  depends_on macos: :ventura

  app "TokTok.app"

  uninstall quit: "io.github.hanseolhui.toktok"

  zap trash: [
    "~/Library/Logs/TokTok.log",
    "~/Library/Preferences/io.github.hanseolhui.toktok.plist",
  ]
end
