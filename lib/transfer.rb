require 'pry'
class Transfer
attr_accessor :status, :sender, :receiver, :amount

def initialize(sender, receiver, transfer_amnt)
@status= "pending"
@sender= sender 
@receiver= receiver 
@amount= transfer_amnt
end

def valid?
  @sender.valid? && @receiver.valid? 
end 

def execute_transaction 

      unless  @status == "complete" 
       @sender.balance -= @amount 
        @receiver.balance += @amount
        @status="complete"
      
     end 
  end 
 end
