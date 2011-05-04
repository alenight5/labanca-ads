Given /^the following advertisements:$/ do |advertisements|
  Advertisement.create!(advertisements.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) advertisement$/ do |pos|
  visit advertisements_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following advertisements:$/ do |expected_advertisements_table|
  expected_advertisements_table.diff!(tableish('table tr', 'td,th'))
end
