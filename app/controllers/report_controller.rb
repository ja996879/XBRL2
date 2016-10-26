class ReportController < ApplicationController
  layout "index", :only => :index
   def index
     @betweens = Between.all
     @xbrltags = Xbrltag.all
     @companies = Company.all
   end


   def reports
        @c=[]
        
        @data=[] #json
        i=0
	@stockid = params[:stockid]
	@qdate = params[:qdate]
	@mean = params[:mean]
      if (@stcokid !=nil || @qdate !=nil )
                 #x
        @qdate.each do |q|
          @c << q
        end

       @stockid.each do |s|
         
         @data<<{"name": s , "data": []}
          @qdate.each do |q|
            doc=Nokogiri::XML(File.open("#{Rails.root}/public/#{s}_#{q}.xml"))
            @a=doc.xpath("//#{@mean}").text 
            @data[i][:data]<<@a.to_i
          end

         i=i+1
       end
       respond_to do |format|
	   format.html 
	   format.json { render json: @data.to_json }
       end

      else
          redirect_to report_path
      end
  
   end
  
   def export_exl
           
	@stockid = params[:stockid]
	@qdate = params[:qdate]
        @ans=[]
	@tagmean=Xbrltag.where(:tagname=>['tw-tse-pt:FixedAssets','tw-tse-pt:StockholdersEquities','tw-tse-pt:BondsPayable','tw-tse-pt:NetNotesReceivable'])
      
        doc=Nokogiri::XML(File.open("#{Rails.root}/public/#{@stockid}_#{@qdate}.xml"))
        @tagmean.each do |d|
           @a=doc.xpath("//#{d.tagname}").text
           @ans<<@a
        end 
            
        

       respond_to do |format|
          
           format.xlsx {
           response.headers['Content-Disposition'] = "attachment; filename=#{@stockid}.xlsx"
         }
             
       end
       
   end
 def export_list
     @betweens = Between.all
     
     @companies = Company.all
        
   end
    
end
