class RoundsController < ApplicationController
  before_action :authenticate_user!
  before_filter :find_round, only: [:show, :edit, :update, :destroy, :round_front, :round_back, :total_score]
  def index
    @rounds = Round.all
    @course = Course.all
  end

  def show
    @holes = Hole.all
    @scores = @round.scores.where(user_id: current_user)
  end

  def new
    @round = Round.new
    @courses = Course.all
  end

  def create
    @courses = Course.all
    @round = Round.new round_params
    if @round.save
      flash[:notice] = "Thank You"
     redirect_to round_scores_path(@round)
    else
      flash[:error] = "You can only have four golfers per round."
      render :new
    end
  end

  def edit
    
  end

  def update
    @round.update_attributes round_params
    redirect_to rounds_path
  end

  def destroy
    @round.delete
    redirect_to rounds_path
  end

  def user_name
    @user = User.order(:name).where("name like ?", "%#{params[:term]}%")
    # render json: [{ label: "awesome", value:"possum" }, { label: "awesome2", value:"possum2" }]
    render json: @user.map{|u| {label: u.name, id: u.id}}
  end
   
private
  def find_round
    @round = Round.find params[:id]
  end
  def round_params
    params.require(:round).permit(:user_id, :course_id, :tee, :front_total, :back_total, :round_total,
      user_rounds_attributes: [:id, 
        :user_id,
        :round_id,
        :tee,
        :user_name,
        :_destroy])
  end

end
