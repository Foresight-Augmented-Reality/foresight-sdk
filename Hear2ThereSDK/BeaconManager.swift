//
//  BeaconManager.swift
//  HereToThereDemo
//
//  Created by clark rinker on 8/23/24.
//

import Foundation
import CoreLocation
import CoreBluetooth
import EddystoneSDK
import Combine

public class BeaconFinder: NSObject, EddystoneSDK.ScannerDelegate, ObservableObject {
    let scanner = EddystoneSDK.Scanner();
    @Published public var beacons: [Beacon] = [] // Reactive state variable
    
public override init() {
        super.init();
        
        scanner.delegate = self
        
        scanner.startScanning();
    }
    public func didFindBeacon(scanner: EddystoneSDK.Scanner, beacon: Beacon) {
        DispatchQueue.main.async {
            self.beacons.append(beacon)
            self.beacons.sort(by: { $0.rssi < $1.rssi})
        }
    }
    
    public func didLoseBeacon(scanner: EddystoneSDK.Scanner, beacon: Beacon) {
        DispatchQueue.main.async {
            
            guard let index = self.beacons.firstIndex(of: beacon) else {
                return
            }
            self.beacons.remove(at: index)
        }
    }
    
    public func didUpdateBeacon(scanner: EddystoneSDK.Scanner, beacon: Beacon) {
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
    
    public func didUpdateScannerState(scanner: EddystoneSDK.Scanner, state: State) {
        //print("Update Beacon\n");XW
    }
    
    
    
}
