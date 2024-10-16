# Hear to There SDK
This repository provides a Swift-based iOS app that detects Bluetooth beacons and buttons, and displays their locations. 

## Building
Repoisotry is built with XCode. Include the HearToTHereSDK and Eddystone in your project.

## API
This SDK provides two classes:

* BeaconManager/BeaconFinder: this class provides a list of nearby Eddystone Beacons that are detected by the device. The beacons are sorted by estimated signal strength/
* HereToThereAPIManager: this class provides a list of nearby beacons and  buttons along with thier metadata. Use these to corss reference with your locally detected beacons.


## Usage
Initalize these classes where you intend to track our API store

```
var beaconFinder = BeaconFinder()
var hereToThereApi = HereToThereAPIManager()
```

Constructing the beacon finder will start beacon tracking. Interact with the remote API by calling its fetch functions

```
hereToThereApi.fetchLighthouses()
hereToThereApi.fetchButtons()
```