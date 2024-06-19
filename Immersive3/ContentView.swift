//
//  ContentView.swift
//  Immersive3
//
//  Created by Yohan Wijaya on 27/04/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var enlarge = false
    @State private var isBlinking = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    VStack {
                        RealityView { content in
                            
                        }
                    }
                    .gesture(TapGesture().targetedToAnyEntity().onEnded { _ in
                        enlarge.toggle()
                    })
                    Image("mclaren")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 1000)
                    Image("senna")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -150)
                    
                    HStack{
                        Text("THE McLAREN SENNA IS THE PERSONIFICATION OF McLAREN’S DNA AT ITS MOST EXTREME, CREATING THE PUREST CONNECTION BETWEEN CAR AND DRIVER")
                            .font(.extraLargeTitle)
                            .padding()
                        VStack{
                            Text("It is the fastest track-focused road hypercar we have ever built, and it will set the fastest lap times of any McLaren to date. That is what has driven us to build a track car that is unashamedly without compromise. One that is legalised for road use, but not sanitised to suit it. Nothing else matters but to deliver the most intense driving experience around a circuit. ")
                                .font(.largeTitle)
                                .padding()
                            Text("Inspired by one of McLaren’s greatest racing drivers, the McLaren Senna is utterly dedicated to allowing the driver to be the best they can possibly be.")
                                .font(.largeTitle)
                                .padding()
                        }
                        
                        
                    }
                    HStack{
                        VStack{
                            Image("2")
                                .resizable()
                                .scaledToFit()
                            Text("Peformance")
                                .font(.extraLargeTitle)
                            Text("The McLaren Senna has a single-minded purpose. In the pursuit of the most rewarding and intuitive driving experience, pioneering active aerodynamics generate unprecedented levels of downforce. It is also the lightest vehicle we have built since the iconic F1, with our most powerful road car engine to date. This combination creates a staggering power-to-weight ratio of 668PS-per-tonne (659bhp). It is the most direct and responsive McLaren ever built, surpassing even the McLaren P1™ GTR, to create the purest connection with the driver. The McLaren Senna is a new track benchmark for McLaren. Our fastest track-focused road hypercar.")
                                .font(.largeTitle)
                                .padding()
                        }
                       
                        VStack{
                            Image("3")
                                .resizable()
                                .scaledToFit()
                            Text("Design")
                                .font(.extraLargeTitle)
                            Text("The McLaren Senna is the ultimate distillation of the company’s ‘form follows function’ design mantra. To observe the detailed work that has gone into every aerodynamic element of the McLaren Senna is mesmerising. To experience it all working in unison is truly incredible. The resulting 800kg of downforce in Race mode at significantly less than maximum speed (155mph or 250km/h) is phenomenal, and the McLaren Senna creates, maintains and controls its aerodynamic performance to ensure the driver has the confidence to explore the limits such downforce unlocks.")
                                .font(.largeTitle)
                                .padding()
                        }
                        
                        
                    }
                    HStack{
                        VStack{
                            Image("4")
                                .resizable()
                                .scaledToFit()
                            Text("Inovation")
                                .font(.extraLargeTitle)
                            Text("Kami menganggap McLaren Senna sebagai mobil balap – kami telah merancang dan membangunnya agar dapat tampil maksimal di lintasan. Aerodinamika aktif menjadi pionir, dan visibilitas yang belum pernah terjadi sebelumnya yang dicapai melalui pintu kaca unik memberikan kepercayaan diri total kepada pengemudi. Rekayasa yang menyeluruh dan tanpa rasa takut telah mendorong kami untuk mengevaluasi kembali dan menilai kembali setiap komponen, tidak peduli seberapa kecil atau tidak signifikannya, untuk memaksimalkan kinerja. Kami telah menggunakan serat karbon untuk monocoque, bodi, dan di mana pun kami membutuhkan bobot yang ringan, kokoh, dan kuat – itulah alasan McLaren Senna menjadi kendaraan jalan raya paling ringan dan tercepat yang berfokus pada trek yang pernah dibuat McLaren Automotive.")
                                .font(.largeTitle)
                                .padding()
                        }
                       
                        VStack{
                            Image("5")
                                .resizable()
                                .scaledToFit()
                            Text("Specification")
                                .font(.extraLargeTitle)
                            Text("800PS and 800Nm from a 4.0-litre twin-turbocharged V8, the most powerful internal combustion engine McLaren has ever built. 800kg of downforce made possible by pioneering active aerodynamics. The lightest McLaren since the iconic F1 with dry weight of under 1200kg. A power-to-weight ratio of 668PS-per-tonne (659bhp) that ensures it will set the fastest lap times of any McLaren road car to date. 0-124mph (0-200km/h) in 6.8 seconds and a top speed of 208mph (335km/h). Next-generation carbon ceramic brakes that utilise racing technology. Discover the savage performance of the McLaren Senna.")
                                .font(.largeTitle)
                                .padding()
                        }
                        
                        
                    }
                    
                }
            }
        }
        VStack {
            
            Button {
                Task{
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
               
            } label: {
                Text("See McLaren Senna")
                    .font(.extraLargeTitle)
                    .padding()
                    .foregroundColor(.primary)
                            
                    
            }
            .opacity(isBlinking ? 0.1 : 1.0)
            .buttonStyle(.bordered)
            .onAppear {
                withAnimation(Animation.easeInOut(duration: 1.0).repeatForever()) {
                    isBlinking.toggle()
                }
            }
        }.padding()
    }
    
}

#Preview(windowStyle: .volumetric) {
    ContentView()
}
