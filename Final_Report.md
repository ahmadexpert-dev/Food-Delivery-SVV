# Software Verification and Validation Project Report
Project: Food Delivery System

## Food Delivery System

### Submitted By

Name: Muhammad Ahmad 103
      Omer Ahmad     091
      Utba Khurshid  145



Course: Software Verification and Validation Lab  


## 1. Introduction

The Food Delivery System is a software system that allows customers to place food orders from restaurants and receive them through assigned riders. The system includes order placement, payment confirmation, rider assignment, order cancellation, and delivery completion.

This project focuses on Software Verification and Validation using formal methods. The system is verified using requirement engineering, Z Notation, VDM specification, Alloy modeling, CI pipeline validation, and security scan documentation.

## 2. Objectives

The main objectives of this project are:

- To define clear software requirements for a Food Delivery System.
- To identify requirement defects such as ambiguity, inconsistency, and non-verifiability.
- To formally model system states using Z Notation.
- To specify operation behavior using VDM preconditions and postconditions.
- To verify relational constraints using Alloy Analyzer.
- To validate the system using checklist, CI pipeline, and security scan.


## 3. Methodology

This project follows the mandatory Software Verification and Validation pipeline:

1. Requirement Engineering
2. Formal Modeling using Z Notation
3. Functional Specification using VDM
4. Structural Verification using Alloy
5. Validation and Security Analysis

Each phase verifies a different part of the Food Delivery System to ensure correctness, consistency, and reliability.

## 4. Tools Used

The following tools were used in this project:

- GitHub for repository management and issue tracking
- GitHub Actions for CI pipeline verification
- Z Editor / CZT for Z Notation modeling
- Overture / VDMTools for VDM specification
- Alloy Analyzer for structural verification
- OWASP ZAP for security scan documentation


## 5. Requirement Engineering

### 5.1 Functional Requirements

- FR-1: Customer shall log into the system.
- FR-2: Customer shall place food orders.
- FR-3: Restaurant shall accept or reject orders.
- FR-4: System shall confirm payment before delivery.
- FR-5: System shall assign one rider to one active order.
- FR-6: Rider shall update order delivery status.
- FR-7: Customer shall cancel active orders.
- FR-8: System shall prevent delivery of cancelled orders.

### 5.2 Non-Functional Requirements

- The system shall maintain consistency of order states.
- The system shall prevent invalid state transitions.
- The system shall validate user input.
- The system shall support secure authentication.
- The system shall ensure reliability during delivery processing.

### 5.3 Requirement Defect Taxonomy

The following defects were identified during requirement analysis:

| Requirement | Defect Type | Description |
|---|---|---|
| FR-3 | Ambiguity | Order rejection timing was not clearly defined |
| FR-4 | Non-Verifiability | Payment confirmation method was unspecified |
| FR-7 | Inconsistency | Cancellation rules after dispatch were unclear |
| FR-5 | Ambiguity | Multiple rider assignment was not restricted |

### 5.4 GitHub Issues Tracking

GitHub Issues were used to track system defects and inconsistencies.

The following issues were created:

- Invalid delivery allowed after cancellation
- Multiple riders assigned to same active order
- Missing payment validation before delivery



## 6. Z Notation Formal Model

Z Notation was used to formally define the state of the Food Delivery System, including orders, active orders, cancelled orders, delivered orders, paid orders, and assigned riders.

### 6.1 System States

The main system states are:

- Active Order
- Paid Order
- Cancelled Order
- Delivered Order
- Rider Assigned Order

### 6.2 Invariants

The following invariants were defined:

1. Cancelled orders and delivered orders must be disjoint.
2. Only active orders can have assigned riders.
3. Delivered orders must be paid before completion.

### 6.3 Operations

The following operations were modeled:

- PlaceOrder
- ConfirmPayment
- AssignRider
- DeliverOrder
- CancelOrder

### 6.4 State Transition

Normal flow:

Customer Login → Place Order → Confirm Payment → Assign Rider → Deliver Order

Cancellation flow:

Place Order → Cancel Order



## 7. VDM Functional Specification

VDM was used to specify operation behavior using preconditions and postconditions.

### 7.1 Preconditions

Preconditions ensure that operations execute only under valid conditions.

Examples:

- An order must exist before payment confirmation.
- An order must be active before rider assignment.
- A cancelled order cannot be delivered.

### 7.2 Postconditions

Postconditions verify the system state after operation execution.

Examples:

- PlaceOrder adds a new order into active orders.
- ConfirmPayment adds the order into paid orders.
- DeliverOrder moves the order into delivered orders.
- CancelOrder removes the order from active orders.

### 7.3 Verified Operations

The following operations were specified and verified:

- PlaceOrder
- ConfirmPayment
- AssignRider
- DeliverOrder
- CancelOrder
