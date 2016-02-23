json.array!(@admin_contact_infos) do |admin_contact_info|
  json.extract! admin_contact_info, :id, :embed_url, :email1, :email2, :phone1_code, :phone1_number, :phone2_code, :phone2_number, :name, :add_line1, :add_line2, :add_line3, :city, :state, :country, :mobile1, :mobile2, :facebook_url, :twitter_url
  json.url admin_contact_info_url(admin_contact_info, format: :json)
end
