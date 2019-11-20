# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'

    def hello_world lang
        if lang == "es"
            puts "Hola Mundo"
        elsif lang == "de"
            puts "Hallo Welt"
        elsif lang == "ru"
            puts "Privet, mir"
        elsif lang == "ja"
            puts "Kon'nichiwa sekai"
        else
            puts "Hello World"
        end
    end
    
    hello_world "es"
    hello_world "de"
    hello_world "en"
            

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

    def assign_grade number
        if number >= 90
            puts 'A'
        elsif number >= 80
            puts 'B'
        elsif number >= 70
            puts 'C'
        elsif number >= 60 
            puts 'D'
        else 
            puts 'F'
        end
    end

    assign_grade 96
    assign_grade 75
    assign_grade 40


# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'

def pluralizer(number, noun)
    if number != 1
        puts "#{number} #{noun}s"
    else 
        puts "#{number} #{noun}"
    end 
end 

pluralizer(5, "cat")
pluralizer(1, "dog")
pluralizer(0, "rooster")

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
