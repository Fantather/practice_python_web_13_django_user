from django.contrib import admin
from django.urls import path, include

# admin2 - iM'KeNf*GW^_5}i

urlpatterns = [
    path('admin/', admin.site.urls),
    path('core/', include('core.urls'))
]
