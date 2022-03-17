//
//  ViewController.swift
//  SpacePhoto
//
//  Created by Backup Admin on 3/11/22.
//

import UIKit

@MainActor
class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var copyrightLabel: UILabel!
    
    let photoInfoController = PhotoInfoController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        title = ""
        imageView.image = UIImage(systemName: "photo.on.rectangle")
        descriptionLabel.text = ""
        copyrightLabel.text = ""
    
        Task {
            do {
                let photoInfo = try await
                   photoInfoController.fetchPhotoInfo()
                updateUI(with: photoInfo)
            } catch {
                updateUI(with: error)
            }
        }
    }
    
    func updateUI(with photoInfo: PhotoInfo) {
        Task {
            do {
                let image = try await photoInfoController.fetchImage(from:
                   photoInfo.url)
                title = photoInfo.title
                imageView.image = image
                descriptionLabel.text = photoInfo.description
                copyrightLabel.text = photoInfo.copyright
            } catch {
                updateUI(with: error)
            }
        }
    }
    
    func updateUI(with error: Error) {
        title = "Error Fetching Photo"
        imageView.image = UIImage(systemName: "exclamationmark.octagon")
        descriptionLabel.text = error.localizedDescription
        copyrightLabel.text = ""
    }

}

