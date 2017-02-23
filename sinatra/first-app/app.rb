require 'sinatra'

get '/' do
  @tab_title = 'Home'
  @section_name = 'Welcome to the Home'
  @section_content = 'Welcome to my awesome new website!'

  erb :home
end

get '/about_us' do
  @tab_title = 'About Us'
  @section_name = 'About Us'
  @section_content = 'We are a group of makers trying to learn how to code!'

  erb :about_us
end

get '/contact' do
  @tab_title = 'Contact'
  @section_name = 'Leave us a message'
  @section_content = 'If you want to contact us, leave your message!'

  erb :contact
end
