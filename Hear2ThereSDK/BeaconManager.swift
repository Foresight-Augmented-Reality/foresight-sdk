//
//  BeaconManager.swift
//  HereToThereDemo
//
//  Created by clark rinker on 8/23/24.
//

import Foundation
import CoreLocation
import CoreBluetooth
import Combine

public class BeaconFinder: NSObject, ScannerDelegate, ObservableObject {
   
    
    let scanner = Scanner();
    @Published public var beacons: [Beacon] = [] // Reactive state variable
    
    public override init() {
        super.init();
        
        scanner.delegate = self
        
        scanner.startScanning();
    }
    public func didFindBeacon(scanner: Scanner, beacon: Beacon) {
        DispatchQueue.main.async {
            self.beacons.append(beacon)
            self.beacons.sort(by: { $0.rssi < $1.rssi})
        }
    }
    
    public func didLoseBeacon(scanner: Scanner, beacon: Beacon) {
        DispatchQueue.main.async {
            
            guard let index = self.beacons.firstIndex(of: beacon) else {
                return
            }
            self.beacons.remove(at: index)
        }
    }
    
    public func didUpdateBeacon(scanner: Scanner, beacon: Beacon) {
        DispatchQueue.main.async {
            self.objectWillChange.send();
        guard let index = self.beacons.firstIndex(of: beacon) else {
            self.beacons.append(beacon)
            return
        }
        self.beacons[index] = beacon
            
        self.beacons.sort(by: { $0.rssi < $1.rssi})
        }
    }
    
    public func didUpdateScannerState(scanner: Scanner, state: State) {
       
    }
    
    
    
}
