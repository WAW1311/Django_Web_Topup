from django.db import models

class users(models.Model):
    name = models.CharField(max_length=255)
    username = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    saldo = models.IntegerField()
    
    def __str__(self):
        return self.name

class produk(models.Model):
    name = models.CharField(max_length=255)
    src = models.CharField(max_length=255)
    href = models.CharField(max_length=255)
    
    def __str__(self):
        return self.name

class cart_user(models.Model):
    order_id = models.CharField(max_length=255)
    product_id =models.CharField(max_length=255)
    category = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    price = models.IntegerField()
    quantity = models.IntegerField()
    user_id = models.CharField(max_length=255)
    server_id = models.CharField(max_length=255)
    status = models.CharField(max_length=255)
    
    def __str__(self):
        return self.product_id

class products(models.Model):
    category = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    type = models.CharField(max_length=255)
    status = models.CharField(max_length=255)
    note = models.CharField(max_length=255)
    price = models.IntegerField()
    
    def __str__(self):
        return self.category