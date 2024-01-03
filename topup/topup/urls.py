from django.urls import path,include

from produk import urls,controller



urlpatterns = [
    path('',controller.index,name='index'),
    path('mobile-legends-a/',controller.ml),
    path('mobile-legends-b/',controller.mlb),
    path('freefire/',controller.freefire),
    path('pubg-mobile/',controller.pubgm),
    path('genshin-impact/',controller.genshin),
    path('clash-of-clans/',controller.coc),
    path('valorant/',controller.valorant),
    path('call-of-duty/',controller.cod),
    path('honkai-impact-3/',controller.hoi),
    path('arena-of-valor/',controller.aov),
    path('tower-of-fantasy/',controller.tof),
    path('8-ball-pool/',controller.ballpool),
    path('order/',include(urls)),
    path('login/',controller.login,name='login'),
    path('register/',controller.register),
    path('logout/',controller.logout),
    path('cek-transaksi/',controller.cek_transaksi),
]
