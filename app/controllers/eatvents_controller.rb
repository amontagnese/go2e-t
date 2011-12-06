class EatventsController < ApplicationController
  # GET /eatvents
  # GET /eatvents.json
  def index
    @eatvents = Eatvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eatvents }
    end
  end

  # GET /eatvents/1
  # GET /eatvents/1.json
  def show
    @eatvent = Eatvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eatvent }
    end
  end

  # GET /eatvents/new
  # GET /eatvents/new.json
  def new
    @eatvent = Eatvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eatvent }
    end
  end

  # GET /eatvents/1/edit
  def edit
    @eatvent = Eatvent.find(params[:id])
  end

  # POST /eatvents
  # POST /eatvents.json
  def create
    @eatvent = Eatvent.new(params[:eatvent])
    
    #put names into array
    #participantArr = @eatvent.people.gsub(/ /,'').split('-').select{|x|!x.empty?}
    participantArr = @eatvent.people
    @eatvent.people = participantArr.join(",")
    participantArr.each {|name| 
      tempemail = User.where(:name => name).first.email 
      UserMailer.eatvent_email(tempemail,@eatvent,"You're invited to a new Eatvent!!").deliver
    }
    
    respond_to do |format|
      if @eatvent.save
        format.html { redirect_to @eatvent, notice: 'Eatvent was successfully created.' }
        format.json { render json: @eatvent, status: :created, location: @eatvent }
      else
        format.html { render action: "new" }
        format.json { render json: @eatvent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eatvents/1
  # PUT /eatvents/1.json
  def update
    @eatvent = Eatvent.find(params[:id])

    participantArr = @eatvent.people
    @eatvent.people = participantArr.join(",")
    participantArr.each {|name| 
      tempemail = User.where(:name => name).first.email 
      UserMailer.eatvent_email(tempemail,@eatvent,"The Eatvent has been modified").deliver
    }

    respond_to do |format|
      if @eatvent.update_attributes(params[:eatvent])
        format.html { redirect_to @eatvent, notice: 'Eatvent was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @eatvent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eatvents/1
  # DELETE /eatvents/1.json
  def destroy
    @eatvent = Eatvent.find(params[:id])
    @eatvent.destroy

    respond_to do |format|
      format.html { redirect_to eatvents_url }
      format.json { head :ok }
    end
  end
end
