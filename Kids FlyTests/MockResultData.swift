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
    "id": 11,
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
    "id": 14,
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
    "id": 19,
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
    "id": 20,
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
    "id": 21,
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
    "id": 22,
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
    "id": 23,
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
    "id": 24,
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
    "id": 25,
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
    "id": 26,
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
    "id": 27,
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
    "id": 28,
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
    "id": 29,
    "airport": " Dallas/Fort Worth International Airport",
    "airline": "Delta",
    "flightNumber": "DT3344",
    "departureTime": "24 October, 2019 at ",
    "carryOnBags": 0,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 30,
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
    "id": 31,
    "airport": "JFKs",
    "airline": "Alaskan",
    "flightNumber": "KF202",
    "departureTime": "14:00",
    "carryOnBags": 3,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  },
  {
    "id": 32,
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
    "id": 33,
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
    "id": 34,
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
    "id": 35,
    "airport": "AKL9",
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
    "id": 36,
    "airport": "AKL9",
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
    "id": 37,
    "airport": "123",
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
    "id": 38,
    "airport": "AKL9",
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
    "id": 39,
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
    "id": 40,
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
    "id": 41,
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
    "id": 42,
    "airport": "JFKs",
    "airline": "Alaskan",
    "flightNumber": "KF202",
    "departureTime": "14:02",
    "carryOnBags": 3,
    "checkedBags": 0,
    "children": 3,
    "arrived": false,
    "en_route": false
  }
]
"""
