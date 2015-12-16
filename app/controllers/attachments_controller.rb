class AttachmentsController < ApplicationController

    def create
        @attachment = Attachment.new(src: params[:file])
        if @attachment.save
            respond_to do |format|
                format.json{ render :json => @attachment }
            end
        end
    end
end
