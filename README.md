# Rails Layouts And Templates Lab

## Objectives

1. Identify the default application layout
2. Yield to view templates from a layout
3. Specify a custom layout in ActionController on a controller level using the `layout` macro and on the action level using the `render :layout => "custom"` option
4. Use :layout => false to shut off the layout and only render the view

## Outline

### The Default Layout

1. Generate a new controller called `StaticController`, by going onto the command line and typing `rails generate controller Static`
2. Create a new action in `StaticController` called `home`
3. Create a template file for the `home` action at app/views/static/home.html.erb, and insert an H2 containing the text **Welcome to Flatiron Widgets**
3. Create a default application layout at app/views/layouts/application.html.erb and add an H1 to it containing the text **Flatiron Widgets Store**, this is for the main site's welcome
4. Remember to add the `yield` expression to tell it where the action template should be rendered

### Custom Layouts for a Controller

1. Create a new controller called `StoreAdminController`. You can easily generate this controller by typing `rails generate controller StoreAdmin`
2. Create a new layout file at layouts/admin.html.erb and add an H1 to it containing the text **Flatiron Widgets: Admin**
3. Create a new action in `StoreAdminController` called `home`
4. Now you need to create a template for the `home` action at app/views/store_admin/home.html.erb, and in here insert an H2 containing the text **Welcome Flatiron Admin**
5. At this point the store_admin#home action will be using the default application layout. Use the `layout` controller macro in the `StoreAdminController` to make it use the layout you created at layouts/admin.html.erb

### Custom Layouts for an Action

1. Create a new action in `StoreAdminController` called `orders`
2. Create a template for this action at app/views/store_admin/home.html.erb, and insert an H2 containing the text **Welcome to Flatiron Open Orders**. Also add an ordered list `ol` with some fake order list items `li`
3. Now you should create a new layout at layouts/order_administration.html.erb, and add an H2 containing the text **H1 Flatiron Widgets: Open Orders**
4. At this point the store_admin#orders action will use the admin layout you defined earlier, but we need it to use the layout at layouts/order_administration.html.erb. The trick is, we want only the store_admin#orders action to use the order_administration layout, and keep the admin layout as the default for the other actions in `StoreAdminController`. Specify the order_adminstration layout for the orders action by using `render`.

### Ignore Layouts for an Action

1. Create a new action in `StoreAdminController` called `invoice`
2. Create a template for this action at app/views/store_admin/invoice.html.erb, and insert an H1 containing the text **Your Invoice**
3. At this point this action will use the default layout for the controller, which is admin. We need this action to not use any layout at all. Use `render` and specify that it should not use a layout.
