cask "mac-commander" do
  version "1.15.0"
  sha256 "e354e36aa812c6c90ebe11b39e93732d4f06dbee8e4c45cceb9aaccd17142b77"

  url "https://github.com/codegeargit/mac-commander-releases/releases/download/v#{version}/MacCommander-#{version}.dmg"
  name "Mac Commander"
  desc "Read Markdown in a project folder next to the terminal"
  homepage "https://maccommander.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacCommander.app"
  binary "#{appdir}/MacCommander.app/Contents/Resources/mcom"

  zap trash: [
    "~/Library/Caches/ai.codegear.MacCommander",
    "~/Library/HTTPStorages/ai.codegear.MacCommander",
    "~/Library/Preferences/ai.codegear.MacCommander.plist",
  ]
end
