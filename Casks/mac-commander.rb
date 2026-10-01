cask "mac-commander" do
  version "1.15.1"
  sha256 "7c6b28f5035b9a5a2839697798db4afcc4095a8e6348986c64abe25a6d05210d"

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
