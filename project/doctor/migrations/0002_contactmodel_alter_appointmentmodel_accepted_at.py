# Generated by Django 4.0.5 on 2022-09-04 14:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('doctor', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContactModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=40)),
                ('email', models.CharField(max_length=40)),
                ('subject', models.CharField(max_length=40)),
                ('message', models.CharField(max_length=200)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'contact_data',
            },
        ),
        migrations.AlterField(
            model_name='appointmentmodel',
            name='accepted_at',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]