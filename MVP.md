# MVP

- Creating a store
  - upon registration, requires: store name, store address(optional), owner's name, phone #, home address, username, email
  -
- Create a product
  - upload product images to aws s3
- Payment
  - Paymongo

# TABLES

- products

  - id
  - instance_id [auto_increment]
  - price: number
  - size: string
  - variant: string // temporary
  - created_at

- carts

  - id
  - instance_id [auto_increment]
  - user_id fk[Users]
  - created_at

- cart_items

  - id
  - instance_id [auto_increment]
  - cart_id fk[Cart]
  - product_id fk[Product]

- orders
  - id
  - instance_id [auto_increment]
  - cart_id fk[Cart]
  - created_id
  - total_amount // not sure how to properly set the value here yet. But I think we can use triggers with this
