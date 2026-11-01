cask "kokkok" do
  version "0.4.8"
  sha256 "da610d815a8c59b94629960cd872b9ce7593da0738977a04b74ddad4a7a18951"

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
