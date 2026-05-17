# Validation Checklist
## Food Delivery System

| Requirement ID | Validation Check | Expected Result | Status |
|---|---|---|---|
| FR-1 | Customer login is verified | Only valid users can log in | Passed |
| FR-2 | Customer places an order | Order is added to active orders | Passed |
| FR-3 | Restaurant accepts/rejects order | Order moves to correct state | Passed |
| FR-4 | Payment is confirmed | Paid order is recorded before delivery | Passed |
| FR-5 | Rider is assigned | Only one rider is assigned to one order | Passed |
| FR-6 | Rider updates status | Order status changes correctly | Passed |
| FR-7 | Customer cancels order | Order moves to cancelled state | Passed |
| FR-8 | Cancelled order delivery is blocked | Cancelled order cannot be delivered | Passed |

## Summary

The validation checklist confirms that the Food Delivery System satisfies the main functional requirements and prevents invalid order state transitions.
