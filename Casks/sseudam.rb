cask "sseudam" do
  version "1.10.9"
  sha256 "9c95754987d8ceac28dca390a8fcc98795b5ee2ec62784c3f697297f9098101b"

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
