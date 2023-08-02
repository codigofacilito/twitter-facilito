class HashtagsController < ApplicationController
  before_action :set_hashtag, only: %i[ show edit update destroy ]

  # GET /hashtags or /hashtags.json
  def index
    @hashtags = Hashtag.all
  end

  # GET /hashtags/1 or /hashtags/1.json
  def show
    @tweets = @hashtag.tweets
  end

  # GET /hashtags/new
  def new
    @hashtag = Hashtag.new
  end

  # GET /hashtags/1/edit
  def edit
  end

  # POST /hashtags or /hashtags.json
  def create
    @hashtag = Hashtag.new(hashtag_params)

    respond_to do |format|
      if @hashtag.save
        format.html { redirect_to hashtag_url(@hashtag), notice: "Hashtag was successfully created." }
        format.json { render :show, status: :created, location: @hashtag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hashtags/1 or /hashtags/1.json
  def update
    respond_to do |format|
      if @hashtag.update(hashtag_params)
        format.html { redirect_to hashtag_url(@hashtag), notice: "Hashtag was successfully updated." }
        format.json { render :show, status: :ok, location: @hashtag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hashtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hashtags/1 or /hashtags/1.json
  def destroy
    @hashtag.destroy

    respond_to do |format|
      format.html { redirect_to hashtags_url, notice: "Hashtag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hashtag
      @hashtag = Hashtag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hashtag_params
      params.require(:hashtag).permit(:identifier)
    end
end
