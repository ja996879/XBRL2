class SayreportController < ApplicationController
  
   def index
     @betweens = Between.all
     
     @companies = Company.all
   end
  def eeee
    @stockid = params[:stockid]
    @qdate = params[:qdate]
    doc=Nokogiri::XML(File.open("#{Rails.root}/public/#{@stockid}_#{@qdate}.xml"))
    @a=doc.xpath("//tw-tse-pt:TransportationEquipment").text 
   end
end
