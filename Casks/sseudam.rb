cask "sseudam" do
  version "1.10.22"
  sha256 "2bf8cc7f3857ddbad504b4fc5000cb81d7b93454735c58b6cd267107bcf3f4d5"

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
