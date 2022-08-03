" 加载配置

for f in split(glob('~/AppData/Local/nvim/ajin_config/*.vim'), '\n')
	exec 'source' f
endfor