class Transfer

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    self.amount > 0 && @sender.valid? && @reciever.valid?
  end

  def execute_transaction
    if self.valid? && self.status == "pending" && self.balance > amount
  end



end
