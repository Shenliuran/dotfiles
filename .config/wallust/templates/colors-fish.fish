# Wallust 生成的高对比度 Fish Shell 配色
# 说明：
# - 普通文本使用亮白色 (color15)，与深色背景形成强烈对比
# - 错误、命令、参数等使用更鲜艳的亮色系 (color9~14)
# - 注释和灰色信息使用较暗的 color8 (亮黑/灰)
# - 如果你使用浅色背景，可以将 color15 改为 color0 (黑色)，并相应调整其他颜色

# 普通文本 (高对比度核心)
set --global fish_color_normal {{color15 | strip}}          # 亮白

# 取消命令 (Ctrl+C)
set --global fish_color_cancel {{color9 | strip}}           # 亮红

# 命令本身 (如 ls, cd)
set --global fish_color_command {{color10 | strip}}         # 亮绿

# 注释 (通常在提示行中)
set --global fish_color_comment {{color8 | strip}}          # 灰色

# 当前工作目录 (提示符中)
set --global fish_color_cwd {{color11 | strip}}             # 亮黄

set --global fish_color_cwd_root 

# 管道/重定向等结束符
set --global fish_color_end {{color11 | strip}}             # 亮黄

# 错误信息
set --global fish_color_error {{color9 | strip}}             # 亮红

# 转义字符 (如 \n)
set --global fish_color_escape {{color13 | strip}}           # 亮品红

# 灰色文本 (如自动建议的灰色)
set --global fish_color_gray {{color8 | strip}}              # 灰色

set --global fish_color_history_current 

# 主机名 (提示符中)
set --global fish_color_host {{color12 | strip}}             # 亮蓝

# 远程主机名
set --global fish_color_host_remote {{color10 | strip}}      # 亮绿

# 关键字 (如 if, for)
set --global fish_color_keyword {{color13 | strip}}          # 亮品红

# 再次确保普通文本 (防止重复定义)
set --global fish_color_normal {{color15 | strip}}          # 亮白

# 运算符 (如 &&, |)
set --global fish_color_operator {{color13 | strip}}         # 亮品红

# 命令行选项 (如 -l, --help)
set --global fish_color_option {{color10 | strip}}           # 亮绿

# 参数 (如文件路径)
set --global fish_color_param {{color14 | strip}}            # 亮青

# 引号内的字符串
set --global fish_color_quote {{color10 | strip}}            # 亮绿

# 重定向符号 (>, <)
set --global fish_color_redirection {{color13 | strip}}      # 亮品红

# 搜索匹配项 (高亮背景)
set --global fish_color_search_match --background={{color8 | strip}}  # 灰色背景

# 选中的文本
set --global fish_color_selection --background={{color8 | strip}}     # 灰色背景

# 命令执行状态 (非零退出码)
set --global fish_color_status {{color9 | strip}}            # 亮红

# 用户名 (提示符中)
set --global fish_color_user {{color14 | strip}}             # 亮青

set --global fish_color_valid_path 

# 自动补全菜单中的补全项
set --global fish_pager_color_completion {{color15 | strip}}         # 亮白

# 自动补全菜单中的描述文字
set --global fish_pager_color_description {{color8 | strip}}         # 灰色

# 自动补全菜单中匹配的前缀
set --global fish_pager_color_prefix {{color13 | strip}}             # 亮品红

# 进度条 (当补全列表较长时)
set --global fish_pager_color_progress {{color8 | strip}}            # 灰色

set --global fish_pager_color_selected_background 
set --global fish_pager_color_selected_completion 
set --global fish_pager_color_selected_description 
set --global fish_pager_color_selected_prefix
