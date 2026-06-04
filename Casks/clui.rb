cask "clui" do
  version "0.1.2"
  sha256 "e8c5a278a2ad5e52ae7996e4db7304753a9f96b4a4808e738aea6ac0146bdf55"

  url "https://github.com/angelkaragiozov/clui/releases/download/v#{version}/clui_0.1.0_universal.dmg",
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
