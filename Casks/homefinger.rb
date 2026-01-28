
cask "homefinger" do
  version "0.0.1"
  sha256 "b21576d998dec9411088d8985621a3e508f558a924fe7e6a261d19f01847942a"

  url "https://github.com/RyoSatoW/HomeFinger/releases/download/v#{version}/HomeFinger-v#{version}.zip"
  name "HomeFinger"
  desc "Dock app switcher using Command + number keys for macOS"
  homepage "https://github.com/RyoSatoW/HomeFinger"

  # macOS 13.0以上が必要
  depends_on macos: ">= :ventura"

  app "HomeFinger.app"

  # アンインストール後のクリーンアップ
  zap trash: [
    "~/Library/Preferences/sato-llc.HomeFinger.plist",
    "~/Library/Application Support/HomeFinger",
  ]

  caveats <<~EOS
    HomeFingerは署名されていないため、初回起動時にGatekeeperの警告が表示されます。
    以下のコマンドで解除してから起動してください:

      xattr -cr /Applications/HomeFinger.app

    また、アクセシビリティ権限が必要です。
    初回起動後、以下の設定で許可してください:
      システム設定 > プライバシーとセキュリティ > アクセシビリティ
  EOS
end
