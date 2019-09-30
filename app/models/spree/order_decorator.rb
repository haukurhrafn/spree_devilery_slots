Spree::Order.class_eval do
  belongs_to :delivery_slot

  require 'date'
  require 'spree/order/checkout'
  
  self.whitelisted_ransackable_associations = %w[shipments user promotions bill_address ship_address line_items store delivery_slot]
  self.whitelisted_ransackable_attributes =  %w[completed_at created_at email number state payment_state shipment_state total considered_risky channel delivery_date start_hour]
  
  
        
  def valid_delivery_instructions?
    if self.delivery_instructions.length > 500
      self.errors[:delivery_instructions] << 'cannot be longer than 500 charachters'
      return false
    end
    true
  end

  def valid_delivery_date?
    self.errors[:delivery_date] << 'verða að vera valinn' unless self.delivery_date

    self.errors[:delivery_date].empty? ? true : false
  end

  def valid_delivery_slot?
    self.errors[:delivery_slot] << 'cannot be blank' unless self.delivery_slot

    self.errors[:delivery_slot].empty? ? true : false
  end
end

Spree::PermittedAttributes.checkout_attributes << :delivery_date
Spree::PermittedAttributes.checkout_attributes << :delivery_slot_id
Spree::PermittedAttributes.checkout_attributes << :delivery_instructions

#Spree::Order.state_machine.before_transition :to => :payment, :do => :valid_delivery_instructions?
Spree::Order.state_machine.before_transition :to => :payment, :do => :valid_delivery_date?
Spree::Order.state_machine.before_transition :to => :payment, :do => :valid_delivery_slot?
