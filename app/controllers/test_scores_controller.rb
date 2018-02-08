class TestScoresController < ApplicationController
  before_action :set_test_score, only: [:show, :update, :destroy]

  # GET /test_scores
  def index
    @test_scores = TestScore.all

    render json: @test_scores
  end

  # GET /test_scores/1
  def show
    render json: @test_score
  end

  # POST /test_scores
  def create
    @test_score = TestScore.new(test_score_params)

    if @test_score.save
      render json: @test_score, status: :created, location: @test_score
    else
      render json: @test_score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_scores/1
  def update
    if @test_score.update(test_score_params)
      render json: @test_score
    else
      render json: @test_score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test_scores/1
  def destroy
    @test_score.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_score
      @test_score = TestScore.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def test_score_params
      params.require(:test_score).permit(:name, :score, :student_id)
    end
end
