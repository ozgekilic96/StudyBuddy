class GroupsController < ApplicationController
  def index
    @user = current_user
    @group_ids = @user.memberships.pluck(:group_id)
    @my_groups = Group.where(id: @group_ids)
  end

  def show
    @user = current_user
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to group_path
    else
      render :new
    end
  end
  def edit
    @group = Group.find(params[:id])
    if @group.user != current_user
      redirect_to @group, alert: 'You do not have permission to edit this group.'
    end
  end

  def update
    @group = current_user.groups.find(params[:id])

    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render :edit
    end
  end

  def join
    @group = Group.find(params[:id])
    @membership = Membership.new(group: @group, user: current_user)
    @membership.save
    redirect_to @group, notice: 'You have joined the group.'
  end

  private

  def group_params
    params.require(:group).permit(:name, :description)
  end
end
