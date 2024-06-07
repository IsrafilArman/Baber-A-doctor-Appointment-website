from django.urls import path, include
from .views import HomeTemplateView,HttpResponse
from doctor import views  




urlpatterns = [
    path('', HomeTemplateView.as_view(), name='home'),
    path('appointment', views.appointment, name='appointment'),
    path('login',views.login,name="login"),
    path('signup',views.signup,name="signup"),
    path('logout',views.logout,name="logout"),
    path('contact',views.contact,name="contact"),
    path("profile",views.profile,name="profile"),

]
