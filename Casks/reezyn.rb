cask "reezyn" do
  version "0.2.4"
  sha256 "a0d4b76f297c7aa150e3bc858b8c8489d03e1dc7c760957d5246c519d23a963d"

  url "https://reezyn.elastikmind.com/downloads/Reezyn-#{version}.dmg",
      verified: "reezyn.elastikmind.com/downloads/"
  name "Reezyn"
  desc "Local narrator for the reasoning behind your coding agent's tool calls"
  homepage "https://reezyn.elastikmind.com/"

  livecheck do
    url "https://reezyn.elastikmind.com/updates/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Reezyn.app"

  zap trash: [
    "~/.reezyn",
    "~/Library/Logs/Reezyn",
  ]
end
