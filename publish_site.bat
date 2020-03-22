@echo off
cd /d "%~dp0"
rmdir _site /s /q
call bundle exec jekyll build
git --git-dir=.git --work-tree=_site add --all
git --git-dir=.git --work-tree=_site commit -m "autogen: update site"
git --git-dir=.git --work-tree=_site push