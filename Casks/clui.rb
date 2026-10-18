cask "clui" do
  version "0.1.4"
  sha256 "084500213fa5a539de578c030480d8e7842b1f4e63b3be45be7dbc2ba74dde79"

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
