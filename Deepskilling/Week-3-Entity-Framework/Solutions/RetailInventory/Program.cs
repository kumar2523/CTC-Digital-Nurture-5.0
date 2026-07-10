using Microsoft.EntityFrameworkCore;
using RetailInventory.Data;

Console.WriteLine("Retail Inventory System");

using var context = new AppDbContext();

// Filter and Sort
var filtered = await context.Products
    .Where(p => p.Price > 1000)
    .OrderByDescending(p => p.Price)
    .ToListAsync();

Console.WriteLine("Filtered Products:");

foreach (var product in filtered)
{
    Console.WriteLine($"{product.Name} - ₹{product.Price}");
}

// Project into DTO (Anonymous Object)
var productDTOs = await context.Products
    .Select(p => new
    {
        p.Name,
        p.Price
    })
    .ToListAsync();

Console.WriteLine("\nProduct DTOs:");

foreach (var item in productDTOs)
{
    Console.WriteLine($"{item.Name} - ₹{item.Price}");
}