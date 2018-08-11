//
//  GPXTrack+length.swift
//  OpenGpxTracker
//
//  Created by merlos on 30/09/15.
//

import Foundation
import MapKit

/// Extension to support getting the distance of a track in meters.
extension GPXTrack {
    
    /// Track length in meters
    public var length: CLLocationDistance {
        get {
            var trackLength: CLLocationDistance = 0.0
            for segment in (self.tracksegments as? [GPXTrackSegment])! {
                trackLength += segment.length()
            }
            return trackLength
        }
    }    
}