class AdopotAnimalConfirm
  include PageObject
  include DataMagic

  expected_element_visible(:confirm_msg, 30)
  td(:confirm_msg, :class => 'content')

  def initialize_page
    has_expected_element_visible?
  end
  #
  # def confirm_check(msg)
  #    confirm_msg.should == data_for(msg)['msg']
  # end

end