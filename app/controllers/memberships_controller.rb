class MembershipsController < ApplicationController
  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy
    redirect_to groups_path, notice: 'You succesfully left this group'
  end
end
