//
//  SampleView.swift
//  MyEggShample
//
//  Created by Jose Alvarez on 12/18/17.
//

import UIKit

public class SampleView: UIView {

    public override init(frame: CGRect) {
        super.init(frame: frame)

        let image = UIImage(named: "testImage", in: Bundle.coStarUIBundle(), compatibleWith: nil)
        let imageView = UIImageView(image: image)

        imageView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
        addSubview(imageView)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
