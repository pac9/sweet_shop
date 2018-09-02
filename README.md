# Sweet shop stock inventory system

Project ‑ Web Programming with Ruby

Utilising - Ruby, SQL, Sinatra, HTML, CSS, TDD

### Brief - Solo project

Over the next week you will build an app to consolidate and expand on everything you have learned:
Object oriented programming with Ruby
Test Driven Development
Web Programming (REST, MVC)
Interacting with a PostgreSQL database (CRUD)

### Rules

The project must be built using only:
HTML / CSS
Ruby
Sinatra
PostgreSQL and the PG gem

It must NOT use:
Any Object Relational Mapper (e.g. ActiveRecord)
JavaScript. At all. Don't even think about it.
Any pre‑built CSS libraries, such as Bootstrap.
Authentication. 
Assume that the user already has secure access to the app.
All of these will be covered later in the course. Do not make any attempt to use them this week, even if you've used them
before.

Make lots of little (but sensible!) git commits. The number of commits in your final submission is one of the criteria your
work will be judged on.

### Briefs

These briefs detail what is expected of you, including an MVP. Note that the MVP is the Minimum Viable Product. You are
strongly encouraged to go beyond these specifications, and some possible extensions are provided.

### Shop Inventory
Build an app which allows a shopkeeper to track their shop's inventory. This is not an app which the customer will see, it is an admin/management app for the shop workers.

### MVP

The inventory should track individual products, including a name, description, stock quantity, buying cost, and selling
price.

The inventory should track manufacturers, including a name and any other appropriate details.

The shop can sell anything you like, but you should be able to create, edit and delete manufacturers and products
separately.

This might mean that it makes more sense for a car shop to track makes and models of cars. Or a bookstore
might sell books by author, or by publisher, and not by manufacturer. You are free to name classes and tables as
appropriate to your project.

Show an inventory page, listing all the details for all the products in stock in a single view.

As well as showing stock quantity as a number, the app should visually highlight "low stock" and "out of stock" items
to the user.

