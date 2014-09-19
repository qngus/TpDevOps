from fabric.api import task

@task
def pull():
	code_dir = '/var/www/TpDevOps'
	root = '/var/www/'
	with cd(root):
	run(git clone https://github.com/qngus/TpDevOps.git)