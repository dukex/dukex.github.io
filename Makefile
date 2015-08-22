deploy:
	hexo clean
	rm -Rf .deploy_git
	hexo generate
	hexo deploy
