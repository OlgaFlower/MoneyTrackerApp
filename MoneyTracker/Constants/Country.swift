//
//  Country.swift
//  MoneyTracker
//
//  Created by Olha Bereziuk on 25.03.24.
//

import Foundation

enum Country: String {
    ///Europe
    case euro = "Euro"
    case albania = "Albania"
    case bosniaHerzegovina = "Bosnia and Herzegovina"
    case bulgaria = "Bulgaria"
    case croatia = "Croatia"
    case czechia = "Czechia"
    case denmark = "Denmark"
    case georgia = "Georgia"
    case greenland = "Greenland"
    case hungary = "Hungary"
    case iceland = "Iceland"
    case liechtenstein = "Liechtenstein"
    case moldova = "Moldova"
    case northMacedonia = "North Macedonia"
    case norway = "Norway"
    case poland = "Poland"
    case romania = "Romania"
    case serbia = "Serbia"
    case sweden = "Sweden"
    case switzerland = "Switzerland"
    case turkey = "Turkey"
    case ukraine = "Ukraine"
    case unitedKingdom = "United Kingdom"
    
    ///America
    case usa = "USA"
    case oecsCountries = "OECS countries"
    case aruba = "Aruba"
    case argentina = "Argentina"
    case bahamas = "The Bahamas"
    case barbados = "Barbados"
    case bermuda = "Bermuda"
    case belize = "Belize"
    case bolivia = "Bolivia"
    case brazil = "Brazil"
    case canada = "Canada"
    case caymanIslands = "Cayman Islands"
    case chile = "Chile"
    case colombia = "Colombia"
    case costaRica = "Costa Rica"
    case cuba = "Cuba"
    case curacao = "Curaçao"
    case dominicanRepublic = "Dominican Republic"
    case falklandIslands = "Falkland Islands"
    case guatemala = "Guatemala"
    case guyana = "Guyana"
    case haiti = "Haiti"
    case honduras = "Honduras"
    case jamaica = "Jamaica"
    case mexico = "Mexico"
    case nicaragua = "Nicaragua"
    case panama = "Panama"
    case paraguay = "Paraguay"
    case peru = "Peru"
    case sintMaarten = "Sint Maarten"
    case suriname = "Suriname"
    case trinidadTobago = "Trinidad and Tobago"
    case uruguay = "Uruguay"
    case venezuela = "Venezuela"
    
    ///Middle East
    case afghanistan = "Afghanistan"
    case armenia = "Armenia"
    case azerbaijan = "Azerbaijan"
    case bahrain = "Bahrain"
    case cyprus = "Cyprus"
    case iraq = "Iraq"
    case iran = "Iran"
    case israel = "Israel"
    case jordan = "Jordan"
    case kuwait = "Kuwait"
    case lebanon = "Lebanon"
    case palestine = "Palestine"
    case syria = "Syria"
    case uae = "UAE"
    case oman = "Oman"
    case qatar = "Qatar"
    case saudiArabia = "Saudi Arabia"
    case yemen = "Yemen"
    /// Africa
    case westAfrica = "West Africa"
    case centralAfrica = "Central Africa"
    case algeria = "Algeria"
    case angola = "Angola"
    case botswana = "Botswana"
    case burundi = "Burundi"
    case caboVerde = "Cabo Verde"
    case comoros = "Comoros"
    case congo = "Democratic Republic of the Congo"
    case djibouti = "Djibouti"
    case egypt = "Egypt"
    case eritrea = "Eritrea"
    case ethiopia = "Ethiopia"
    case eswatini = "Eswatini"
    case gambia = "Gambia"
    case ghana = "Ghana"
    case guinea = "Guinea"
    case kenya = "Kenya"
    case lesotho = "Lesotho"
    case liberia = "Liberia"
    case libya = "Libya"
    case madagascar = "Madagascar"
    case malawi = "Malawi"
    case mauritius = "Mauritius"
    case mauritania = "Mauritania"
    case morocco = "Morocco"
    case mozambique = "Mozambique"
    case namibia = "Namibia"
    case nigeria = "Nigeria"
    case rwanda = "Rwanda"
    case saoTomeAndPrincipe = "Sao Tome and Principe"
    case seychelles = "Seychelles"
    case sierraLeone = "Sierra Leone"
    case somalia = "Somalia"
    case southAfrica = "South Africa"
    case southSudan = "South Sudan"
    case sudan = "Sudan"
    case tanzania = "Tanzania"
    case tunisia = "Tunisia"
    case uganda = "Uganda"
    case zimbabwe = "Zimbabwe"
    ///Asia & The Pacific region
    case australia = "Australia"
    
    var currencySymbol: String {
        switch self {
            ///Europe
        case .euro: return "€"
        case .albania: return "L"
        case .bosniaHerzegovina: return "KM"
        case .bulgaria: return "лв"
        case .croatia: return "kn"
        case .czechia: return "Kč"
        case .denmark: return "kr"
        case .georgia: return "₾"
        case .greenland: return "kr"
        case .hungary: return "ft"
        case .iceland: return "Íkr"
        case .liechtenstein: return "CHF"
        case .moldova: return "L"
        case .northMacedonia: return "ден"
        case .norway: return "kr"
        case .poland: return "zł"
        case .romania: return "lei"
        case .serbia: return "RSD"
        case .sweden: return "kr"
        case .switzerland: return "CHF"
        case .turkey: return "₺"
        case .ukraine: return "₴"
        case .unitedKingdom: return "£"
            ///America
        case .usa: return "$"
        case .oecsCountries: return "$"
        case .aruba: return "ƒ"
        case .argentina: return "$"
        case .bahamas: return "B$"
        case .barbados: return "$"
        case .bermuda: return "$"
        case .belize: return "BZ$"
        case .bolivia: return "Bs"
        case .brazil: return "R$"
        case .canada: return "CA$"
        case .caymanIslands: return "CI$"
        case .chile: return "$"
        case .colombia: return "$"
        case .costaRica: return "₡"
        case .cuba: return "CUC$"
        case .curacao: return "ƒ"
        case .dominicanRepublic: return "RD$"
        case .falklandIslands: return "FK£"
        case .guatemala: return "Q"
        case .guyana: return "G$"
        case .haiti: return "G"
        case .honduras: return "L"
        case .jamaica: return "J$"
        case .mexico: return "$"
        case .nicaragua: return "C$"
        case .panama: return "B/."
        case .paraguay: return "₲"
        case .peru: return "S/."
        case .sintMaarten: return "ƒ"
        case .suriname: return "Sr$"
        case .trinidadTobago: return "TT$"
        case .uruguay: return "$U"
        case .venezuela: return "Bs."
            ///Middle East
        case .afghanistan: return "؋"
        case .armenia: return "դր"
        case .azerbaijan: return "₼"
        case .bahrain: return ".د.ب"
        case .cyprus: return "€"
        case .iraq: return "ع.د"
        case .iran: return "﷼"
        case .israel: return "₪"
        case .jordan: return "ينار"
        case .kuwait: return "ك"
        case .lebanon: return "ل.ل"
        case .palestine: return "₪"
        case .syria: return "£S"
        case .uae: return "AED"
        case .oman: return "ر.ع"
        case .qatar: return "ر.ق"
        case .saudiArabia: return "SR"
        case .yemen: return "﷼"
            ///Africa
        case .westAfrica: return "FCFA"
        case .centralAfrica: return "CFA"
        case .algeria: return "دج"
        case .angola: return "Kz"
        case .botswana: return "P"
        case .burundi: return "FBu"
        case .caboVerde: return "CVE"
        case .comoros: return "CF"
        case .congo: return "FC"
        case .djibouti: return "Fdj"
        case .egypt: return "E£"
        case .eritrea: return "Nkf"
        case .ethiopia: return "Br"
        case .eswatini: return "L"
        case .gambia: return "D"
        case .ghana: return "GH₵"
        case .guinea: return "FG"
        case .kenya: return "KSh"
        case .lesotho: return "L"
        case .liberia: return "LD$"
        case .libya: return "LD"
        case .madagascar: return "Ar"
        case .malawi: return "K"
        case .mauritius: return "Rs"
        case .mauritania: return "UM"
        case .morocco: return "DH"
        case .mozambique: return "MT"
        case .namibia: return "N$"
        case .nigeria: return "₦"
        case .rwanda: return "R₣"
        case .saoTomeAndPrincipe: return "Db"
        case .seychelles: return "SR"
        case .sierraLeone: return "Le"
        case .somalia: return "Sh.So."
        case .southAfrica: return "R"
        case .southSudan: return "SS£"
        case .sudan: return "SDG"
        case .tanzania: return "TSh"
        case .tunisia: return "د.ت"
        case .uganda: return "USh"
        case .zimbabwe: return "$"
            ///Asia & The Pacific region
        case .australia: return "A$"
        }
    }
    
    var currencyCode: String {
        switch self {
            ///Europe
        case .euro: return "EUR"
        case .albania: return "ALL"
        case .bosniaHerzegovina: return "BAM"
        case .bulgaria: return "BGN"
        case .croatia: return "HRK"
        case .czechia: return "CZK"
        case .denmark: return "DKK"
        case .georgia: return "GEL"
        case .greenland: return "DKK"
        case .hungary: return "HUF"
        case .iceland: return "ISK"
        case .liechtenstein: return "CHF"
        case .moldova: return "MDL"
        case .northMacedonia: return "MKD"
        case .norway: return "NOK"
        case .poland: return "PLN"
        case .romania: return "RON"
        case .serbia: return "RSD"
        case .sweden: return "SEK"
        case .switzerland: return "CHF"
        case .turkey: return "TRY"
        case .ukraine: return "UAH"
        case .unitedKingdom: return "GBP"
            ///America
        case .usa: return "USD"
        case .oecsCountries: return "XCD"
        case .aruba: return "AWG"
        case .argentina: return "ARS"
        case .bahamas: return "BSD"
        case .barbados: return "BBD"
        case .bermuda: return "BMD"
        case .belize: return "BZD"
        case .bolivia: return "BOB"
        case .brazil: return "BRL"
        case .canada: return "CAD"
        case .caymanIslands: return "KYD"
        case .chile: return "CLP"
        case .colombia: return "COP"
        case .costaRica: return "CRC"
        case .cuba: return "CUP"
        case .curacao: return "ANG"
        case .dominicanRepublic: return "DOP"
        case .falklandIslands: return "FKP"
        case .guatemala: return "GTQ"
        case .guyana: return "GYD"
        case .haiti: return "HTG"
        case .honduras: return "HNL"
        case .jamaica: return "JMD"
        case .mexico: return "MXN"
        case .nicaragua: return "NIO"
        case .panama: return "PAB"
        case .paraguay: return "PYG"
        case .peru: return "PEN"
        case .sintMaarten: return "ANG"
        case .suriname: return "SRD"
        case .trinidadTobago: return "TTD"
        case .uruguay: return "UYU"
        case .venezuela: return "VED"
            ///Middle East
        case .afghanistan: return "AFN"
        case .armenia: return "AMD"
        case .azerbaijan: return "AZN"
        case .bahrain: return "BHD"
        case .cyprus: return "EUR"
        case .iraq: return "IQD"
        case .iran: return "IRR"
        case .israel: return "ILS"
        case .jordan: return "JOD"
        case .kuwait: return "KWD"
        case .lebanon: return "LBP"
        case .palestine: return "ILS"
        case .syria: return "SYP"
        case .uae: return "AED"
        case .oman: return "OMR"
        case .qatar: return "QAR"
        case .saudiArabia: return "SAR"
        case .yemen: return "YER"
            /// Africa
        case .westAfrica: return "XAF"
        case .centralAfrica: return "XOF"
        case .algeria: return "DZD"
        case .angola: return "AOA"
        case .botswana: return "BWP"
        case .burundi: return "BIF"
        case .caboVerde: return "CVE"
        case .comoros: return "KMF"
        case .congo: return "CDF"
        case .djibouti: return "DJF"
        case .egypt: return "EGP"
        case .eritrea: return "ERN"
        case .ethiopia: return "ETB"
        case .eswatini: return "SZL"
        case .gambia: return "GMD"
        case .ghana: return "GHS"
        case .guinea: return "GNF"
        case .kenya: return "KES"
        case .lesotho: return "LSL"
        case .liberia: return "LRD"
        case .libya: return "LYD"
        case .madagascar: return "MGA"
        case .malawi: return "MWK"
        case .mauritius: return "MUR"
        case .mauritania: return "MRU"
        case .morocco: return "MAD"
        case .mozambique: return "MZN"
        case .namibia: return "NAD"
        case .nigeria: return "NGN"
        case .rwanda: return "RWF"
        case .saoTomeAndPrincipe: return "STN"
        case .seychelles: return "SCR"
        case .sierraLeone: return "SLL"
        case .somalia: return "SOS"
        case .southAfrica: return "ZAR"
        case .southSudan: return "SSP"
        case .sudan: return "SDG"
        case .tanzania: return "TZS"
        case .tunisia: return "TND"
        case .uganda: return "UGX"
        case .zimbabwe: return "USD"
            ///Asia & The Pacific region
        case .australia: return "AUD"
        }
    }
}
