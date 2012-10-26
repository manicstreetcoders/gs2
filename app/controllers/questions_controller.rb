class QuestionsController < ApplicationController

  # GET /questions/recalc
  def recalc
    ok_count = 0;
    fail_count = 0;

    @questions = Question.all
    @questions.each do |q|
      results = Result.where("question_id = ?", q.id)
      q.sample_size = results.size

      ok_count = 0;
      fail_count = 0;

      results.each do |r|
        if (r.user_selection == r.answer)
          ok_count = ok_count + 1;
        end
      end
      # TEMPORARY SOLUTION
      q.difficulty = ok_count;
      q.save
    end

    respond_to do |format|
      format.html { redirect_to questions_url }
    end
  end

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(params[:question])

##### NUM_SELECTION STARTS
    json = Hash.from_xml(@question.xml).to_json
    parsed_json = ActiveSupport::JSON.decode(json)

    question_message = parsed_json['QuestionGroup']['Message']

    logger.debug "##### question_message: #{question_message}"

    if (question_message) 
      doc = Nokogiri::HTML(question_message)
  
      num_fastclick = doc.search('.fastclick').length
  
      logger.debug "##### doc.search.size: #{num_fastclick}"

      @question.num_selection = num_fastclick
    end
##### NUM_SELECTION ENDS

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = Question.find(params[:id])

    @temp_question = Question.new(params[:question])

##### NUM_SELECTION STARTS
    json = Hash.from_xml(@temp_question.xml).to_json
    parsed_json = ActiveSupport::JSON.decode(json)

    question_message = parsed_json['QuestionGroup']['Message']

    logger.debug "##### question_message: #{question_message}"

    if (question_message) 
      doc = Nokogiri::HTML(question_message)
  
      num_fastclick = doc.search('.fastclick').length
  
      logger.debug "##### doc.search.size: #{num_fastclick}"
  
      params[:question][:num_selection] = num_fastclick;
    end
##### NUM_SELECTION ENDS

    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end
end
