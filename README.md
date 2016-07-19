# -CardView-Super-easy-to-use-
Install
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view = CardView(frame: frame, items: 5, target: self)
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
