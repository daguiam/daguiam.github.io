install:
	gem install bundle
	bundle update


deploy:
	jekyll serve 


publish:
	git commit -a -m "Update"
	git push