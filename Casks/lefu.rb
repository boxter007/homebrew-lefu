cask "lefu" do
  version "1.0.1"
  sha256 "653087645bd9ef4164287a4e2f7c3e47d9626472eb8082732794ce52c5e0ac1c"

  url "https://github.com/boxter007/lefu/releases/download/v#{version}/Lefu-v#{version}.zip",
      verified: "github.com/boxter007/lefu/"
  name "乐府"
  desc "Music archiver: per-song recording and tagging for Soda Music on macOS"
  homepage "https://github.com/boxter007/lefu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "乐府.app"

  caveats <<~EOS
    乐府当前使用 ad-hoc 签名，首次启动会被 Gatekeeper 拦下。放行方式任选其一：
      · 在「访达 → 应用程序」中右键点乐府，选择「打开」并确认；
      · 或在终端执行：xattr -cr "/Applications/乐府.app"

    首次使用需安装 BlackHole 虚拟声卡，乐府内可一键安装。
  EOS

  zap trash: [
    "~/Library/Application Support/com.jingjing.lefu",
    "~/Library/Caches/com.jingjing.lefu",
    "~/Library/Preferences/com.jingjing.lefu.plist",
    "~/Library/Saved Application State/com.jingjing.lefu.savedState",
  ]
end
