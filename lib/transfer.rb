class Transfer
  # your code here
attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount, status="pending")
    @sender=sender
    @receiver=receiver
    @status="pending"
    @amount=amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if valid? && @sender.balance > amount && @sender.status="pending"
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
    else
   @status = "rejected"
   "Transaction rejected. Please check your account balance."
  end
end

 def reverse_transfer
     if @status =="complete"
      @receiver.balance -= amount
      @sender.balance += amount
      @status = "reversed"
  end
end
end

#   def bad_transfer
#     if @sender.balance < amount
#   puts  "Transaction rejected. Please check your account balance."
#   end
# end
