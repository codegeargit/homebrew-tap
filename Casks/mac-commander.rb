cask "mac-commander" do
  version "1.15.2"
  sha256 "ddc74d06e37d135420003ce438e03940187393998128561f4b72346f5575305c"

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
