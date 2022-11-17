module SharedVariables
    @deposits = {}
    @withdrawals = {}
    @starting_balance = 0
    @start_date = '15-11-22'
    @balance = {@start_date => @starting_balance}

    def self.deposits
      return @deposits
    end

    def self.withdrawals
      return @withdrawals
    end
    
    def self.starting_balance
      return @starting_balance
    end

    def self.start_date
      return @start_date
    end

    def self.balance
      return@balance
    end