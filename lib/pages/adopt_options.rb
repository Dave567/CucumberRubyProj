class AdoptOptions
  include PageObject
  include DataMagic

  expected_element_visible(:adoption_date, 30)
  select_list(:adoption_date, :id => 'start_select')
  button(:lion_check, :id => 'check_btn_01')
  button(:turtle_check, :id => 'check_btn_02')

  def initialize_page
    has_expected_element_visible?
  end


end