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

Tree 文件结构
```bash

.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── cmp
│   │   ├── cmp.lua
│   │   ├── cmp-tabnine.lua
│   │   └── conf.lua
│   ├── core
│   │   ├── alpha.lua
│   │   ├── autopairs.lua
│   │   ├── autosave.lua
│   │   ├── blankline.lua
│   │   ├── comment.lua
│   │   ├── conf.lua
│   │   ├── gitsigns.lua
│   │   ├── leap.lua
│   │   ├── lualine.lua
│   │   ├── neo-tree.lua
│   │   ├── nvim-colorizer.lua
│   │   ├── nvim-notify.lua
│   │   ├── other.lua
│   │   ├── telescope.lua
│   │   ├── theme.lua
│   │   ├── todo-comments.lua
│   │   ├── translator.lua
│   │   ├── treesitter.lua
│   │   └── which-key.lua
│   ├── dap
│   │   ├── cmake-tools.lua
│   │   ├── conf.lua
│   │   ├── dap-cpp.lua
│   │   ├── dap.lua
│   │   ├── dap-python.lua
│   │   ├── dap-ui.lua
│   │   ├── dap-virtual-text.lua
│   │   ├── dep-util.lua
│   │   ├── gdb.lua
│   │   ├── snippets.lua
│   │   └── sniprun.lua
│   ├── lsp
│   │   ├── format.lua
│   │   ├── lsp.lua
│   │   ├── lspsage.lua
│   │   └── ui.lua
│   ├── setup.lua
│   └── user
│       ├── keymaps.lua
│       └── options.lua
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


