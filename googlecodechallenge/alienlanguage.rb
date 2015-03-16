def main()
    if File.exists?("A-micro-practice.in")
        file = File.open("A-micro-practice.in", "r") 
        nums = file.gets.chomp
        nums = nums.split(' ')
        l = nums[0].to_i
        d = nums[1].to_i
        n = nums[2].to_i
        dictionary = []
        for x in 0..d-1
            dictionary << file.gets.chomp
        end
        puts d
        puts dictionary
        inputs = []
        for x in 0..n
            inputs << file.gets
        end
        puts n
        inputs.each do |x|
            puts x
            findmatches(x)
        end
    end
end
def findmatches(word)
    # puts word
    a = word.split('(')
    puts a
end

main()