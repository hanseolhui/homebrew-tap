cask "toktok" do
  version "0.8.0"
  sha256 "0ef3dd3804857d28d7b29be3c3cb151e4b023cf2799e1bb94bee32af316ff027"

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
