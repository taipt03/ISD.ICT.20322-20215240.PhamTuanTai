# I. Basic flow
    1. Customer selects the products they wish to purchase
    2. The software checks for quantity and display to customer
    3. Customer request for order
    4. The software asks for delivery information
    5. Customer fill in delivery information
    6. The software calculates delivery fees and show the invoice
    7. The software asks customer to pay for the order
    8. Customer pay for order (Use Case Checkout)
# II. Alternate flow
    1. Insufficient product quantity
        1.1. The software notify and ask for update their cart
        1.2. Customer continue to place order (step 3)
    2. Customer request rush order
        2.1. Use Case Request Rush Order
    3. Customer fill in invalid or does not fill in the required fields
        3.1. The software asks for refilling
    4. Customer adjust delivery methods
        4.1. The system direct to step 4
    5. Customer adjust products and quantity to purchase
        5.1. The system direct to step 1
