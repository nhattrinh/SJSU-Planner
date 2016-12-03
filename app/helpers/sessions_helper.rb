module SessionsHelper
    def login(user)
        session[:user_id] = user.id
    end

    def logout
        session.delete(:user_id)
        clear_acting_student
        @acting_user = nil
    end

    def acting_user_id
        session[:user_id]
    end

    def acting_user
        if @acting_user.nil?
            @acting_user = User.find_by(id: acting_user_id)
        else
            @acting_user
        end
    end

    def logged_in?
        !acting_user.nil?
    end
end


