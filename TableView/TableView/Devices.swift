import Foundation

class AppleDevice {
    let name: String
    let description: String
    let systemImageName: String
    var isSelected: Bool
    
    init(name: String, description: String, systemImageName: String, isSelected: Bool = false) {
        self.name = name
        self.description = description
        self.systemImageName = systemImageName
        self.isSelected = isSelected
    }
}

class Devices{
    var allDevices: [AppleDevice] = [
        AppleDevice(name: "iPhone", description: "Apple`s smartphone", systemImageName: "iphone"),
        AppleDevice(name: "Air Pods", description: "Apple`s earbuds", systemImageName: "airpodspro")
    ]
    
    func addDevice(_ device: AppleDevice){
        allDevices.append(device)
    }
    
    func removeDevice(from indexPath: IndexPath) {
        allDevices.remove(at: indexPath.row)
    }
    
    func getDevice(from indexPath: IndexPath) -> AppleDevice {
        allDevices[indexPath.row]
    }

}
