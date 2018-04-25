namespace :data do
    
        task :create_sample_data => :environment do
    
            puts "Creating sample data..."
    
            # =====================================================
    
            puts "   Cleaning up tables..."
    
            Routing.delete_all
            PossibleAnswer.delete_all
            Question.delete_all
            Role.delete_all
    
            # =====================================================
    
            puts "   Creating roles..."
    
            rec = Role.new
            rec.id = 1
            rec.name = "Role 1"
            rec.save
    
            rec = Role.new
            rec.id = 2
            rec.name = "Role 2"
            rec.save
    
            rec = Role.new
            rec.id = 3
            rec.name = "Role 3"
            rec.save
    
            # =====================================================
    
            puts "   Creating questions..."
    
            rec = Question.new
            rec.id = 1
            rec.role_id = 1
            rec.is_first = true
            rec.question_text = "How old are you?"
            rec.save
    
            rec = Question.new
            rec.id = 2
            rec.role_id = 1
            rec.is_first = false
            rec.question_text = "What is your favorite food?"
            rec.save
    
            rec = Question.new
            rec.id = 3
            rec.role_id = 1
            rec.is_first = false
            rec.question_text = "Who is your favorite cartoon character?"
            rec.save
    
            # =====================================================
    
            # --------------------------
            # answers for question 1
            # --------------------------
    
            puts "   Creating possible answers..."
    
            rec = PossibleAnswer.new
            rec.id = 1
            rec.question_id = 1
            rec.order = 10
            rec.answer_text = "< 10 years old"
            rec.is_text = false
            rec.save
    
            rec = PossibleAnswer.new
            rec.id = 2
            rec.question_id = 1
            rec.order = 20
            rec.answer_text = "10-17 years old"
            rec.is_text = false
            rec.save
    
            rec = PossibleAnswer.new
            rec.id = 3
            rec.question_id = 1
            rec.order = 30
            rec.answer_text = "18+ years old"
            rec.is_text = false
            rec.save
    
            # --------------------------
            # answers for question 2
            # --------------------------
    
            rec = PossibleAnswer.new
            rec.id = 4
            rec.question_id = 2
            rec.order = 10
            rec.answer_text = "Italian Food"
            rec.is_text = false
            rec.save
    
            rec = PossibleAnswer.new
            rec.id = 5
            rec.question_id = 2
            rec.order = 11
            rec.answer_text = "Indian Food"
            rec.is_text = false
            rec.save
    
            rec = PossibleAnswer.new
            rec.id = 6
            rec.question_id = 2
            rec.order = 12
            rec.answer_text = "Mongolian BBQ"
            rec.is_text = false
            rec.save
    
            # --------------------------
            # answers for question 3
            # --------------------------
    
            rec = PossibleAnswer.new
            rec.id = 7
            rec.question_id = 3
            rec.order = 10
            rec.answer_text = "Bugs Bunny"
            rec.is_text = false
            rec.save
    
            rec = PossibleAnswer.new
            rec.id = 8
            rec.question_id = 3
            rec.order = 10
            rec.answer_text = "The Roadrunner"
            rec.is_text = false
            rec.save
    
            rec = PossibleAnswer.new
            rec.id = 9
            rec.question_id = 3
            rec.order = 10
            rec.answer_text = "Wile E. Coyote"
            rec.is_text = false
            rec.save
    
            # =====================================================
    
            puts "   Creating routings..."
    
            # ---------------------------------
            # routings for question 1 answers
            # ---------------------------------
    
            rec = Routing.new
            rec.id = 1
            rec.question_id = 1
            rec.possible_answer_id = 1
            rec.next_question_id = 2
            rec.save
    
            rec = Routing.new
            rec.id = 2
            rec.question_id = 1
            rec.possible_answer_id = 2
            rec.next_question_id = 2
            rec.save
    
            rec = Routing.new
            rec.id = 3
            rec.question_id = 1
            rec.possible_answer_id = 3
            rec.next_question_id = 2
            rec.save
    
            # ---------------------------------
            # routings for question 2 answers
            # ---------------------------------
    
            rec = Routing.new
            rec.id = 4
            rec.question_id = 2
            rec.possible_answer_id = 4
            rec.next_question_id = 3
            rec.save
    
            rec = Routing.new
            rec.id = 5
            rec.question_id = 2
            rec.possible_answer_id = 5
            rec.next_question_id = 3
            rec.save
    
            rec = Routing.new
            rec.id = 6
            rec.question_id = 2
            rec.possible_answer_id = 6
            rec.next_question_id = 3
            rec.save
    
            # ---------------------------------
            # routings for question 3 answers
            # ---------------------------------
    
            rec = Routing.new
            rec.id = 7
            rec.question_id = 3
            rec.possible_answer_id = 7
            rec.next_question_id = nil
            rec.save
    
            rec = Routing.new
            rec.id = 8
            rec.question_id = 3
            rec.possible_answer_id = 8
            rec.next_question_id = nil
            rec.save
    
            rec = Routing.new
            rec.id = 9
            rec.question_id = 3
            rec.possible_answer_id = 9
            rec.next_question_id = nil
            rec.save
    
            # =====================================================
    
            puts "Complete."
    
        end
    
    end