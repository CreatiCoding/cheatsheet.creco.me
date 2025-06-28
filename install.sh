#!/usr/bin/env bash

set -e

# brew 가 설치되어 있지 않다면 오류
if ! command -v brew &> /dev/null; then
    echo "homebrew 가 설치되어 있지 않습니다. 설치 후 다시 실행해주세요."
    exit 1
fi

# wget 가 설치되어 있지 않다면 오류
if ! command -v wget &> /dev/null; then
    echo "wget 가 설치되어 있지 않습니다. 설치 후 다시 실행해주세요."
    exit 1
fi

brew install glow

wget -q -O /opt/homebrew/bin/ch https://creaticoding.github.io/cheatsheet.creco.me/cheatsheet.sh

chmod +x /opt/homebrew/bin/ch

echo "✅ ch 커맨드가 성공적으로 설치되었습니다."
