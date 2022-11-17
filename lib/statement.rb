class Statement
    def initialize
    end
  
    def statement_creator
      @cashflow = @deposits.merge(@withdrawals)
      @transactions = @cashflow.merge(@balance).sort 
      return @transactions
    end
      