//
//  ContentView.swift
//  Restuarant
//
//  Created by Tharsol Ltd on 19/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOn: Bool = false
    @State var stepperValue = 1
    @State var sliderValue: Double = 0
    @State var selectedDate = Date()
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    
    
    @State var inputValue: Double = 0
    @State var resultValue: Double = 0
    
    @State var emailAddress: String = ""
    @State var namam = ""
    @ObservedObject var logoState = LogoStateClass()
    
    @State var isShowLogo: Bool = true
    
    var colors = [Color.red, Color.green]
    var elements = ["Bistro Menu", "Takeaway Menu"]
    
    @State private var offsetValue = CGSize.zero
    
    @State private var amount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    @State private var magAmount = 0.5
    @State private var magFinalAmount = 0.5
    
    var body: some View {
        NavigationView {
//            MenuListView()
            
            VStack {
//                Image("LittleLemon_Logo")
//                    .scaleEffect(magFinalAmount + magAmount)
//                    .gesture(
//                        MagnifyGesture().onChanged({ value in
//                            magAmount = value.magnification
//                        })
//                        .onEnded({ value in
//                            magFinalAmount += magAmount
//                            magAmount = 0
//                        })
//                    )
                /*
                Image("LittleLemon_Logo")
                    .rotationEffect(amount + finalAmount)
                    .gesture(
                        RotationGesture()
                            .onChanged({ value in
                            amount = value
                        })
                            .onEnded({ value in
                                finalAmount += amount
                                amount = .zero
                            })
                    )
                */
                /*
                Image("LittleLemon_Logo")
                    .offset(offsetValue)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                self.offsetValue = value.translation
                            }
                    )
                */
                Text("Little Lemon Restaurant")
                    .onTapGesture {
                        print("Text Tapped")
                    }
                Text("Double Tap")
                    .onTapGesture(count: 2) {
                        print("Double Tapped")
                    }
                
                Text("Long Gesture")
                    .onLongPressGesture {
                        print("Long Press Detected!")
                    }
                Text("Long Press with duration")
                    .onLongPressGesture(minimumDuration: 4, maximumDistance: 6) {
                    print("Long Press Detected!")
                } onPressingChanged: { state in
                    print (state)
                }

                    
                
            }
            
           
            
           /*
            VStack(alignment:.leading) {
                ForEach(elements.indices, id: \.self) { index in
                    NavigationLink {
                        colors[index]
                    } label: {
                        Text(elements[index]).font(.title).foregroundStyle(colors[index])
                    }

                }
//                ReserveDateView()
                
//                VStack (alignment: .center){
//                    Text("Little Lemon").font(.system(size: sliderValue * 2))
//                    Slider(value: $sliderValue, in: 1...10)
//                }
//                VStack (alignment: .leading){
//                    Text("Current Value: \(stepperValue)")
//                    Stepper("Number of guests", value: $stepperValue, in: 1...20) { state in
//                        print(state)
//                    }
//                        
//                }
//                VStack{
//                    Label("Menu", systemImage: "fork.knife")
//                                .labelStyle(.titleAndIcon)
//                    Form {
//                        Section {
//                            DatePicker("Due Date", selection: $selectedDate, in: dateRange, displayedComponents: .date)
//                        }
//                    }
//                }
//                Toggle(isOn: $isOn) {
//                    Text("Notifications")
//                }
//                Button(role: .destructive) {
//                    print("Do Something")
//                } label: {
//                    HStack {
//                        Image(systemName: "trash")
//                        Text("Delete")
//                    }
//                }

                
                //            Text("Hello, World!")
                //                .frame(width: 200, height: 50)
                //                .background(Color.red)
                //                .padding()
                //            Spacer()
                //            HStack(spacing: 10) {
                //                Button("One") {
                //                    
                //                }
                //                Button("Two") {
                //                    
                //                }
                //                Button("Three") {
                //                    
                //                }
                //            }
                //            .frame(width: 200, alignment: .trailingFirstTextBaseline)
                //            .background(Color.gray)
                
                //            ReservationForm()
                
                //            Form {
                //                Label("Lightning", image: "bolt.fill")
                //            }
                //            
                //            Text("Little Lemon Restaurant")
                //                .font(.title2)
                //                .fontWeight(.heavy)
                //                .foregroundStyle(.gray)
                //                .padding([.leading, .trailing], 20)
                //                .padding([.top, .bottom], 8)
                //                .background(Color.black)
                //            
                //            TextField("Email Address", text: $emailAddress, onEditingChanged: { status in
                //                print(status)
                //            })
                //            .onSubmit {
                //                print("Submitted")
                //            }.onChange(of: emailAddress) { oldValue, newValue in
                //                print(oldValue)
                //                print(newValue)
                //            }
                //            .padding(20)
                
                let sophisticatedText = try! AttributedString(markdown: "Sign Up to our Newsletter and get **10%** off your first order")
                
                
                
//                Text(sophisticatedText)
//                    .font(.system(size: 36, weight: .light, design: .serif))
//                    .italic()
//                    .padding(.top , 10)
//                    .background(Color.green)
//                    .fixedSize(horizontal: false, vertical: true)
//                
//                
//                Text("Subscribe Now")
//                    .font(.system(size: 36, weight: .bold, design: .serif))
//                    .italic()
//                    .lineLimit(1)
                
//                MyFirstView()
                //            if isShowLogo {
                //                LittleLemonLogo(bindingVariable: $isShowLogo, logoStateBinding: logoState)
                //            }
                
//                if logoState.isLogoVisible {
//                    LittleLemonLogo(bindingVariable: $isShowLogo, logoStateBinding: logoState)
//                }
                
//                Text("Little Lemon")
            }
            .padding()
            .navigationTitle("Reservation Form")
            .navigationBarTitleDisplayMode(.inline)
           */
        }
    }
}

#Preview {
    ContentView()
}
