class ViewController < UIViewController
  extend IB

  outlet_accessor :label, UILabel

  def viewWillAppear animated
    @counter = 0
    label.text = "Click the button"
  end

  def touch button
    @counter += 1
    label.text = "Touched #{@counter} times"
  end

end