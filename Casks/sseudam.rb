cask "sseudam" do
  version "1.5.0"
  sha256 "2ee2b250d059d18233a7df4e1ddb3019ab8ba1318f6a5736446e1633e5d75a90"

  url "https://github.com/hanseolhui/sseudam/releases/download/v#{version}/Sseudam-mac.zip"
  name "쓰담"
  name "Sseudam"
  desc "Teacher voice notes: record, split by student, and draft school records"
  homepage "https://hanseolhui.github.io/sseudam/"

  depends_on macos: :monterey

  app "쓰담.app"

  uninstall quit: "kr.sseudam.desktop"
  # 학생 기록(~/Library/Application Support/쓰담)은 지우지 않음
end
