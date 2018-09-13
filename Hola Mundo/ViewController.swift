//
//  ViewController.swift
//  Hola Mundo
//
//  Created by g888 DIT UPM on 13/9/18.
//  Copyright © 2018 g888 DIT UPM. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    let slider = UISlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateHola(_ sender: UIButton) {
        
        let center = CLLocationCoordinate2D(latitude: 40.6892, longitude: -74.0445)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center:center, span:span)
        mapView.mapType = MKMapType.hybrid
        mapView.setRegion(reg, animated: true)
        
        slider.value = 5.0
    }
    @IBAction func updateMundo(_ sender: UIButton) {
        
        mapView.mapType = MKMapType.satellite
    }
    @IBAction func updateAlpha(_ sender: UISlider) {
        msgLabel.alpha = CGFloat(sender.value)
    }
    
    @IBAction func updateSol(_ sender: UIButton) {
        
        let center = CLLocationCoordinate2D(latitude: 40.4169, longitude: -3.7033)
        let span = MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)
        let reg = MKCoordinateRegion(center:center, span:span)
        
        mapView.setRegion(reg, animated: true)
    }
}

