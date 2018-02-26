class AdoptAnimalPass
  include PageObject
  include DataMagic

  expected_element_visible(:name, 30)
  text_field(:name, name: 'name_field')
  text_field(:address, :name => 'address_field')
  text_field(:zip_code, :name => 'postcode_field')
  text_field(:email, :name => 'email_field')
  button(:submit, :id => 'submit_adoption')

  def initialize_page
    has_expected_element_visible?
  end

  def enter_details
    populate_page_with data_for(:enter_data)
    submit_element.when_present.click
  end

end