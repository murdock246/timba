class CvsController < ApplicationController
  before_action :set_cv, only: [:show, :edit, :update, :destroy]

  # GET /add_cvs
  # GET /add_cvs.json
  def index
    @cvs = Cv.all
  end

  # GET /add_cvs/1
  # GET /add_cvs/1.json
  def show
  end

  # GET /add_cvs/new
  def new
    @cv = Cv.new
  end

  # GET /add_cvs/1/edit
  def edit
  end

  # POST /add_cvs
  # POST /add_cvs.json
  def create
    @cv = Cv.new(cv_params)

    respond_to do |format|
      if @cv.save
        format.html { redirect_to @cv, notice: 'Cv was successfully created.' }
        format.json { render :show, status: :created, location: @cv }
      else
        format.html { render :new }
        format.json { render json: @cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_cvs/1
  # PATCH/PUT /add_cvs/1.json
  def update
    respond_to do |format|
      if @cv.update(cv_params)
        format.html { redirect_to @cv, notice: 'Cv was successfully updated.' }
        format.json { render :show, status: :ok, location: @cv }
      else
        format.html { render :edit }
        format.json { render json: @cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_cvs/1
  # DELETE /add_cvs/1.json
  def destroy
    @cv.destroy
    respond_to do |format|
      format.html { redirect_to cvs_url, notice: 'Cv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cv
      @cv = Cv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cv_params
      params.require(:cv).permit(:full_name, :profile, :experience, :recent_work_experience, :skills, :education, :languages)
    end
end
