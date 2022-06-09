class FrameworkMailer < ApplicationMailer
    default from: 'jorge.ortiz@icalialabs.com'

    def welcome_email
        @user = params[:user]
        @url = 'http://localhost:3000/'
        @framework = params[:framework]
        mail(to: @user, subject: 'Framework')
    end
end
