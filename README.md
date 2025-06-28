# cheatsheet.creco.me

[![Hits](https://hits.sh/github.com/CreatiCoding/cheatsheet.creco.me.svg?view=today-total)](https://hits.sh/github.com/CreatiCoding/cheatsheet.creco.me/)

터미널 내에서 미리 지정해둔 문서를 불러올 수 있는 커맨드입니다. [glow](https://github.com/charmbracelet/glow) 를 통해 Terminal 에서 markdown View를 지원합니다.

This command allows you to load pre-specified documents directly within the terminal. It leverages [glow](https://github.com/charmbracelet/glow) to provide markdown viewing support right in your terminal.

## requirements

- homebrew
- wget

## Install
```bash
wget -q -O - https://creaticoding.github.io/cheatsheet.creco.me/install.sh | bash
```

<img width="717" alt="install-screenshot" src="https://github.com/user-attachments/assets/51f4dc80-b416-4904-a3e7-77afb646c99a" />

## Usage

`list` 와 `[keyword]` 커맨드를 통해 간편하게 사용할 수 있습니다.

You can conveniently use it with the `list` and `[keyword]` commands.

### list

`ch list` 를 사용하면 어떤 keyword 를 쓸 수 있는지 조회할 수 있습니다.

By using `ch list`, you can check which keywords are available.

```
ch list
```

<img width="752" alt="list-screenshot" src="https://github.com/user-attachments/assets/db2e98fc-68d3-4e29-9ff9-e5494693d19f" />

### [keyword]

`ch [keyword]` 를 이용해서 특정 키워드에 대한 준비된 내용을 조회할 수 있습니다. 예시로 `ch yarn` 을 보여드립니다.

You can use `ch [keyword]` to view the prepared content for a specific keyword. For example, `ch yarn`.

```
ch yarn
```
<img width="752" alt="ch-yarn-screenshot" src="https://github.com/user-attachments/assets/af72d082-a733-448b-95bc-8dd4a133f8ab" />


## Update
```bash
ch update
```

<img width="717" alt="update-screenshot" src="https://github.com/user-attachments/assets/b98a29b1-5c13-4d69-83a6-050736bfc43b" />


## Uninstall
```bash
ch uninstall
```

<img width="717" alt="uninstall-screenshot" src="https://github.com/user-attachments/assets/755ac3dd-7bdf-4bf1-a8c3-49dfa2b7ba7f" />


> 질문이 있다면 편하게 Issues 에 남겨주세요.
> 
> If you have any questions, feel free to leave them in the Issues.

