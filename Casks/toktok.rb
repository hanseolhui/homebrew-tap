cask "toktok" do
  version "1.0.8"
  sha256 "e90796a32ecb7c2849b691dd544e2c5c3643f7f5bdfa4d9ef69f818cd36c6971"

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
