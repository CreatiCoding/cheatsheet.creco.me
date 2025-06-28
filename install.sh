#!/usr/bin/env bash

set -e

brew install glow

BASH_URL=https://creaticoding.github.io/cheatsheet.creco.me

wget -q -O $HOME/.cheatsheet.sh $BASH_URL/cheatsheet.sh

chmod +x $HOME/.cheatsheet.sh

# if .zshrc 이 있는데 cheatsheet.sh 문자열이 없으면
if [ -f ~/.zshrc ] && ! grep -q "cheatsheet.sh" ~/.zshrc; then
    echo "alias ch='. $HOME/.cheatsheet.sh'" | tee -a ~/.zshrc || ( echo -e "\n권한 오류가 발생했으므로 아래와 같이 실행해주세요.\nwget -q -O - $BASH_URL/install.sh | sudo bash" && exit 1 )
else
    echo "✅ 이미 .zshrc에 설치되어 있습니다."
fi

# if .bashrc 이 있는데 cheatsheet.sh 문자열이 없으면
if [ -f ~/.bashrc ] && ! grep -q "cheatsheet.sh" ~/.bashrc; then
    echo "alias ch='. $HOME/.cheatsheet.sh'" | tee -a ~/.bashrc || ( echo -e "\n권한 오류가 발생했으므로 아래와 같이 실행해주세요.\nwget -q -O - $BASH_URL/install.sh | sudo bash" && exit 1 )
else
    echo "✅ 이미 .bashrc에 설치되어 있습니다."
fi

# if .bash_profile 이 있는데 cheatsheet.sh 문자열이 없으면
if [ -f ~/.bash_profile ] && ! grep -q "cheatsheet.sh" ~/.bash_profile; then
    echo "alias ch='. $HOME/.cheatsheet.sh'" | tee -a ~/.bash_profile || ( echo -e "\n권한 오류가 발생했으므로 아래와 같이 실행해주세요.\nwget -q -O - $BASH_URL/install.sh | sudo bash" && exit 1 )
else
    echo "✅ 이미 .bash_profile에 설치되어 있습니다."
fi

# 현재 세션이 bash 일 때는
if [ "$SHELL" == "/bin/bash" ]; then
    source $HOME/.bashrc
    source $HOME/.bash_profile
fi

# 현재 세션이 zsh 일 때는
if [ "$SHELL" == "/bin/zsh" ]; then
    source $HOME/.zshrc
fi

echo "✅ ch 커맨드가 성공적으로 설치되었습니다."
