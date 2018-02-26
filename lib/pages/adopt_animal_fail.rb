class AdoptAnimalFail
  include PageObject
  include DataMagic

 expected_element_visible(:error_msg, 30)
  td(:error_msg, :class => 'content')

  def initialize_page
    has_expected_element_visible?
  end

  # def unavailable_check(msg)
  #   error_msg.should == data_for(msg)['msg']
  # end

end