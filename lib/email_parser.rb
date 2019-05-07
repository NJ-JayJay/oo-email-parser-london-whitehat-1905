# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
    def initialize(t_arr)
        @emails = t_arr
    end

    def parse
        @emails.split(/,|\s/).uniq.reject(&:empty?)
        #.uniq removes all duplicates from the arary
        #.reject removes all elements which meet the (&:condition)
        #empty? returns true when there is an empty array element
    end

end
