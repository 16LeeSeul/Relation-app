class ProfilesController < ApplicationController
    before_action :set_profile, only: [:show, :edit, :update]
    before_action :write_profile, except: [:new, :create]
    
    def new 
        redirect_to edit_profile_path unless current_user.profile.nil? # current_user가 비어있지않으면 edit_path로 보냄
        @profile = Profile.new
    end
    
    def create 
        @profile = Profile.new(profile_params)
        @profile.address = convert_address
        # debugging:    debegger
        # binding.pry : pry 에서 error 확인 : @profile.errors.full_messages
        @profile.user = current_user
        if @profile.save
            redirect_to my_profile_url
        else
            render 'new'
        end
    end
    
    def show
        @user = current_user
    end
    
    def edit
        
    end
    
    def update
        @profile.address = convert_address
        if @profile.update(profile_params)
            redirect_to my_profile_url # redirect_to 뒤엔 url이 와야함. : 풀 url을 넣는게 매뉴얼
        else
            render 'edit'
        end
    end
    
    private
    def set_profile
        @profile = current_user.profile
    end
    
    def profile_params
        params.require(:profile).permit(:name, :mobile, :birth)
    end
    
    def write_profile
        if current_user.profile.nil?
            redirect_to new_profile_url
        end
        # = redirect_to new_profile_url if current_user.profile.nil?
    end
    
    def convert_address
        address = ''
        params[:profile][:address].each_value do |v|
            address += "#{v}/ "
        end
        return address
    end
end
