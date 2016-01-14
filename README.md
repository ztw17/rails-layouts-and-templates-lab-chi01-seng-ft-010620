# Rails Layouts And Templates Lab

## Objectives

1. Identify the default application layout.
2. Yield to view templates from a layout.
3. Specify a custom layout in ActionController on a controller level using the `layout` macro and on the action level using the `render :layout => "custom"` option.
4. Use :layout => false to shut off the layout and only render the view

## Outline

Default Layout

1. Create a StaticController
2. Create a default application layout and put an H1 Flatiron Widgets Store for the site's main welcome
3. Static#home should render that layout and the view for Static#home (static/home.html.erb) which has an H2 Welcome to Flatiron Widgets

Custom Layout

1. Create a StoreAdminController
2. Create a layouts/admin.html.erb layout and put an H1 Flatiron Widgets: Admin
3. StoreAdminController#home should render that layout and view for StoreAdminController#home (admin.home.html.erb) with an H2 Welcome Flatiron Admin. They will have to use the layout controller macro for this
4. Create StoreAdminController#orders that renders a custom view specific layout layouts/order_administration.html.erb with an H1 Flatiron Widgets: Open Orders and that view should have an H2 with a ol and 2-3 lis for fake open orders
5. Create StoreAdminController#invoice that renders without a layout and just renders a store_admin/invoice view that has an H1 Your Invoice and no header tags etc
