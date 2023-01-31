//
//  StructName.swift
//  CollectionsApp
//
//  Created by Nikita Volkodav on 08.01.2023.
//

struct TitlesService {
    
    let titlesVC: [TitleVC] = [TitleVC(title: "Array"),
                               TitleVC(title: "Set"),
                               TitleVC(title: "Dictionary")]
    
    let titlesArrayCell: [TitleArrayCell] = [TitleArrayCell(title:          ArrayOperationsIdentifiers.insert1000BeginningOneBeOne),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.insert1000BeginningAtOnce),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.insert1000MiddleOneBeOne),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.insert1000MiddleAtOnce),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.insert1000EndOneBeOne),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.insert1000EndAtOnce),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.remove1000BeginningOneBeOne),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.remove1000BeginningAtOnce),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.remove1000MiddleOneBeOne ),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.remove1000MiddleAtOnce),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.remove1000EndOneBeOne),
                                             TitleArrayCell(title: ArrayOperationsIdentifiers.remove1000EndAtOnce)]
    
    
    let titlesArrayAndDictionary: [TitleArrayAndDictionary] = [TitleArrayAndDictionary(title: DictionaryOperationsIdentifiers.findFirsContactArray),
                                                               TitleArrayAndDictionary(title: DictionaryOperationsIdentifiers.findFirstContactDictionary),
                                                               TitleArrayAndDictionary(title: DictionaryOperationsIdentifiers.findLastContactArray),
                                                               TitleArrayAndDictionary(title: DictionaryOperationsIdentifiers.findLastContactDictionary),
                                                               TitleArrayAndDictionary(title: DictionaryOperationsIdentifiers.searchNonExistingElementArray),
                                                               TitleArrayAndDictionary(title: DictionaryOperationsIdentifiers.searchNonExistingElementDictionary)]
}
