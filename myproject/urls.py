from django.conf.urls import url, include
from rest_framework import routers
from myproject.core import views

router = routers.DefaultRouter()
router.register(r'users', views.UserViewSet)
router.register(r'groups', views.GroupViewSet)

urlpatterns = [
    url(r'^', include(router.urls)),
    url(r'^api/', include('myproject.core.urls')),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework'))
]
