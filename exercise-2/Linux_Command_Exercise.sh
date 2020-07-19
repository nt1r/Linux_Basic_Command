#!/bin/bash

# 1. 请在用户目录下创建一个名称为 cli-practice 的目录。
# cd ~
mkdir cli-practice

# 2. 请在 ~/cli-practice 目录下创建一个空白文件 readme.md。
cd cli-practice
touch readme.md

# 3. 请在 ~/cli-practice/readme.md 中添加一行文本：Hi there, this is a readme file.
echo "Hi there, this is a readme file." >> readme.md

# 4. 请在 ~/cli-practice/readme.md 中追加一行文本：This is the second line of the readme file.。
cat >> readme.md <<EOF
This is the second line of the readme file.
EOF

# 5. 请将 ~/cli-practice/readme.md 文件改名为 readme.txt
mv readme.md readme.txt

# 6. 请创建目录 ~/cli-practice/document
mkdir document

# 7. 请将 ~/cli-practice/readme.txt 文件移动到 ~/cli-practice/document 中，并改名为 introduction.txt。
mv readme.txt document/introduction.txt

# 8. 请将 ~/cli-practice/document 中的 introduction.txt 文件在 ~/cli-practice/document 目录复制一份，并命名为 readme.txt
cp document/introduction.txt document/readme.txt

# 9. 请使用 The quick brown fox jumps over a lazy dog 这行文本覆盖 ~/cli-practice/document/readme.txt 文件的内容。
cat > document/readme.txt <<EOF
The quick brown fox jumps over a lazy dog
EOF

# 10. 请将 ~/cli-practice/document 目录复制到 ~/cli-practice/docs，目录中的文件也要进行复制。
mkdir docs
cp -a document/. docs/

# 11. 删除 ~/cli-practice/document 目录及其中文件。
rm -r document/

# 12. 请创建 ~/cli-practice/parent/child/docs 目录。
mkdir -p parent/child/docs

# 13. 请将 ~/cli-practice/docs/introduction.txt 文件复制到~/cli-practice/parent/child/docs目录下
cp docs/introduction.txt parent/child/docs/