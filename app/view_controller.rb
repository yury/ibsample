class ViewController < UIViewController
  extend IB

  attr_accessor :label
  ib_outlet :label, UILabel

  def viewWillAppear animated
    @counter = 0
    label.text = "Click the button"
  end

  def touch button
    @counter += 1
    label.text = "Touched #{@counter} times"
  end

  ib_action :touch
end