from django.urls import path

from . import controller


urlpatterns = [
    path('',controller.order),
    path('invoice/',controller.invoice),
]