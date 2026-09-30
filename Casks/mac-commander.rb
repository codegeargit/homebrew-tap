cask "mac-commander" do
  version "1.14.1"
  sha256 "aa0d4dfc399d508795247d1232bad6b1fa08df794cb8eddfd2e55c4b956f28ff"

  url "https://github.com/codegeargit/mac-commander-releases/releases/download/v#{version}/MacCommander-#{version}.dmg"
  name "Mac Commander"
  desc "Keyboard-driven dual-pane file manager"
  homepage "https://maccommander.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MacCommander.app"

  zap trash: [
    "~/Library/Caches/ai.codegear.MacCommander",
    "~/Library/HTTPStorages/ai.codegear.MacCommander",
    "~/Library/Preferences/ai.codegear.MacCommander.plist",
  ]
end
