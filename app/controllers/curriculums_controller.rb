class CurriculumsController < ApplicationController
  before_action :set_curriculum, only: [:show, :edit, :update, :destroy]

  # GET /curriculums
  # GET /curriculums.json
  def index
    @curriculums = Curriculum.all
  end

  # GET /curriculums/1
  # GET /curriculums/1.json
  def show
  end

  # GET /curriculums/new
  def new
    @curriculum = Curriculum.new
  end

  # GET /curriculums/1/edit
  def edit
  end

  # POST /curriculums
  # POST /curriculums.json
  def create
    updateInfo = curriculum_params
    updateInfo[:recent_work_experience] = params[:curriculum][:recent_work_experience].split(',')
    updateInfo[:skills] = params[:curriculum][:skills].split(',')
    updateInfo[:education] = params[:curriculum][:education].split(',')
    updateInfo[:languages] = params[:curriculum][:languages].split(',')
    @curriculum = Curriculum.new(updateInfo)

    respond_to do |format|
      if @curriculum.save
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully created.' }
        format.json { render :show, status: :created, location: @curriculum }
      else
        format.html { render :new }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /curriculums/1
  # PATCH/PUT /curriculums/1.json
  def update
    updateInfo = curriculum_params
    updateInfo[:languages] = params[:curriculum][:languages].split(',')
    respond_to do |format|
      if @curriculum.update(updateInfo)
        format.html { redirect_to @curriculum, notice: 'Curriculum was successfully updated.' }
        format.json { render :show, status: :ok, location: @curriculum }
      else
        format.html { render :edit }
        format.json { render json: @curriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curriculums/1
  # DELETE /curriculums/1.json
  def destroy
    @curriculum.destroy
    respond_to do |format|
      format.html { redirect_to curriculums_url, notice: 'Curriculum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curriculum
      @curriculum = Curriculum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def curriculum_params
      params.require(:curriculum).permit(:name, :profile, :experience, :availability, :recent_work_experience, :skills, :education, :languages)
    end
end
