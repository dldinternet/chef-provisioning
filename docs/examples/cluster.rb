require 'chef/provisioning'

machine 'mario' do
  tag 'itsa_me'
end

num_webservers = 1

machine_batch do
  1.upto(num_webservers) do |i|
    machine "luigi#{i}" do
#     recipe 'apache'
#     recipe 'mywebapp'
    end
  end
end
