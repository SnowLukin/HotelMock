//
//  TouristSection.swift
//  HotelMock
//
//  Created by Snow Lukin on 02.10.2023.
//

import SwiftUI

struct TouristSection: View {
    
    @ObservedObject var viewModel: TouristSectionModel
    
    var body: some View {
        BaseSection {
            header
            if viewModel.showTextFields {
                textFields
                    .padding(.top, 17)
            }
        }
    }
}

extension TouristSection {
    var header: some View {
        HStack {
            TitleView(viewModel.sectionName)
            ChevronButton {
                viewModel.showTextFields.toggle()
            }
        }
    }
    
    var textFields: some View {
        VStack(spacing: 0) {
            TextInputField(
                viewModel.nameTFTitle,
                text: $viewModel.nameTFText
            )
            .padding(.bottom, 8)
            TextInputField(
                viewModel.surnameTFTitle,
                text: $viewModel.surnameTFText
            )
            .padding(.bottom, 8)
            TextInputField(
                viewModel.dateOfBirthTFTitle,
                text: $viewModel.dateOfBirthTFText
            )
            .padding(.bottom, 8)
            TextInputField(
                viewModel.citizenshipTFTitle,
                text: $viewModel.citizenshipTFText
            )
            .padding(.bottom, 8)
            TextInputField(
                viewModel.interPassNumberTFTitle,
                text: $viewModel.interPassNumberTFText
            )
            .padding(.bottom, 8)
            TextInputField(
                viewModel.passValidityDateTFTitle,
                text: $viewModel.passValidityDateTFText
            )
        }
    }
}
