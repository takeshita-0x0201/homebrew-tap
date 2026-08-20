cask "room" do
  version "0.1.0"
  sha256 "05aeed017eb2aac461821b0370f9debd7f61dda6e7f940330d21f80720e5ebed"

  url "https://github.com/takeshita-0x0201/room/releases/download/v#{version}/Room-#{version}.zip"
  name "Room"
  desc "Tiny macOS menu bar app for memory and storage"
  homepage "https://github.com/takeshita-0x0201/room"

  depends_on macos: ">= :sonoma"

  app "Room.app"

  caveats <<~EOS
    Room #{version} is not code-signed. On first launch, right-click Room.app
    in /Applications and choose "Open", or run:
      xattr -dr com.apple.quarantine /Applications/Room.app
  EOS
end
