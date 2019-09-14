###############
# エイリアス設定
###############

# viだろうとvimを開く
alias vi='vim'

# bashrcを開く
alias vbash='vim ~/.bashrc'
# bashrcを保存
alias sbash='vim ~/.bashrc'

# git関連
alias gsl='git stash list'
alias gsa='git stash apply'
alias gss='git stash save'
alias gpld='git pull origin develop'
alias gsd='git stash drop'
alias gr='git grep -n'

# lsよりコマンド打ちやすいllで、色付き隠しファイル込属性区別付きls
alias ll='ls -alFG'

# 直下ディレクトリ全てのファイル名検索
alias figre='find . -type f | grep'
# 直下ディレクトリ全てのファイル内の文章検索
alias stgre='find . -type f | xargs grep'
