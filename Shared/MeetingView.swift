//
//  ContentView.swift
//  Shared
//
//  Created by Robert Brown on 2022-06-07.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        ProgressView(value: 5, total: 15)
        HStack {
            VStack(alignment: .leading) {
                Text("Seconds Elapsed")
                    .font(.caption)
                Label("300", systemImage: "hourglass.bottomhalf.fill")
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("Seconds Remaining")
                    .font(.caption)
                Label("600", systemImage: "hourglass.tophalf.fill")
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time Remaining")
        .accessibilityValue("10 minutes")
        Circle()
            .strokeBorder(lineWidth: 24)
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button(action: {}) {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
