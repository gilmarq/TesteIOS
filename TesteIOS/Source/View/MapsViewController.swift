//
//  MapsViewController.swift
//  TesteIOS
//
//  Created by Gilmar Queiroz on 24/01/22.
//  Copyright © 2022 Gilmar Queiroz. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapsViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    private var logitudo: Double?
    private var latitude: Double?
    private var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        showMaps()
    }

    init(logitudo: Double!, latitude: Double!, name: String ) {
        self.latitude = latitude
        self.logitudo = logitudo
        self.name = name
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func showMaps() {
        guard let longitude = self.logitudo, let latitude = self.latitude  else { return }
        guard let name = self.name else {  return }

        let region = MapsModel(title: name , coordinate: CLLocationCoordinate2D(latitude: latitude, longitude: longitude))

        mapView.addAnnotation(region)
    }
}

extension MapsViewController: MKMapViewDelegate {

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {

        let camera = MKMapCamera()
        camera .centerCoordinate = view.annotation!.coordinate
        camera.pitch = 80
        camera.altitude = 50
        mapView.setCamera(camera, animated: true)

    }
}
