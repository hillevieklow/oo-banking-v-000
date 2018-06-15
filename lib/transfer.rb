class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    self.amount > 0 && @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if self.valid? && self.status == "pending" && @sender.balance > amount
      @sender.balance -= self.amount
      @reciever.balance += self.amount
      self.status = "complete"
    else
      bad_transfer
    end
  end

  def reverse_transfer
    if self.status = "complete"
      @sender.balance += self.amount
      @reciever.balance -= self.amount
  end



end
