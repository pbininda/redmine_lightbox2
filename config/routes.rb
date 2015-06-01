if Gem::Version.new("3.0") > Gem::Version.new(Rails.version) then
  #Redmine 1.x
  ActionController::Routing::Routes.draw do |map|
    map.connect 'attachments/download_inline/:id/:filename', :controller => 'attachments', :action => 'download_inline', :id => /\d+/, :filename => /.*/
  end

else
  #Redmine 2.x
  RedmineApp::Application.routes.draw do
    get 'attachments/download_inline/:id/:filename', :controller => 'attachments', :action => 'download_inline', :id => /\d+/, :filename => /.*/
    get 'lightbox/download_inline/:id', :controller => 'lightbox', :action => 'download_inline'
    get 'lightbox/download_file_from_msg/:id', :controller => 'lightbox', :action => 'download_file_from_msg'
  end
end
