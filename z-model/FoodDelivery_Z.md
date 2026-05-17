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
