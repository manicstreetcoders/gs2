class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  def index
    @exams = Exam.all
  end

  # GET /exams/1
  # GET /exams/1.json
  def show
    @exam = Exam.find(params[:id])
    @questions = @exam.questions

    @questions.each do |q|
      json = Hash.from_xml(q.xml).to_json
      parsed_json = ActiveSupport::JSON.decode(json)

      q.question_sentence = parsed_json['QuestionGroup']['Question']
      q.question_message = parsed_json['QuestionGroup']['Message']
      q.question_selection = parsed_json['QuestionGroup']['Selection']
      q.question_answer = parsed_json['QuestionGroup']['Answer']
      is_question = parsed_json['QuestionGroup']['IsQuestion']
      if is_question == "false"
        q.is_question = false
        q.question_point = 0
      else
        q.is_question = true
        q.question_point = parsed_json['QuestionGroup']['Point']
      end
    end
  end

  # GET /exams/new
  # GET /exams/new.json
  def new
    @exam = Exam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam }
    end
  end

  # GET /exams/1/edit
  def edit
    @exam = Exam.find(params[:id])
  end

  # POST /exams
  # POST /exams.json
  def create
    @exam = Exam.new(params[:exam])

    respond_to do |format|
      if @exam.save
        format.html { redirect_to @exam, notice: 'Exam was successfully created.' }
        format.json { render json: @exam, status: :created, location: @exam }
      else
        format.html { render action: "new" }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exams/1
  # PUT /exams/1.json
  def update
    @exam = Exam.find(params[:id])

    respond_to do |format|
      if @exam.update_attributes(params[:exam])
        format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy

    respond_to do |format|
      format.html { redirect_to exams_url }
      format.json { head :no_content }
    end
  end
end
