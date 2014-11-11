class IndexController < ApplicationController
  skip_before_filter :verify_authenticity_token  

  def index
    render :text=>"Vote here"
  end

  def new_vote
    if params[:Body].blank?
      render :text=>"<Response><Sms>No SMS body received</Sms></Response>"
    elsif params[:Body].split(" ").length==1
      render :text=>"<Response><Sms>Please enter the question number or letter, followed by a space, then your vote.</Sms></Response>"
    else
      v=Vote.create_from_params!(params)
      render :text=>"<Response><Sms>Vote Received</Sms></Response>"
    end
  end

  def vote_results
    @questions =  Vote.select(:question).distinct
  end
  
  def reset
    Vote.delete_all
    redirect_to("/results")
  end
  
end
