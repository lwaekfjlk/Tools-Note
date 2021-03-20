### git addition

在 git 实践过程中踩过的坑

1. HEAD 移动时如果没有branch分支标记，一旦新commit的结点移动到了其他的branch， 该 commit 结点会消失，因为其中的逻辑是 branch 只能够向前追溯，一旦没有branch指针的commit结点是内存垃圾，没有意义
2. push 的时候实际上是沿着自己的 git 树从当前的origin/master 走到你提交的commit结点，所有push的过程实际上会提交所有路径经过的 commit
3. cherry-pick 可以直接使用  git log --all --decorate --oneline --graph  查看到的哈希值进行索引
4. .gitignore 文件夹能够在 git push 的时候忽略内部对应的文件
5. git branch 可查看所有的本地分支
6. git branch -a 可查看所有的本地和远程分支
7. git commit --amend -m "hello,world"  amend作用是不在 git 树上新生成一个结点，而是覆盖如今的commit结点
8. git rm -r --cache A.txt 能够将一个文件从当前的 git 分支中删除
9. git status 查看应该 git add 对应的文件
10. git diff ./A.txt 能够查看当前branch 与原先的区别
11. git clone -b A ... 能够选择性下载github repo中的A分支
12. tig 工具能够辅助使用 git
13. git ls-files 能够查看当前分支下所有的文件
14. git rebase --abort ... 能够放弃当前的rebase进程 (不是太理解)