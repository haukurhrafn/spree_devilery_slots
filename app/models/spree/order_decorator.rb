Spree::Order.class_eval do
  belongs_to :delivery_slot

  require 'date'
  require 'spree/order/checkout'

  def valid_delivery_instructions?
    if self.delivery_instructions.length > 500
      self.errors[:delivery_instructions] << 'cannot be longer than 500 charachters'
      return false
    end
    true
  end

  def valid_delivery_date?
    self.errors[:delivery_date] << 'verður að vera valinn' unless self.delivery_date

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
