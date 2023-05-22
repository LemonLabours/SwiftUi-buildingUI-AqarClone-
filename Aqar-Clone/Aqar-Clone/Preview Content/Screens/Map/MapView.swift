import SwiftUI
import MapKit

class LocationManagerDelegate: NSObject, CLLocationManagerDelegate {
    @Binding var userLocation: CLLocation?
    
    init(userLocation: Binding<CLLocation?>) {
        _userLocation = userLocation
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            userLocation = location
            manager.stopUpdatingLocation()
        }
    }
}

struct MapView: View {
    @State private var myRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 24.7136, longitude: 46.6753),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    @State private var userLocation: CLLocation?
    private let locationManager = CLLocationManager()

    var body: some View {
        Map(coordinateRegion: $myRegion, showsUserLocation: true)
            .ignoresSafeArea()
            .onAppear {
                requestLocationPermission()
            }
            .onChange(of: userLocation) { location in
                if let location = location {
                    myRegion = MKCoordinateRegion(center: location.coordinate, span: myRegion.span)
                }
            }
    }

    private func requestLocationPermission() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = LocationManagerDelegate(userLocation: $userLocation)
        locationManager.startUpdatingLocation()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
