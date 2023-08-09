class RetweetsController < ApplicationController
  before_action :set_retweet, only: %i[ show edit update destroy ]

  # GET /retweets or /retweets.json
  def index
    @retweets = Retweet.all
  end

  # GET /retweets/1 or /retweets/1.json
  def show
  end

  # GET /retweets/new
  def new
    @retweet = Retweet.new
  end

  # GET /retweets/1/edit
  def edit
  end

  # POST /retweets or /retweets.json
  def create
    @retweet = current_user.retweets.new(retweet_params)

    respond_to do |format|
      if @retweet.save
        format.html { redirect_to retweet_url(@retweet), notice: "Retweet was successfully created." }
        format.json { render :show, status: :created, location: @retweet }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @retweet.errors, status: :unprocessable_entity }
        format.turbo_stream
      end
    end
  end

  # PATCH/PUT /retweets/1 or /retweets/1.json
  def update
    respond_to do |format|
      if @retweet.update(retweet_params)
        format.html { redirect_to retweet_url(@retweet), notice: "Retweet was successfully updated." }
        format.json { render :show, status: :ok, location: @retweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @retweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retweets/1 or /retweets/1.json
  def destroy
    @retweet.destroy

    respond_to do |format|
      format.html { redirect_to retweets_url, notice: "Retweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retweet
      @retweet = Retweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def retweet_params
      params.require(:retweet).permit(:tweet_id, :body)
    end
end
