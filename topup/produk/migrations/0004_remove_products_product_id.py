# Generated by Django 5.0 on 2024-01-02 19:20

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('produk', '0003_products'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='products',
            name='product_id',
        ),
    ]