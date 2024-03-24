#!/Users/crewstaff/PycharmProjects/vdi_task/pythonProject/.env bash
# exit on error
set -o errexit

pip install requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
python manage.py superuser
python manage.py makemigrations