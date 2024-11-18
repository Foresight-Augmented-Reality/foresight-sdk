# Hear2There SDK
This repository provides a Swift-based iOS app that detects Bluetooth beacons and buttons, and displays their locations. 

## Building
Repository is built with XCode. Include the HearToThere SDK and Eddystone in your project.

## API
This SDK provides two classes:

* BeaconManager/BeaconFinder: this class provides a list of nearby Eddystone Beacons that are detected by the device. The beacons are sorted by estimated signal strength/
* Hear2ThereAPIManager: this class provides a list of nearby beacons and  buttons along with thier metadata. Use these to corss reference with your locally detected beacons.


## Usage
Initalize these classes where you intend to track our API store

```
var beaconFinder = BeaconFinder()
var hear2ThereApi = Hear2ThereAPIManager()
```

Constructing the beacon finder will start beacon tracking. Interact with the remote API by calling its fetch functions

```
hear2ThereApi.fetchLighthouses()
hear2ThereApi.fetchButtons()
```
