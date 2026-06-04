cask "clui" do
  version "0.1.1"
  sha256 "f012a77b99d0ea9efca5a059374d24961870e801cd3e7a9bc5db0bf8fba88ddb"

  url "https://github.com/angelkaragiozov/clui/releases/download/v#{version}/clui_0.1.0_universal.dmg",
      verified: "github.com/angelkaragiozov/clui/"
  name "CLUI"
  desc "Retro-style command-line UI desktop app"
  homepage "https://github.com/angelkaragiozov/clui"

  app "clui.app"

  postinstall do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/clui.app"],
                   sudo: false
  end
end
