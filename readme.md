## dict 介绍

dict 是使用 bash 脚本编写的一个命令行单词查询工具，使用百度翻译接口。

## dict 安装

下载 dict.sh 脚本:
`
curl -O https://raw.githubusercontent.com/whinc/dict/master/dict.sh
`

基于可执行权限：
`
chmod u+x ./dict.sh
`

创建链接（可选）:
`
cp ./dict.sh /usr/local/bin && ln -s /usr/local/bin/dict{.sh,}
`

## dict 使用

用法：`dict [word]...`
说明：如果只有一个单词，则翻译该单词。如果有超过一个单词，则视作句子进行翻译。

```
# 查询单词
$ dict hello
你好

# 翻译
$ dict hello world
你好世界
```

