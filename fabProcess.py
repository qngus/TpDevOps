from fabric.api import task

@task
def pull():
	code_dir = '/var/www/TpDevOps'
	with cd(code_dir):
	run(git clone https://github.com/qngus/TpDevOps.git)