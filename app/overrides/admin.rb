Deface::Override.new(:virtual_path => "spree/admin/shared/sub_menu/_configuration",
                     :name => "add_delivery_resources_to_admin",
                     :insert_bottom => '[data-hook="admin_configurations_sidebar_menu"]',
                     :partial => "spree_delivery_slots/admin/configuration_sidebar_links")

Deface::Override.new(:virtual_path => "spree/admin/orders/_form",
                     :name => "add_delivery_info_to_order_details",
                     :insert_bottom => "[data-hook='admin_order_form_fields']",
                     :partial => "spree/admin/orders/delivery_info",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/shared/_order_tabs",
                     :name => "add_delivery_date_to_admin_order_information",
                     :insert_after => "#order_total",
                     :partial => "spree/admin/shared/admin_order_information_delivery_date",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/orders/index",
                     :name => "add_delivery_date_table_header",
                     :insert_top => "[data-hook='admin_orders_index_headers']",
                     :partial => "spree/admin/orders/delivery_date_header",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/orders/index",
                     :name => "add_delivery_date_table_row_cell",
                     :insert_top => "[data-hook='admin_orders_index_rows']",
                     :partial => "spree/admin/orders/delivery_date_cell",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/orders/index",
                     :name => "add_delivery_date_filter_to_orders_index",
                     :insert_after => ".date-range-filter",
                     :partial => "spree/admin/orders/delivery_date_filter",
                     :disabled => false)
