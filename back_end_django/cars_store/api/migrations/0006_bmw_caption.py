# Generated by Django 4.1.3 on 2022-12-29 03:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0005_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='bmw',
            name='caption',
            field=models.TextField(default='some_value'),
        ),
    ]