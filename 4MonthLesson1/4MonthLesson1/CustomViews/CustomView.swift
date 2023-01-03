//
//  CustomView.swift
//  4MonthLesson1
//
//  Created by ibaikaa on 26/12/22.
//

import UIKit

class CustomView: UIView {
    
    @IBOutlet private weak var contentView: UIView!
    
    @IBOutlet private weak var customIV: UIImageView!
    
    @IBOutlet private weak var topLabel: UILabel!
    
    @IBOutlet private weak var bottomLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCustomView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCustomView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureCustomView()
    }
    
    
    private func prepareForUI () {
        customIV.backgroundColor = .blue
        topLabel.text = "Top Label"
        bottomLabel.text = "Bottom Label"
        
    }
    
    
    private func configureCustomView () {
        Bundle.main.loadNibNamed(String(describing: CustomView.self), owner: self)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        prepareForUI()
    }

}
