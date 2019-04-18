import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    
    // Add one atm
    router.post("api", "atms") { request -> Future<Atm> in
        return try request.content.decode(Atm.self).flatMap(to: Atm.self) { atm in
            return atm.save(on: request)
        }
    }
    
    // Select all atms
    router.get("api", "atms") { request -> Future<[Atm]> in
        return Atm.query(on: request).all()
    }
    
    // Select any one atm
    router.get("api", "atms", Atm.parameter) { request -> Future<Atm> in
        return try request.parameters.next(Atm.self)
    }
    
    // Update any one atm
    router.put("api", "atms", Atm.parameter) { request -> Future<Atm> in
        return try flatMap(to: Atm.self, request.parameters.next(Atm.self), request.content.decode(Atm.self)) { atm, updatedAtm in
            atm.number = updatedAtm.number
            atm.locality = updatedAtm.locality
            atm.nameOfLocality = updatedAtm.nameOfLocality
            atm.street = updatedAtm.street
            atm.nameOfStreet = updatedAtm.nameOfStreet
            atm.house = updatedAtm.house
            atm.numberOfHouse = updatedAtm.numberOfHouse
            atm.building = updatedAtm.building
            atm.latitude = updatedAtm.latitude
            atm.longitude = updatedAtm.longitude
            atm.instalationLocation = updatedAtm.instalationLocation
            atm.workingTime = updatedAtm.workingTime
            atm.type = updatedAtm.type
            atm.isCashInModule = updatedAtm.isCashInModule
            atm.isCashToCard = updatedAtm.isCashToCard
            atm.isCashToPay = updatedAtm.isCashToPay
            atm.accessibility = updatedAtm.accessibility
            atm.isCurrencyExchengeModule = updatedAtm.isCurrencyExchengeModule
            atm.postIndex = updatedAtm.postIndex
            atm.subjectOfFederation = updatedAtm.subjectOfFederation
            atm.nameSubjectOfFederation = updatedAtm.nameSubjectOfFederation
            atm.region = updatedAtm.region
            atm.nameOfRegion = updatedAtm.nameOfRegion
            atm.isSelfCollection = updatedAtm.isSelfCollection
            atm.isLov = updatedAtm.isLov
            
            return atm.save(on: request)
        }
    }
    
    // Delete any one atm
    router.delete("api", "atms", Atm.parameter) { request -> Future<HTTPStatus> in
        return try request.parameters.next(Atm.self).delete(on: request).transform(to: HTTPStatus.noContent)
    }
}
