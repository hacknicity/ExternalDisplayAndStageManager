//
//  MainViewController.swift
//  ExternalDisplayAndStageManager
//
//  Created by Geoff Hackworth on 21/09/2022.
//

import Combine
import UIKit

final class MainViewController: ViewControllerBase {

    @IBOutlet weak var externalDisplaySwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        Settings.shared.$externalDisplay
            .sink { [weak self] externalDisplay in
                self?.externalDisplaySwitch.setOn(externalDisplay, animated: true)
            }
            .store(in: &cancellables)
    }

    @IBAction func updateExternalDisplay(_ sender: UISwitch) {
        Settings.shared.externalDisplay = sender.isOn
    }

    private var cancellables = Set<AnyCancellable>()
}
