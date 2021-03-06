
class ThemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update, :destroy]

  # GET /themes
  # GET /themes.json
  def index
    @publish_themes = Theme.where(status: 0)
    @unpublish_themes = Theme.where(status: nil)
    @topics = Topic.all
  end

  # GET /themes/1
  # GET /themes/1.json
  def show
    @topics = Topic.where('theme_id =?', @theme.id)
    @themes = Theme.all
    @user = User.all
  end

  # GET /themes/new
  def new
    @theme = Theme.new
  end

  # GET /themes/1/edit
  def edit
  end

  # POST /themes
  # POST /themes.json
  def create
    @theme = Theme.new(theme_params)

    respond_to do |format|
      if @theme.save
        format.html { redirect_to themes_path, notice: 'Theme was successfully created.' }
        format.json { render :show, status: :created, location: @theme }
      else
        format.html { render :new }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /themes/1
  # PATCH/PUT /themes/1.json
  def update
    respond_to do |format|
      if @theme.update(theme_params)
        format.html { redirect_to themes_path, notice: 'Theme was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme }
      else
        format.html { render :edit }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themes/1
  # DELETE /themes/1.json
  def destroy
    @theme.destroy
    respond_to do |format|
      format.html { redirect_to themes_url, notice: 'Theme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme
      @theme = Theme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_params
      params.require(:theme).permit(:theme, :status)
    end
  end
