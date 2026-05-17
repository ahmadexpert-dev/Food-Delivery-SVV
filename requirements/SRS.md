# Software Requirements Specification (SRS)
## Food Delivery System

### 1. Introduction

The Food Delivery System is a software platform that allows customers to place food orders from restaurants and receive deliveries through assigned riders. The system handles order placement, restaurant acceptance, payment confirmation, rider assignment, cancellation, and delivery completion.

This SRS defines the functional and non-functional requirements of the system for the Software Verification and Validation project.

### 2. Purpose

The purpose of this project is to formally verify important system behaviors of a Food Delivery System using Z Notation, VDM, Alloy, and validation techniques.

### 3. Scope

The system focuses on the order lifecycle from order creation to final delivery or cancellation. The project verifies correctness of order states, rider assignment, payment confirmation, and cancellation rules.


### 4. Functional Requirements

FR-1: The customer shall be able to log into the system.

FR-2: The customer shall be able to place a food order.

FR-3: The restaurant shall be able to accept or reject an order.

FR-4: The system shall confirm payment before completing an order.

FR-5: The system shall assign one rider to an accepted order.

FR-6: The rider shall update the order status during delivery.

FR-7: The customer shall be able to cancel an order before it is delivered.

FR-8: The system shall prevent delivery of a cancelled order.

### 5. Non-Functional Requirements

NFR-1: The system shall maintain consistency of order states.

NFR-2: The system shall prevent invalid state transitions.

NFR-3: The system shall validate user input.

NFR-4: The system shall provide secure authentication.

NFR-5: The system shall be reliable and available during order processing.
