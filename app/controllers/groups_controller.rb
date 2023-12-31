class GroupsController < ApplicationController
  def index
    @page_title = "My Groups"
    @user = current_user
    @group_ids = @user.memberships.pluck(:group_id)
    @my_groups = Group.where(id: @group_ids)
    @created_groups = Group.where(user_id: current_user.id)
  end

  def show
    @page_title = "Group Info"
    @group = Group.find(params[:id])
  end

  def new
    @page_title = "Create Group"
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
    @session = Session.find_by(group: @group)

    redirect_to @group, notice: 'Yay! 🎉 You have joined the group.'
  end
  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path, notice: 'Yay! 🎉You succesfully deleted this group'
  end

  private

  def group_params
    params.require(:group).permit(:name, :description, :group_picture, :subject_id)
  end
end
