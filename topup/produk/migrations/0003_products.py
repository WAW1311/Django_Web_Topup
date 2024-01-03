# Generated by Django 5.0 on 2024-01-02 18:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('produk', '0002_users'),
    ]

    operations = [
        migrations.CreateModel(
            name='products',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product_id', models.IntegerField()),
                ('category', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('type', models.CharField(max_length=255)),
                ('status', models.CharField(max_length=255)),
                ('note', models.CharField(max_length=255)),
                ('price', models.IntegerField()),
            ],
        ),
    ]
