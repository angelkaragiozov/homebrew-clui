cask "clui" do
  version "0.1.3"
  sha256 "8fbfd574edb09a46c99d4b1db1876b2027426d2d5f6c9c159e22656e9504fe4c"

  url "https://github.com/angelkaragiozov/clui/releases/download/v#{version}/clui_#{version}_universal.dmg",
      verified: "github.com/angelkaragiozov/clui/"
  name "CLUI"
  desc "Retro-style command-line UI desktop app"
  homepage "https://github.com/angelkaragiozov/clui"

  app "clui.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/clui.app"],
                   sudo: false
  end
end
