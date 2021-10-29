from django.shortcuts import render, HttpResponse

def base(request):
    return render(request, 'base.html')

def login(request):
    return render(request, 'login.html')

def home(request):
    return render(request, 'home.html')

def register(request):
    return render(request, 'register.html')

def search_book(request):
    return render(request, 'search_book.html')