cask "lefu" do
  version "1.0.0"
  sha256 "ac80d53d7f9a7dea662ce367e014b74b39a4837098449b134a9b53a5388413a5"

  url "https://github.com/boxter007/lefu/releases/download/v#{version}/Lefu-v#{version}.zip",
      verified: "github.com/boxter007/lefu/"
  name "乐府"
  desc "Music archiver: per-song recording and tagging for Soda Music on macOS"
  homepage "https://github.com/boxter007/lefu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "乐府.app"

  zap trash: [
    "~/Library/Application Support/com.jingjing.lefu",
    "~/Library/Caches/com.jingjing.lefu",
    "~/Library/Preferences/com.jingjing.lefu.plist",
    "~/Library/Saved Application State/com.jingjing.lefu.savedState",
  ]
end
