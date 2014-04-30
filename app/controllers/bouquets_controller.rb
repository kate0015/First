class BouquetsController < ApplicationController
def index
    @Bouquets = Bouquet.all
p " "
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Bouquets }
    end

end

def show 
  
  p  @Bouquets = Bouquet.find(params[:id])
      @money = (@Bouquets.number_of_flowers * @Bouquets.price)
        respond_to do |format|
      format.html 
      format.json { render json: @Bouquets }
    end
  end

  
  def new
  
  p @Bouquets = Bouquet.new
  
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Bouquets }
    end
  end


  def edit
    @Bouquets = Bouquet.find(params[:id])
  end

 

  def create
    @Bouquets = Bouquet.new(params[:bouquet])
 
    respond_to do |format|
      if @Bouquets.save
        format.html { redirect_to @Bouquets, notice: 'Bouquet was successfully created.' }
        format.json { render json: @Bouquets, status: :created, location: @Bouquets }
      else
        format.html { render action: "new" }
        format.json { render json: @Bouquets.errors, status: :unprocessable_entity }
      end
    end
  end


  

def update
    @Bouquets = Bouquet.find(params[:id])

    respond_to do |format|
      if @Bouquets.update_attributes(params[:Bouquet])
        format.html { redirect_to @Bouquets, notice: 'Bouquet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Bouquets.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /children/1
  # DELETE /children/1.json
  def destroy
    @Bouquets = Bouquet.find(params[:id])
    @Bouquets.destroy

    respond_to do |format|
      format.html { redirect_to bouquets_url }
      format.json { head :no_content }
    end
  end

  def cost
   @Bouquets  = Bouquet.find(params[:id])
    @money = (@Bouquets.number_of_flowers * @Bouquets.price)
end

end
