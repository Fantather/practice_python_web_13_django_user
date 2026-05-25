import random

from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView
from .models import Category, Product, Tag
from .forms import ProductForm


# def seed():
#     Product.objects.create(
#         name='Product 1', 
#         price=round(random.uniform(100, 1000), 2),
#         description='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 
#         image_path='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm6u57oDDwRz8eRCXsxbJOXYVSXdl0rtAcVg&s'
#     ),
#     Product.objects.create(
#         name='Product 2', 
#         price=round(random.uniform(100, 1000), 2),
#         image_path='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm6u57oDDwRz8eRCXsxbJOXYVSXdl0rtAcVg&s'
#     ),
#     Product.objects.create(
#         name='Product 3', 
#         price=round(random.uniform(100, 1000), 2),
#         description='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 
#     ),
#     Product.objects.create(
#         name='Product 4', 
#         price=round(random.uniform(100, 1000), 2),
#     ),
#     Product.objects.create(
#         name='Product 5', 
#         price=round(random.uniform(100, 1000), 2),
#     ),
#     Product.objects.create(
#         name='Product 6', 
#         price=round(random.uniform(100, 1000), 2),
#     ),
#     Product.objects.create(
#     name='Product 7', 
#     price=round(random.uniform(100, 1000), 2),
#     description='Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 
#     image_path='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm6u57oDDwRz8eRCXsxbJOXYVSXdl0rtAcVg&s'
# ),



# def category_seed():
#     Category(name='Smartphones').save()
#     Category(name='Laptops').save()
#     Category(name='Clothes').save()
#     Category(name='Food').save()
#     Category(name='Toys').save()

# category_seed()


class ProductListView(ListView):
    model = Product
    template_name ='product_list.html'
    context_object_name = 'products'
    
    def get_queryset(self):
        return Product.objects.select_related('category').prefetch_related('tags').order_by('name')
    
class ProductCreateView(CreateView):
    model=Product
    form_class=ProductForm
    template_name='product_create.html'
    success_url=reverse_lazy('product-list')
    