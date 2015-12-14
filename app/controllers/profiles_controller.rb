class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  

  # GET /profiles
  # GET /profiles.json
  def index
    @q = Profile.ransack(params[:q].try(:merge, m: 'or'))
    @profiles = @q.result(distint:true)
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = current_user.build_profile
  end

  # GET /profiles/1/edit
  def edit
    authorize! :edit, @profile
  end

  # POST /profiles
  # POST /profiles.json
  def create
    authorize! :create, @profile
    @profile = current_user.build_profile(profile_params)
    @contact = Contact.new(message: "A New Profile Has Been Created", first_name: @profile.first_name, last_name: @profile.last_name, email: @profile.email)
    @contact.request = request
    @contact.deliver
    
         
    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    authorize! :edit, @profile
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    authorize! :destroy, @profile
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :city, :state, :bio, :coach_type, :rating, :price_low, :price_high, :language, :certification, :skills, :experience, :email, :industry, :leadership, :wellbeing, :management)
    end


end
