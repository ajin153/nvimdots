" 加载配置

for f in split(glob('/usr/share/nvim/ajin_config/*.vim'), '\n')
	exec 'source' f
endfor
