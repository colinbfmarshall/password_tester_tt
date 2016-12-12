class Query < ApplicationRecord
  validates :password, presence: true
  after_commit :lets_try, on: [:create, :update]

  def lets_try

      lower_case = ('a'..'z').to_a
      upper_case = lower_case.map(&:upcase)
      numbers = ('0'..'9').to_a
      characters = "!@#$%^&*()-_=+[{ ]};:'\|`~,<.>/? ".chars.to_a 
      characters << '"'


      options = [lower_case, upper_case, numbers, characters]

      options.reject! do |option|
        (self.password.chars & option).empty?
      end
      
      total_guesses = options.flatten.count ** password.chars.count

      billion = 1000 ** 3 
      ten_billion = billion * 10

      how_long_in_seconds = total_guesses.to_f / ten_billion

      self.update_column(:result, how_long_in_seconds)

    end

end