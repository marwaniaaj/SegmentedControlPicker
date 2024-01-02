//
//  PickerStyle.swift
//  SegmentedControlPicker
//
//  Created by Marwa Abou Niaaj on 01/01/2024.
//

import SwiftUI

struct PickerStyle: ViewModifier {
    var isSelected = true
    var selectionColor: Color = .blue

    func body(content: Content) -> some View {
        content
            .foregroundStyle(isSelected ? .white : .black)
            .padding(.horizontal)
            .padding(.vertical, 8)
            .lineLimit(1)
            .clipShape(Capsule())
    }
}

extension View {
    func pickerTextStyle(isSelected: Bool, selectionColor: Color = .blue) -> some View {
        modifier(PickerStyle(isSelected: isSelected, selectionColor: selectionColor))
    }
}
