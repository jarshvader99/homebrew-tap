cask "reezyn" do
  version "0.2.5"
  sha256 "2cff7bbd43eac36c876404c389bfe688fb84fe7e178f6217ff95c6eaa7833a40"

  url "https://reezyn.elastikmind.com/downloads/Reezyn-#{version}.dmg"
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
  depends_on macos: :ventura

  app "Reezyn.app"

  zap trash: [
    "~/.reezyn",
    "~/Library/Logs/Reezyn",
  ]
end
