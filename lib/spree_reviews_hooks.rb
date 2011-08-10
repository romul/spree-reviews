# Place this in your local lib/site_hooks.rb file to include the partial
# on the products/show page.
#
# Deface::Override.new(
#   :virtual_path => "products/show",
#   :name => "reviews_after_product_properties",
#   :insert_after => "[data-hook='product_properties'], #product-properties[data-hook]",
#   :partial => "shared/reviews",
#   :disabled => false)

Deface::Override.new(
  :virtual_path => "admin/shared/_product_sub_menu",
  :name => "reviews_admin_product_sub_tabs",
  :insert_bottom => "[data-hook='admin_product_sub_tabs'], #admin_product_sub_tabs[data-hook]",
  :text => "<%= tab(:reviews, :label => 'review_management') %>",
  :disabled => false)

Deface::Override.new(
  :virtual_path => "admin/configurations/index",
  :name => "reviews_admin_configurations_menu",
  :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
  :text => "<%= configurations_menu_item(t('spree_reviews.settings'), admin_review_settings_path, t('spree_reviews.manage_settings')) %>",
  :disabled => false)
