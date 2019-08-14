# dotfiles

## Update Log

### 2019/08/14

- `iterms/myprofile.json`に`iTerm2`のプロファイルを追加
- `gcloud`の path を`.zshrc`に追加

### 2018/3/19

- `vim`と`zsh`を作成。`.vimrc`と`.zshrc`を細分化した

### 2018/2/2

- Neovim に変更して，`VimR`を導入した
- `VimR`で`vim-ariline`が動かない問題あったけど，`dein.toml`に書く順番をテーマに関するものを後の方にしたら，なんどか動いた
- あと`pyenv`の環境に合わせて，python の補完を出してくれるようにした．具体的には，`dein_lazy.toml`に数行足した．
- ノーマルモードで，`:AirlineTheme dark`みたいんかんじで Airline のテーマが変更できるはず
