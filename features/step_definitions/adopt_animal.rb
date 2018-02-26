

Given(/^I am on the home page of Zoo site$/) do
 visit(AdoptHome).adoption
end

When(/^I goto Adoption page and check for turtle availability$/) do
 on(AdoptOptions).turtle_check
end

When(/^I goto Adoption page and check for lion availability$/) do
  on(AdoptOptions).lion_check
end

And(/^I adopt an animal$/) do
 on(AdoptAnimalPass).enter_details
end

Then(/^I should see ([^"]*)$/) do |arg|
 # on(AdopotAnimalConfirm).confirm_check(arg)
  on(AdopotAnimalConfirm) do |obj|
    obj.confirm_msg.should == obj.data_for(arg)['msg']
  end
end


