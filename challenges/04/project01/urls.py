from django.urls import include, path
from rest_framework import routers
from django.contrib import admin
from . import views

router = routers.DefaultRouter()

urlpatterns = [
    path('admin/', admin.site.urls),
    path('maratona', views.maratona)
]
