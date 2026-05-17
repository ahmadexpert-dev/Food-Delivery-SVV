# Z Notation Model
## Food Delivery System

### Basic Sets

[USER, ORDER, RIDER, RESTAURANT]

### System State

FoodDeliverySystem
orders : ℙ ORDER
activeOrders : ℙ ORDER
cancelledOrders : ℙ ORDER
deliveredOrders : ℙ ORDER
paidOrders : ℙ ORDER
assignedRider : ORDER ⇸ RIDER

activeOrders ⊆ orders
cancelledOrders ⊆ orders
deliveredOrders ⊆ orders
paidOrders ⊆ orders
cancelledOrders ∩ deliveredOrders = ∅
dom assignedRider ⊆ activeOrders




### System Invariants

#### Invariant 1: Cancelled order cannot be delivered

cancelledOrders ∩ deliveredOrders = ∅

#### Invariant 2: Only active orders can have assigned riders

dom assignedRider ⊆ activeOrders

#### Invariant 3: Delivered orders must be paid

deliveredOrders ⊆ paidOrders




### Operation 1: Place Order

PlaceOrder
Δ FoodDeliverySystem
newOrder? : ORDER

newOrder? ∉ orders

orders' = orders ∪ {newOrder?}
activeOrders' = activeOrders ∪ {newOrder?}
cancelledOrders' = cancelledOrders
deliveredOrders' = deliveredOrders
paidOrders' = paidOrders
assignedRider' = assignedRider

### Operation 2: Confirm Payment

ConfirmPayment
Δ FoodDeliverySystem
o? : ORDER

o? ∈ activeOrders

paidOrders' = paidOrders ∪ {o?}
orders' = orders
activeOrders' = activeOrders
cancelledOrders' = cancelledOrders
deliveredOrders' = deliveredOrders
assignedRider' = assignedRider

### Operation 3: Assign Rider

AssignRider
Δ FoodDeliverySystem
o? : ORDER
r? : RIDER

o? ∈ activeOrders
o? ∈ paidOrders
o? ∉ dom assignedRider

assignedRider' = assignedRider ∪ {o? ↦ r?}
orders' = orders
activeOrders' = activeOrders
cancelledOrders' = cancelledOrders
deliveredOrders' = deliveredOrders
paidOrders' = paidOrders

### Operation 4: Deliver Order

DeliverOrder
Δ FoodDeliverySystem
o? : ORDER

o? ∈ activeOrders
o? ∈ paidOrders
o? ∉ cancelledOrders
o? ∈ dom assignedRider

deliveredOrders' = deliveredOrders ∪ {o?}
activeOrders' = activeOrders \ {o?}
orders' = orders
cancelledOrders' = cancelledOrders
paidOrders' = paidOrders
assignedRider' = assignedRider

### Operation 5: Cancel Order

CancelOrder
Δ FoodDeliverySystem
o? : ORDER

o? ∈ activeOrders
o? ∉ deliveredOrders

cancelledOrders' = cancelledOrders ∪ {o?}
activeOrders' = activeOrders \ {o?}
orders' = orders
deliveredOrders' = deliveredOrders
paidOrders' = paidOrders
assignedRider' = assignedRider \ {o?} ◁ assignedRider



### State Transition Model

Normal order flow:

Customer Login
→ Place Order
→ Confirm Payment
→ Assign Rider
→ Deliver Order

Cancellation flow:

Place Order
→ Cancel Order

Invalid transitions prevented by invariants:

1. Cancelled Order → Delivered Order
2. Delivered Order → Cancelled Order
3. Unpaid Order → Delivered Order
4. Active Order → Multiple Riders
