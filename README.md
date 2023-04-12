# 我的**Neovim**配置
- init.lua 人口文件
- lazy 管理插件

---
# 目录

## 依赖
### Arch Install
```bash
sudo pacman -S neovim python3 nodejs npm ripgrep fzf fd

pip3 install pynvim

npm i neovim -g
# C++ 编译与调试
sudo pacman -S gcc cmake make gdb clang xclip
# LSP python补全

# :checkhealth，会进行基本环境的检查

```

## 插件列表
setup.lua

## 按键表格
### 移动

| KEY  | Commit |
| :--: | :--:   |
| h    | 左移   |
| j    | 下移   |
| k    | 上移   |
| l    | 右移   |

翻译

使用`<LEADER>`+ KEY 
| KEY  | Translator |
| :--: | :--:       |
| fy   | 窗口翻译   |
| r    | 终端翻译   |
|      |            |

## fonts


```shell 
# CJK
yay -S noto-fonts-cjk 
# hck
yay -S ttf-hack

```

## Latex
Neovim Plugs:
-	[Vimtex](https://github.com/lervag/vimtex)

Default `<localleader>` is `,`

| LHS             | RHS                           | MODE~ |
| :-:             | :-:                           | :-:   |
| <localleader>li | `<plug>(vimtex-info)`           | `n`   |
| `<localleader>lt | `<plug>(vimtex-toc-open)`       | `n`   |
| `<localleader>lT | `<plug>(vimtex-toc-toggle)`     | `n`   |
| `<localleader>lv | `<plug>(vimtex-view)`           | `n`   |
| `<localleader>ll | `<plug>(vimtex-compile)`        | `n`   |
| `<localleader>lo | `<plug>(vimtex-compile-output)` | `n`   |
| `<localleader>lg | `<plug>(vimtex-status)`         | `n`   |
| `<localleader>lG | `<plug>(vimtex-status-all)`     | `n`   |
| `<localleader>lc | `<plug>(vimtex-clean)`          | `n`   |
| `<localleader>lC | `<plug>(vimtex-clean-full)`     | `n`   |
| dse             | `<plug>(vimtex-env-delete)`     | `n`   |
| dsc             | `<plug>(vimtex-cmd-delete)`     | `n`   |
| cse             | `<plug>(vimtex-env-change)`     | `n`   |
| csc             | `<plug>(vimtex-cmd-change)`     | `n`   |
| `<F7>           | `<plug>(vimtex-cmd-create)`     | `nxi` |
| ]]              | `<plug>(vimtex-delim-close)`    | `i`   |



## Markdown
Neovim Plugs:
-	[Markdown Preview for (Neo)vim](https://github.com/iamcco/markdown-preview.nvim)

默认使用 chromium 打开
`vim.cmd("let g:mkdp_browser = 'chromium'")` in [setup.lua](./lua/setup.lua)
|        <cmd>         |  commit  |
|         :-:          |   :-:    |
|   :MarkdownPreview   |   预览   |
| :MarkdownPreviewStop | 关闭预览 |

## vimwiki

`<Leader>ww` -- 打开默认的 wiki 目录文件
`<Leader>wt` -- 在新标签（Tab）中打开 wiki 目录文件
`<Leader>ws` -- 在多个 wiki 中选择并打开该 wiki 的目录文件
`<Leader>wd` -- 删除当前 wiki 文件
`<Leader>wr` -- 重命名当前 wiki 文件
`<Enter>` -- 创建或打开 wiki 链接
`<Shift-Enter>` -- 先上下分屏再打开 wiki 链接（若非链接则先创建）
`<Ctrl-Enter>` -- 先左右分屏再打开 wiki 链接（若非链接则先创建）
`<Backspace>` -- 返回之前浏览的 wiki 文件
`<Tab>` -- 跳到本文件中下一个 wiki 链接
`<Shift-Tab>` -- 跳到本文件中上一个 wiki 链接
