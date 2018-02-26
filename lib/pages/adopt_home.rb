class AdoptHome
  include PageObject
  include DataMagic

 page_url FigNewton.base_url

  expected_element_visible(:home, 30)
  link(:home,:id => 'home_link' )
  link(:adoption,:id => 'adoption_link' )
  link(:contact,:id => 'contact_link' )

  def initialize_page
    has_expected_element_visible?
  end


end