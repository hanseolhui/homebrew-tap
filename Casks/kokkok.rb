cask "kokkok" do
  version "0.4.7"
  sha256 "04101d56ae9c5cf46de5ade4f156269191ebbb68d94c0feb5c0ba6b993b07558"

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
