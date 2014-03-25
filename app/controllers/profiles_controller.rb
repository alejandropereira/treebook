class ProfilesController < ApplicationController
  def show
		@user = User.find_by(profile_name: params[:id])

		if @user
			@statuses = @user.statuses
			render :show
		else
			render file: "public/404", status: :not_found
		end
  end
end
