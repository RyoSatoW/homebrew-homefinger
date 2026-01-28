# homebrew-homefinger

[HomeFinger](https://github.com/RyoSatoW/HomeFinger) の Homebrew Cask tap リポジトリ


## Installation

```bash
brew tap RyoSatoW/homefinger
brew install --cask homefinger
```


## Update

```bash
brew upgrade --cask homefinger
```


## Uninstall

```bash
brew uninstall --cask homefinger
brew untap RyoSatoW/homefinger
```


## Requirements

- macOS 13.0 (Ventura) 以上
- アクセシビリティ権限 (初回起動時に設定が必要)


## Note

### Gatekeeperの警告について

HomeFingerは署名されていないため、初回起動時に「壊れているため開けません」という警告が表示されます。
以下の手順で開いてください:

1. `/Applications/HomeFinger.app` を右クリック (またはControl+クリック)
2. メニューから「開く」を選択
3. 警告ダイアログで「開く」をクリック

一度許可すれば、次回からは通常どおり起動できます。

### アクセシビリティ権限

初回起動後、以下の設定でHomeFingerを許可してください:

**システム設定 > プライバシーとセキュリティ > アクセシビリティ**
