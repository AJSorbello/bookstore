# Generated by Django 5.1.1 on 2024-09-16 18:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sales', '0003_alter_sale_date_created_alter_sale_id'),
    ]

    operations = [
        migrations.RenameField(
            model_name='sale',
            old_name='date_created',
            new_name='created_at',
        ),
        migrations.AlterField(
            model_name='sale',
            name='price',
            field=models.DecimalField(decimal_places=2, max_digits=10),
        ),
        migrations.AlterField(
            model_name='sale',
            name='quantity',
            field=models.IntegerField(),
        ),
    ]
