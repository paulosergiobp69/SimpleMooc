video 10 de python: https://www.youtube.com/watch?v=K0pVZmw_pJU


##### procedimento inicial GIT
git init

git add .

git commit -m 'Proejto inicial'

git remote add origin https://github.com/paulosergiobp69/SimpleMooc.git

git push -u origin master

##### procedimento inicial GIT


Simplemooc
# executando a aplicação: python manage.py runserver


# cria banco de dados inicial projeto simplemooc
# o comando syncdb foi retirado do django o
(versao 1.6)
(.venv) C:\code\simplemooc>python manage.py syncdb
(versao 3.0)
(.venv) C:\code\simplemooc>python manage.py migrate
ou 
(.venv) C:\code\simplemooc>python manage.py migrate --run-syncdb

#crias usuario
python manage.py createsuperuser
# usuario criado: paulo.bernardo senha: 123456

#criar uma aplicacao padrao
(.venv) C:\code\simplemooc>python manage.py startapp core

mv core simplemooc  // movendo a pasta para o projeto principal
# configurar settings app
	INSTALLED_APPS = [  
	...,
    'simplemooc.core'
	
# facilidade do django estudar melhor
--->11. URL's (include e namespace)

# para criacao de tabelas courses houve problemas, para tanto foi rodado:
(.venv) C:\code\simplemooc>python manage.py  makemigrations

# e depois 
(.venv) C:\code\simplemooc>python manage.py migrate

# validacoes e querys django: (.venv) C:\code\simplemooc>python manage.py shell

>>> from simplemooc.courses.models import Course
>>> django = Course(name='Python com Django', slug='Django')
>>> django.save()
>>> django.id    --> consulta o registro inserido e/ou instanciado
1
# manual com comandos existentes: https://docs.djangoproject.com/en/3.0/ref/models/querysets/

# outros comandos
courses = Course.objects.all()
for course in courses:
    print(course.name)
	

# atualizando o manager: aula 15 Course manager
>>> from simplemooc.courses.models import Course
>>> Course.objects.search('python')
<QuerySet [<Course: Course object (1)>]>





