Spree::AppConfiguration.class_eval do
  preference :delivery_cut_off_hour, :integer, default: 12
  preference :delivery_time_options, :string, default: {early_morning: 'Between 6am-8am'}.to_json 
end
