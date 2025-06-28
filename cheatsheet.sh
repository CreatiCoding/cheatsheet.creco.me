#!/usr/bin/env bash

command=$1

BASH_URL=https://creaticoding.github.io/cheatsheet.creco.me

# 커맨드가 없으면 welcome 설명 출력
if [ -z "$command" ]; then
    echo "🙌 환영합니다! cheatsheet cli tool 입니다."
    echo ""
    echo "예시: "
    echo "$ ch list"
    echo "$ ch [키워드]"
    echo ""
    exit 0
fi

# update 커맨드 처리
if [ "$command" == "update" ]; then
    wget -q -O - $BASH_URL/install.sh | bash
    exit 0
fi

# uninstall 커맨드 처리
if [ "$command" == "uninstall" ]; then
    wget -q -O - $BASH_URL/uninstall.sh | bash
    exit 0
fi

result=$(curl -XGET -L -s "$BASH_URL/keywords/$command")

# result 안에 Page not found 가 있으면
if [[ $result == *"Page not found"* ]]; then
    echo "🚧 커맨드를 찾을 수 없습니다."
    echo "\"ch list\" 명령어로 키워드 목록을 확인해주세요."
    exit 1
fi

printf '%s\n' "$result" | glow -
