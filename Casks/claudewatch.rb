cask "claudewatch" do
  version "1.0.0"
  sha256 "73802855e637e6414934ce0ac240c5b720588d6470b643a8da7a8fe3901cb8f5"

  url "https://github.com/anshaneja5/claudewatch/releases/download/v#{version}/ClaudeWatch.zip"
  name "ClaudeWatch"
  desc "macOS menu bar app to track Claude Code CLI usage"
  homepage "https://github.com/anshaneja5/claudewatch"

  depends_on macos: ">= :sonoma"

  app "ClaudeWatchMac.app"

  zap trash: [
    "~/Library/Application Support/ClaudeWatch",
    "~/Library/Caches/com.claudewatch.mac",
    "~/Library/Preferences/com.claudewatch.mac.plist",
  ]
end
