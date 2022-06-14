class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  # GET /groups or /groups.json
  def index
    @groupdetails = GroupDetail.find_by_sql("SELECT `group_details`.* FROM `group_details` WHERE `group_details`.`username` = '#{session[:user_username]}'")
    @groups = Group.all
  end

  # GET /groups/1 or /groups/1.json
  def show
    @expense = Expense.new
    @expenses = Expense.all
  end

  # GET /groups/new
  def new
    @group = Group.new
    @group_detail = GroupDetail.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups or /groups.json
  def create
    group_params["group_members"] << ",#{session[:user_username]}"
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        members_list = @group.group_members.strip.split(",")
        members_list << session[:user_username]
        members_list.each do |member|
          @group_detail = GroupDetail.new(group_id: @group.id, group_name: @group.group_name, username: member.strip)
          @group_detail.save!
        end
        format.html { redirect_to group_url(@group), notice: "Group was successfully created." }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1 or /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to group_url(@group), notice: "Group was successfully updated." }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url, notice: "Group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_params
      params.require(:group).permit(:group_name, :group_type, :group_owner, :group_status, :group_members)
    end
end
