from django.shortcuts import render,redirect
from .models import produk,cart_user,users,products
import uuid

def get_product():
    product = products.objects.all()
    return product

def rupiah_format(angka, with_prefix=False, desimal=2):
    rupiah = "{:,.{desimal}f}".format(angka, desimal=desimal).replace(",", ".")
    if with_prefix:
        return f"Rp.{rupiah}"
    return rupiah

def untung(persen,harga):
    untung = harga * persen
    hasil = int(harga + untung)
    return hasil

def index(request):
    product = produk.objects.all()
    if 'username' in request.session:
        username = request.session.get('username')
        user = users.objects.filter(username=username).first()
        context = {'login' : user,'product': product}
        return render(request,'index.html',context)
    else:
        context = {'regist':True,'product':product}
        return render(request,'index.html',context)

def ml(request):
    product = get_product()
    context = {'product':product}
    return render(request,'mobilelegends.html',context)
    
def mlb(request):
    product = get_product()
    context = {'product':product}
    return render(request,'mobilelegendsb.html',context)
    
def freefire(request):
    product = get_product()
    context = {'product':product}
    return render(request,'freefire.html',context)
    
def pubgm(request):
    product = get_product()
    context = {'product':product}
    return render(request,'pubgm.html',context)
    
def genshin(request):
    product = get_product()
    context = {'product':product}
    return render(request,'genshin.html',context)

def coc(request):
    product = get_product()
    context = {'product':product}
    return render(request,'coc.html',context)

def valorant(request):
    product = get_product()
    context = {'product':product}
    return render(request,'valorant.html',context)
    
def cod(request):
    product = get_product()
    context = {'product':product}
    return render(request,'cod.html',context)
    
def hoi(request):
    product = get_product()
    context = {'product':product}
    return render(request,'hoi3.html',context)
    
def aov(request):
    product = get_product()
    context = {'product':product}
    return render(request,'aov.html',context)
    
def tof(request):
    product = get_product()
    context = {'product':product}
    return render(request,'tof.html',context)
    
def ballpool(request):
    product = get_product()
    context = {'product':product}
    return render(request,'8ballpool.html',context)

def login(request):
    if 'username' in request.session:
        return redirect('index')
    else:
        if request.method == 'POST':
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = users.objects.filter(username=username, password=password).first()
            if user:
                request.session['username'] = username
                return redirect('index')
        else:
            return render(request,'login.html')
    

def register(request):
    if 'username' in request.session:
        return redirect('index')
    else:
        if request.method == 'POST':
            name = request.POST.get('name')
            username = request.POST.get('username')
            password = request.POST.get('password')
            user = users(name=name, username=username, password=password,saldo=1000000)
            user.save()
            request.session['username'] = username
            return redirect('index')
        else:
            return render(request,'register.html')
    
def logout(request):
    del request.session['username']
    if 'order_id' in request.session:
        del request.session['order_id']
    return redirect('index')
    

def order(request):
    if 'username' not in request.session:
        return redirect('login')
    else:
        username = request.session.get('username')
        new_uuid = uuid.uuid4()
        order_id = str(new_uuid)[:8]
        select_id = int(request.POST.get('selectedProduct'))
        user_id = request.POST.get('userid')
        server = request.POST.get('server')
        Users = users.objects.filter(username=username).first()
        products = get_product()
        for product in products:
            if product.id == select_id:
                user = cart_user(order_id=order_id,product_id=product.id,category=product.category,name=product.name,price=product.price,quantity=1,user_id=user_id,server_id=server,status="pending")
                user.save()
                request.session['order_id'] = order_id
                cart = cart_user.objects.filter(order_id=order_id).first()
                if Users.saldo <= cart.price:
                    context = {'alert': user}
                    return render(request,'checkout.html',context)
                else:
                    context = {'product': cart}
                    return render(request,'checkout.html',context)

def invoice(request):
    if 'username' not in request.session:
        return redirect('login')
    else:
        if 'order_id' not in request.session:
            return redirect('index')
        else:
            order_id = request.session.get('order_id')
            username = request.session.get('username')
            produk = cart_user.objects.filter(order_id=order_id).first()
            user = users.objects.filter(username=username).first()
            price = user.saldo - produk.price
            user.saldo = price
            produk.status = "success"
            produk.save()
            user.save()
            context = {'product': produk}
            return render(request,'invoice.html',context)

def cek_transaksi(request):
    if 'username' not in request.session:
        return redirect('login')
    else:
        if request.method == 'POST':
            order_id = request.POST.get('order_id')
            cart = cart_user.objects.filter(order_id=order_id).first()
            context = {'cart':cart}
            return render(request, 'cek_transaksi.html',context)
        else:
            return render(request, 'cek_transaksi.html')
