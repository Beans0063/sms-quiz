class Vote < ActiveRecord::Base
  def self.create_from_params!(params)
    v=Vote.new
    v.from = params[:From]
    v.to = params[:To]
    v.sid = params[:MessageSid]
    v.body = params[:Body]
    v.question = params[:Body].split(" ").first.upcase.strip
    v.answer = params[:Body].partition(" ").last.upcase.strip
    v.save
  end
end
