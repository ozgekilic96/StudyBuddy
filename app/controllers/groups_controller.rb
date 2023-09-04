class GroupsController < ApplicationController
  def index
    @page_title = "My Groups"
    @user = current_user
    @group_ids = @user.memberships.pluck(:group_id)
    @my_groups = Group.where(id: @group_ids)
    @created_groups = Group.where(user_id: current_user.id)
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
    @subjects = Subject.all
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save!
      @subject = Subject.find(@group.subject_id)
      InterestedSubject.create(subject: @subject, user: current_user) unless current_user.subjects.include? @subject
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
    if @group.user != current_user
      redirect_to @group, alert: 'You do not have permission to edit this group'
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
    params.require(:group).permit(:name, :description, :group_picture, :subject_id)
  end
end
