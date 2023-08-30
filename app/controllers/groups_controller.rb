class GroupsController < ApplicationController
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

  private

  def group_params
    params.require(:group).permit(:name, :description)
  end

  def edit
    @group = current_user.groups.find(params[:id])
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
    current_user.groups << @group
    redirect_to @group, notice: 'You have joined the group.'
  end
end
