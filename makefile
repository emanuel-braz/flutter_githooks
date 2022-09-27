install-hooks:
	@git config core.hooksPath hooks

uninstall-hooks:
	@git config --unset core.hooksPath
	
test-hooks:
	@dart test hooks/test