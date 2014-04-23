class Mother1sController < ApplicationController
  # GET /mother1s
  # GET /mother1s.json
  def index
    @mother1s = Mother1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mother1s }
    end
  end

  # GET /mother1s/1
  # GET /mother1s/1.json
  def show
    @mother1 = Mother1.find(params[:id])
    @children = Child.where(:mother1_id => params[:id])

    #@children_id = params[:children_id]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mother1 }
    end
  end

  # GET /mother1s/new
  # GET /mother1s/new.json
  def new
    @mother1 = Mother1.new

    #@children_id = params[:children_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mother1 }
    end
  end

  # GET /mother1s/1/edit
  def edit
    @mother1 = Mother1.find(params[:id])
  end

  # POST /mother1s
  # POST /mother1s.json
  def create
    @mother1 = Mother1.new(params[:mother1])

    #@children_id = params[:children_id]

    respond_to do |format|
      if @mother1.save
        format.html { redirect_to @mother1, notice: 'Mother was successfully created.' }
        format.json { render json: @mother1, status: :created, location: @mother1 }
      else
        format.html { render action: "new" }
        format.json { render json: @mother1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mother1s/1
  # PUT /mother1s/1.json
  def update
    @mother1 = Mother1.find(params[:id])

    respond_to do |format|
      if @mother1.update_attributes(params[:mother1])
        format.html { redirect_to @mother1, notice: 'Mother was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mother1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mother1s/1
  # DELETE /mother1s/1.json
  def destroy
    @mother1 = Mother1.find(params[:id])
    @mother1.destroy

    respond_to do |format|
      format.html { redirect_to mother1s_url }
      format.json { head :no_content }
    end
  end

end
