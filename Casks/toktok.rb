cask "toktok" do
  version "0.6.4"
  sha256 "d8a1c91ab150dea0fd9db1837b2f668a87b7e286600ebe5cf0feff20a3713a5c"

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
