require 'csv'

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
    end

    def import_users
        @file_name = params[:file_name]
        if @file_name
            CSV.foreach(@file_name, headers: true) do |row|
                firstName, lastName, email, admin, teacher, student = row.to_s.split(/[\s\t,]/)
                user = User.new(:email => email, :first_name => firstName, :last_name => lastName, :school_id => current_user.school_id, :admin => admin, :teacher => teacher, :student => student)
                user.save
            end
            redirect_to home_show_users_path, alert: 'Users have been saved successfully!'
        else
            puts "The file could not be opened!"
        end
    end
    
end