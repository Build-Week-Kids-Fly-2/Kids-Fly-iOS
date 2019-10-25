//
//  MockResultData.swift
//  Kids FlyTests
//
//  Created by Jake Connerly on 10/24/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import Foundation

let validTripJSON = """
[
  {
    "id": 1,
    "airport": "DFW",
    "airline": "Spirit",
    "flightNumber": "DAL200",
    "departureTime": "Monday January 20, 2020, 12:20PM",
    "carryOnBags": 2,
    "checkedBags": 1,
    "children": 2,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 2,
    "airport": "DFW",
    "airline": "Southwest",
    "flightNumber": "DAL200",
    "departureTime": "Monday July 20, 2020, 12:20PM",
    "carryOnBags": 2,
    "checkedBags": 1,
    "children": 2,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 3,
    "airport": "LAX: Los Angeles International Airport",
    "airline": "Southwest",
    "flightNumber": "SW1996",
    "departureTime": "Monday January 28, 2020, 08:20AM",
    "carryOnBags": 2,
    "checkedBags": 1,
    "children": 2,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 4,
    "airport": "ATL: Atlanta International Airport",
    "airline": "American",
    "flightNumber": "AA2034",
    "departureTime": "Saturday March 3, 2020, 11:20AM",
    "carryOnBags": 2,
    "checkedBags": 1,
    "children": 4,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 5,
    "airport": " Denver International Airport",
    "airline": "American",
    "flightNumber": "AA0000",
    "departureTime": "31 October, 2019 at 11:20AM",
    "carryOnBags": 0,
    "checkedBags": 0,
    "children": 4,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 6,
    "airport": " Dallas/Fort Worth International Airport",
    "airline": "American",
    "flightNumber": "AA1111",
    "departureTime": "31 October, 2019 at 11:40AM",
    "carryOnBags": 0,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 7,
    "airport": "JFKs",
    "airline": "Alaskan",
    "flightNumber": "KF202",
    "departureTime": "14:02",
    "carryOnBags": 0,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 8,
    "airport": "JFKs",
    "airline": "Alaskan",
    "flightNumber": "KF202",
    "departureTime": "14:00",
    "carryOnBags": 0,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 9,
    "airport": "JFKs",
    "airline": "Alaskan",
    "flightNumber": "KF202",
    "departureTime": "14:02",
    "carryOnBags": 3,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 10,
    "airport": " Dallas/Fort Worth International Airport",
    "airline": "American",
    "flightNumber": "AA1111",
    "departureTime": "31 October, 2019 at 11:40AM",
    "carryOnBags": 0,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  }
]
""".data(using: .utf8)!
