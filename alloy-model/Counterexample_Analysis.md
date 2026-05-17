# Alloy Counterexample Analysis
## Food Delivery System

### Detected Inconsistency

During structural verification, an invalid system state was considered:

An order could exist in both:

- cancelledOrders
- deliveredOrders

This means the same order was cancelled and delivered at the same time.

### Why This Is Incorrect

A cancelled order should never be delivered because cancellation means the order lifecycle has ended.

### Violated Rule

Cancelled orders and delivered orders must be disjoint.

### Correct Constraint

```alloy
fact CancelledCannotBeDelivered {
  no (cancelledOrders & deliveredOrders)
}
