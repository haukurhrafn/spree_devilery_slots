Deface::Override.new(:virtual_path => "spree/checkout/_delivery",
                     :name => "add_delivery_date_to_delivery",
                     :insert_bottom => "[data-hook='shipping_method_inner']",
                     :partial => "spree/checkout/delivery_date",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/shared/_order_details",
                     :name => "add_delivery_date_details_to_order",
                     :insert_before => "[data-hook='order_details']",
                     :partial => "spree/orders/order_delivery_date_details",
                     :disabled => false)
