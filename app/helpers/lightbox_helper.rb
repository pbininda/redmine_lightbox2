module LightboxHelper
	module PublicMethods
    
    def lookup_property(msg, prop)
      case prop.upcase
        when "SENDER"
          return msg.properties.sent_representing_name
        when "SUBJECT"
          return msg.properties.subject
        when "CREATION_TIME"
          return msg.properties.creation_time.to_s
      end
    end
    
  end
end

ActionView::Base.send :include, LightboxHelper::PublicMethods