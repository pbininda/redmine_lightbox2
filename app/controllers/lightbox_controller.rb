class LightboxController < ApplicationController
  unloadable

  before_filter :load_file

  def download_inline
    @id = params[:id]
    @attachment = Attachment.find(@id)
    if @attachment.filename.ends_with? ".pdf"
      send_file @attachment.diskfile, :filename => filename_for_content_disposition(@attachment.filename),
                                      :type => "application/pdf",
                                      :disposition => 'inline'
    elsif @attachment.filename.ends_with? ".swf"
      send_file @attachment.diskfile, :filename => filename_for_content_disposition(@attachment.filename),
                                      :type => "application/x-shockwave-flash",
                                      :disposition => 'inline'
    elsif @attachment.filename.ends_with? ".msg"
      @msg = Mapi::Msg.open(@attachment.diskfile)
      render :partial  => "lightbox/msg", :locals => { :msg => @msg, :id => @id }, :layout => false
    elsif @attachment.is_text?
      diskfile = File.open(@attachment.diskfile)
      @content = diskfile.read
      diskfile.close
      render :partial => 'lightbox/text', :locals => {:content => @content, :filename => @attachment.filename}, :layout => false
    else
      render_404
    end
    
  end

  def download_file_from_msg
    @id = params[:id]
    @attachment = Attachment.find(@id)
    if @attachment.filename.ends_with? ".msg"
      filename = params[:filename]
      mail = Mapi::Msg.open(@attachment.diskfile)
      att = mail.attachments.select { |a| a.filename.eql? filename }
      if att.any?
        send_data att.first.data.read, :filename => filename
      else
        render_404
      end
    else
      render_404
    end
  end

  def load_file
    
  end

end