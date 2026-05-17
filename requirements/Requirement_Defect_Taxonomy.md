# Requirement Defect Taxonomy
## Food Delivery System

| Requirement ID | Requirement | Defect Type | Problem | Correction |
|---             |---          |---          |---       |---         |
| FR-3 | Restaurant shall accept or reject an order | Ambiguity | It does not specify when the restaurant can reject an order | Restaurant can reject only before payment confirmation and rider assignment |
| FR-4 | System shall confirm payment before completing an order | Non-Verifiability | Payment confirmation method is not clearly defined | Payment status must be either Pending or Confirmed |
| FR-7 | Customer shall cancel an order before it is delivered | Inconsistency | It does not clearly prevent cancellation after rider dispatch | Cancellation is allowed only before order is out for delivery |
| FR-5 | System shall assign one rider to an accepted order | Ambiguity | It does not say whether multiple riders can be assigned | Each active order must have exactly one rider |
