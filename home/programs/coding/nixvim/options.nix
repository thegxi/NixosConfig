{ lib, pkgs, ... }:
{
  config.opts = {
    # Faster completion,default 4000ms
    updatetime = 100;

    number = true;
    relativenumber = true;
    splitbelow = true;
    splitright = true;
    # 光标移动时，保持屏幕上下至少4行的空白
    scrolloff = 4;

    # 自动缩进下一行
    autoindent = true;
    # 使用系统剪贴板
    clipboard = "unnamedplus";
    # 将Tab键转换成空格(不用真实Tab字符)
    expandtab = true;
    # 一个缩进为2空格
    shiftwidth = 2;
    # 自动添加额外缩进
    smartindent = true;
    # Tab显示为2空格宽度
    tabstop = 2;

    # 搜索时忽略大小写
    ignorecase = true;
    # 输入搜索关键字时跳转显示搜索位置
    incsearch = true;
    # 若搜索中有大写字符，则区分大小写
    smartcase = true;
    # 用于命令行模式的补全行为
    wildmode = "list:longest";

    # 禁用swap文件
    swapfile = false;
    # 开启持久化撤销
    undofile = true; # Build-in persistent undo

    termguicolors = true;
  };
}

