class Transfer

  attr_accessor :sender, :reciever, :amount, :status

  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
    @amount = amount
    @status = "pending"
  end

  def valid?
    self.amount > 0 && @sender.valid? && @reciever.valid?
  end

end
