sig Order {}
sig Rider {}

sig FoodSystem {
  activeOrders: set Order,
  paidOrders: set Order,
  cancelledOrders: set Order,
  deliveredOrders: set Order,
  assignedRider: Order -> lone Rider
}

fact CancelledCannotBeDelivered {
  no (cancelledOrders & deliveredOrders)
}

fact DeliveredMustBePaid {
  deliveredOrders in paidOrders
}

fact RiderOnlyForActiveOrders {
  assignedRider.Rider in activeOrders
}

assert SingleRiderPerOrder {
  all o: Order | lone assignedRider[o]
}

check SingleRiderPerOrder for 5

assert CancelledNotDelivered {
  no (cancelledOrders & deliveredOrders)
}

check CancelledNotDelivered for 5
