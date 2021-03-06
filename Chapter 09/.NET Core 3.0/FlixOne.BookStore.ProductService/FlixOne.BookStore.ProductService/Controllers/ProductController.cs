﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reactive.Linq;
using System.Threading.Tasks;
using FlixOne.BookStore.ProductService.Models;
using FlixOne.BookStore.ProductService.Persistence;
using Microsoft.AspNetCore.Mvc;

namespace FlixOne.BookStore.ProductService.Controllers
{
    [Route("api/[controller]")]
    public class ProductController : Controller
    {
        private readonly IProductRepository _productRepository;

        // public ProductController() => _productRepository = new ProductRepository(new ProductContext());

        public ProductController(IProductRepository productRepository) => _productRepository = productRepository;

        [HttpGet]
        public async Task<IEnumerable<Product>> Get() => await _productRepository.GetAll().SelectMany(p => p).ToArray();
    }
}
