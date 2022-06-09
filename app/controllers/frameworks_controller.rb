class FrameworksController < ApplicationController

  before_action :authenticate_user!

  def create
    @framework = Framework.new(framework_params)
    @framework.user_id = current_user.id
    
    if @framework.save
      FrameworkMailer.with(user: current_user.email, framework: @framework).welcome_email.deliver_later
      redirect_to root_path, notice: "Framework successfully created."
    end
  end

  private
    def framework_params
      params.require(:framework).permit(:title, :description)
    end
end
