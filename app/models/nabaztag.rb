require 'nokogiri'
require 'open-uri'

class Nabaztag < ActiveRecord::Base

  def listen_radio(radio)

    url="http://api.nabaztag.com/vl/FR/api_stream.jsp?sn=#{serial_number}&token=#{token}&"

    actions=[
      {:urlList => radio.url}
    ]

    url=url + actions.map {|x| x.to_query}.join("&")
    doc = Nokogiri::XML(open(url))

    puts url
    puts doc

  end

  def sleep! 
    send_action(13)
  end

  def wakeup! 
    send_action(14)
  end


  private

    def send_action(id)

      url="http://api.nabaztag.com/vl/FR/api.jsp?sn=#{serial_number}&token=#{token}&"

      actions=[
        {:action => id}
      ]

      url=url + actions.map {|x| x.to_query}.join("&")
      doc = Nokogiri::XML(open(url))

      puts url
      puts doc

    end

end
