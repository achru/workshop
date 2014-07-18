class TeacherProfilesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_teacher_profile, only: [:show, :edit, :update, :destroy]

  # GET /teacher_profiles
  # GET /teacher_profiles.json
  def index
    @teacher_profiles = TeacherProfile.all
  end

  # GET /teacher_profiles/1
  # GET /teacher_profiles/1.json
  def show
  end

  # GET /teacher_profiles/new
  def new
    @teacher_profile = TeacherProfile.new
  end

  # GET /teacher_profiles/1/edit
  def edit
  end

  # POST /teacher_profiles
  # POST /teacher_profiles.json
  def create
    @teacher_profile = TeacherProfile.new(teacher_profile_params)
    @teacher_profile.user = current_user

    respond_to do |format|
      if @teacher_profile.save
        format.html { redirect_to @teacher_profile, notice: 'Teacher profile was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_profile }
      else
        format.html { render :new }
        format.json { render json: @teacher_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_profiles/1
  # PATCH/PUT /teacher_profiles/1.json
  def update
    respond_to do |format|
      if @teacher_profile.update(teacher_profile_params)
        format.html { redirect_to @teacher_profile, notice: 'Teacher profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_profile }
      else
        format.html { render :edit }
        format.json { render json: @teacher_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_profiles/1
  # DELETE /teacher_profiles/1.json
  def destroy
    @teacher_profile.destroy
    respond_to do |format|
      format.html { redirect_to teacher_profiles_url, notice: 'Teacher profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_profile
      @teacher_profile = TeacherProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_profile_params
      params.require(:teacher_profile).permit(:user_id, :name, :about, :url, :email)
    end
end
