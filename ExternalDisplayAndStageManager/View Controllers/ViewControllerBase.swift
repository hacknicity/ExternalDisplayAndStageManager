//
//  ViewControllerBase.swift
//  ExternalDisplayAndStageManager
//
//  Created by Geoff Hackworth on 21/09/2022.
//

import UIKit

class ViewControllerBase: UIViewController {

    @IBOutlet weak var sizeLabel: UILabel!

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        let width = Int(view.bounds.width)
        let height = Int(view.bounds.height)

        sizeLabel.text = """
            Width: \(width)pt
            Height: \(height)pt
            """
    }
}

