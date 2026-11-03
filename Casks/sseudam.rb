cask "sseudam" do
  version "1.10.30"
  sha256 "f421f4eee20a39c05aea11691d638079411e8045c0f829b460e05a14fe215782"

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
