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
