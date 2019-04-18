import FluentSQLite
import Vapor

final class Atm: Codable {
    var id: Int?
    
    // Номер УС (Устройства Самообслуживания)
    var number: String
    
    // Населенный пункт
    var locality: String
    
    // Название населенного пункта
    var nameOfLocality: String
    
    // Улица
    var street: String
    
    // Название улицы
    var nameOfStreet: String
    
    // Дом
    var house: String?
    
    // Номер дома
    var numberOfHouse: String
    
    // Строение
    var building: Int?
    
    // lat широта
    var latitude: Float
    
    // long долгота
    var longitude: Float
    
    // Подробное место установки
    var instalationLocation: String
    
    // Режим работы
    var workingTime: String
    
    // Тип УС
    var type: String
    
    // Наличие модуля Cash-In
    var isCashInModule: Bool
    
    // Прием наличных на счет карты
    var isCashToCard: Bool
    
    // Прием наличный - оплата услуг
    var isCashToPay: Bool
    
    // Доступность банкомата
    var accessibility: String
    
    // Валютообменный модуль
    var isCurrencyExchengeModule: Bool
    
    // Почтовый индекс
    var postIndex: Int
    
    // Субьект Федерации
    var subjectOfFederation: String?
    
    // Название субьекта федерации
    var nameSubjectOfFederation: String?
    
    // Регион
    var region: String?
    
    // Название региона
    var nameOfRegion: String?
    
    // Самоинкасация
    var isSelfCollection: Bool
    
    // ЛОВ ??
    var isLov: Bool
    
    init(number: String,
         locality: String,
         nameOfLocality: String,
         street: String,
         nameOfStreet: String,
         house: String,
         numberOfHouse: String,
         building: Int? = nil,
         latitude: Float,
         longitude: Float,
         instalationLocation: String,
         workingTime: String,
         type: String,
         isCashInModule: Bool = false,
         isCashToCard: Bool = false,
         isCashToPay: Bool = false,
         accessibility: String,
         isCurrencyExchengeModule: Bool = false,
         postIndex: Int,
         subjectOfFederation: String? = nil,
         nameSubjectOfFederation: String? = nil,
         region: String? = nil,
         nameOfRegion: String? = nil,
         isSelfCollection: Bool = false,
         isLov: Bool = false) {
        self.number = number
        self.locality = locality
        self.nameOfLocality = nameOfLocality
        self.street = street
        self.nameOfStreet = nameOfStreet
        self.house = house
        self.numberOfHouse = numberOfHouse
        self.building = building
        self.latitude = latitude
        self.longitude = longitude
        self.instalationLocation = instalationLocation
        self.workingTime = workingTime
        self.type = type
        self.isCashInModule = isCashInModule
        self.isCashToCard = isCashToCard
        self.isCashToPay = isCashToPay
        self.accessibility = accessibility
        self.isCurrencyExchengeModule = isCurrencyExchengeModule
        self.postIndex = postIndex
        self.subjectOfFederation = subjectOfFederation
        self.nameSubjectOfFederation = nameSubjectOfFederation
        self.region = region
        self.nameOfRegion = nameOfRegion
        self.isSelfCollection = isSelfCollection
        self.isLov = isLov
    }
}

extension Atm: SQLiteModel {}
extension Atm: Migration {}
extension Atm: Parameter {}
extension Atm: Content {}
