class Users::AddingController < ApplicationController

    def adding_manually
    end

    def save_users
        user = User.new(:email => params[:email], :first_name => params[:first_name], :last_name => params[:last_name], :school_id => current_user.school_id)

        user.admin = params[:admin].to_i == 1 

        user.teacher = params[:teacher].to_i == 1   

        user.student = params[:student].to_i == 1
       
        puts user.inspect
        if user.save
           redirect_to home_show_users_path, alert: 'Users have been saved successfully!'
        else
            #notice: "Could not save users from chosen file!"
            redirect_to users_adding_import_users_path #stay here, reload this page
        end
        # redirect_to root_path
    end
end