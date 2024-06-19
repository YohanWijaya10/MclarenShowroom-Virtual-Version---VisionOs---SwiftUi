//
//  ImmersiveView.swift
//  Immersive3
//
//  Created by Yohan Wijaya on 27/04/24.
//

import SwiftUI
import RealityKitContent
import RealityKit

struct ImmersiveView: View {
    @State private var playbackController: AudioPlaybackController?

    
    var body: some View {
        RealityView { content in
            
            if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle){
                
                let audioSource = Entity()

                // Configure the audio source to project sound out in a tight beam.
                audioSource.spatialAudio = SpatialAudioComponent(directivity: .beam(focus: 0.75))

                audioSource.position = SIMD3<Float>(x: 3.0, y: 0.0, z: -6) // Example position

                // Change the orientation of the audio source (rotate 180º around the Y axis).
                audioSource.orientation = .init(angle: .pi, axis: [0, 0, 1])

                // Add the audio source to a parent entity, and play a looping sound on it.
                if let audio = try? await AudioFileResource(named: "mclaren",
                                                            configuration: .init(shouldLoop: true)) {
                    scene.addChild(audioSource)
                    audioSource.playAudio(audio).play()
                            }
                content.add(scene)
                
                
            }
        }
    }
    
}


#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
