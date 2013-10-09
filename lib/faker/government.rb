module Faker
  class Government < Base
    flexible :government

    class << self
      def bill_number
        numerify(fetch("government.bill_number"))
      end

      def vote_name
        fetch("government.vote_name")
      end

      def vote_num
        '#' + numerify("####")
      end

      def vote_number
        parse("government.vote_number")
      end

      def interest_group
        parse("government.interest_group")
      end
    end
  end
end
