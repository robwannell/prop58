class EndorsementsController < ApplicationController
  before_action :set_endorsement, only: [:show, :edit, :update, :destroy]

before_filter :authorize, except: [:index]


   
  def index
    @endorsement = Endorsement.all
 
  end
  
 

  
  def show
   
  end

  # GET /issues/new
  def new
    @endorsement = Endorsement.new
  end

  
  def edit
  end


  def create
    @endorsement = Endorsement.new(endorsement_params)

    respond_to do |format|
      if @endorsement.save
        format.html { redirect_to endorsements_url, notice: 'Endorsement was successfully created.' }
        format.json { render :show, status: :created, location: @endorsement }
      else
        format.html { render :new }
        format.json { render json: @endorsement.errors, status: :unprocessable_entity }
      end
    end
  end

   
   
  def update
    respond_to do |format|
      if @endorsement.update(endorsement_params)
        format.html { redirect_to endorsements_url, notice: 'Endorsement was successfully updated.' }
        format.json { render :show, status: :ok, location: @endorsement }
      else
        format.html { render :edit }
        format.json { render json: @endorsement.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @endorsement.destroy
    respond_to do |format|
      format.html { redirect_to endorsements_url, notice: 'Endorsement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endorsement
      @endorsement = Endorsement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def endorsement_params
      params.require(:endorsement).permit(:endorsement_id, :firstname, :lastname, :title, :organization, :ranking, :category)
    end
end