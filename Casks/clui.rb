cask "clui" do
  version "0.1.0"
  sha256 "70c01565ed97ebc0d3233d6cde909cca6fbe245b5424ae0c8d8a25c72f1122c8"

  url "https://github.com/angelkaragiozov/clui/releases/download/v#{version}/clui_#{version}_universal.dmg",
      verified: "github.com/angelkaragiozov/clui/"
  name "CLUI"
  desc "Retro-style command-line UI desktop app"
  homepage "https://github.com/angelkaragiozov/clui"

  app "clui.app"
end
