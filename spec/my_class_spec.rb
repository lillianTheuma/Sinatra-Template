
require('rspec')
require('my_class')




# CREATE****************************
describe(my_class) do
  describe('#my_method') do
    it('test') do
      test = my_class.new()
      expect(test.my_method()).to(eq('test'))
    end
  end

# READ****************************
describe(my_class) do
  describe('#my_method') do
    it('test') do
      test = my_class.new()
      expect(test.my_method()).to(eq('test'))
    end
  end

# UPDATE***************************
describe(my_class) do
  describe('#my_method') do
    it('test') do
      test = my_class.new()
      expect(test.my_method()).to(eq('test'))
    end
  end


# DELETE****************************
describe(my_class) do
  describe('#my_method') do
    it('test') do
      test = my_class.new()
      expect(test.my_method()).to(eq('test'))
    end
  end
