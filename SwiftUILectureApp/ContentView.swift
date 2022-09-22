//
//  ContentView.swift
//  SwiftUILectureApp
//
//  Created by Daniil on 28/5/22.
//

import SwiftUI

struct CounterModel: Identifiable {
	let id = UUID()
	var counter: Int
	var counterName: String
}

final class CounterViewModel: ObservableObject {
	@Published var counterModels = (0...10).map {
		CounterModel(counter: $0, counterName: "Name \($0)")
	}
}

struct ContentView: View {
	
	@ObservedObject
	private var viewModel = CounterViewModel()
	
	var body: some View {
		ForEach($viewModel.counterModels) { $counterModel in
			CounterIncreaser(counter: $counterModel.counter)
		}
	}
}

struct CounterIncreaser: View {
	@Binding var counter: Int
	
	var body: some View {
		Button {
			counter += 1
		} label: {
			Text("Tapped \(counter) раз")
		}
	}
}
