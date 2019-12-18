
    require('rspec')
    require('my_class')

    describe(my_class) do
    describe('#my_method') do
      it('test') do
        test = my_class.new()
        expect(test.my_method()).to(eq('test'))
      end
    end
  end
  