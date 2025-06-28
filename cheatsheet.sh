#!/usr/bin/env bash

command=$1

# 커맨드가 없으면 welcome 설명 출력
if [ -z "$command" ]; then
    echo "환영합니다! cheatsheet cli tool 입니다."
    echo ""
    echo "예시: "
    echo "$ ch list"
    echo "$ ch [키워드]"
    echo ""
    return 0
fi

result=$(curl -XGET -L -s "https://creaticoding.github.io/cheatsheet.creco.me/$command")

# result 안에 Page not found 가 있으면
if [[ $result == *"Page not found"* ]]; then
    echo "커맨드를 찾을 수 없습니다."
    echo "\"ch list\" 명령어로 키워드 목록을 확인해주세요."
    return 0
fi

printf '%s\n' "$result"
