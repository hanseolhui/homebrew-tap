cask "kokkok" do
  version "0.3.5"
  sha256 "f5581df32d585bcf5d35ce15076bbba252771f789848448ac7ac855d8ea42324"

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
