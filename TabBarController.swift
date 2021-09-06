class TabBarController: UITabBarController {
   override func viewDidLoad() {
        super.viewDidLoad()
        setupMiddleButton()
   }
  func setupMiddleButton() {
    let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    var menuButtonFrame = menuButton.frame
    menuButtonFrame.origin.y = view.bounds.height - menuButtonFrame.height - 50
    menuButtonFrame.origin.x = view.bounds.width/2 - menuButtonFrame.size.width/2
    menuButton.frame = menuButtonFrame
    
    menuButton.backgroundColor = R.color.b5198()
    menuButton.layer.cornerRadius = menuButtonFrame.height/2
    view.addSubview(menuButton)
    
    menuButton.setImage(R.image.moreIcon(), for: .normal)
    menuButton.setImage(R.image.crossWhite(), for: .highlighted)
    menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
    
    view.layoutIfNeeded()
  }
   // MARK: - Action
  @objc private func menuButtonAction(sender: UIButton) {
    sender.isHighlighted = !sender.isHighlighted
    print(#function)
  }
}
