cask "toktok" do
  version "0.7.0"
  sha256 "63de9a84db592c6e37f3a425e82ad9cbfec76afbef087fcbe3be7b2df89d11c3"

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
