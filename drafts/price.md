I asked to chatgpt about how a price is composed.

We normally have an idea that the price formula is `price = cost + profit`. It's awesome idea, we can increase and decrease the price changing the profit or the cost, we know some products have a high margin, per example, so we can profit big, or we know a healthy way to decrease a price is decreasing the cost, so why not find an innovative way and decreate the cost?, and we have many companies try to find this genius way to make cost cheaper.

Despite this nice ideia to see price, in the real world it's a bit more complex.

The chatgpt tell me, in a simple, but not simplity, way we can determine a price using 10 steps and considerations, that are: 

**1. ** Market Research;
**2. ** Cost Analysis;
**3. ** Pricing Objectives;
**4. ** Pricing Strategies;
**5. ** Competitive Analysis;
**6. ** Value Proposition;
**7. ** Psychological Factors;
**8. ** Regulatory and Legal Considerations;
**9. ** Testing and Optimization;
**10. ** Regular Review and Adaptation;

This is a nice list, and just with one or two subjective considerations, our simple formula goes away.

Each consideration could have a proper article about it, years ago I discovery I love study about pricing.

But I want to focus here, who to create a pricing platform. For that we need to understad a pricing in the same way.








Price is f(x) -> y where x is set of parameters and y is the result of this 


Let's think about the set of parameters as a arbitrary set of parameters that make senses to the bussines.

```
{
    "store_id": "ML931",
    "quantity": 4,
    "item_id": "SK657"
}
```

store_id is the id of the store, each store has your profit ration and the sales commission, 
quantity is the quantity of the item the client want to buy
item_id is the item itself

Let's see the table of charge parameters

| parameter | value | factor | name       | operation      | order |
|-----------|-------|--------|------------|----------------|-------|
| store_id  | ML931 | 1.02   | commission | multiplication | 100   |
| store_id  | CA256 | 1.05   | commission | multiplication | 100   |
| item_id   | SK657 | 2.00   | cost_price | addition       | 0     |
| item_id   | SK487 | 2.00   | cost_price | addition       | 0     |

Let's to merge the charge parameters and the parameters

```
{
    "store_id": [{
        "parameter": "store_id",
        "value": "ML3931",
        "name": "commission",
        "factor": 1.02,
        "operation": "multiplication",
        "order": 100
    }],
    "quantity":  [{
        "parameter": "quantity",
        "value": "4",
        "name": "_quantity",
        "factor": 4,
        "operation": "multiplication",
        "order": 1000
    }],    
    "item_id": [{
        "parameter": "item_id",
        "value": "SK657",
        "name": "cost_price",
        "factor": 2.00,
        "operation": "addition",
        "order": 0
    }]
}

```


((2.00) * 1.02) * 4 = 8,16




```
CREATE TABLE pricing (
  "parameter" varchar(20), 
  "value" varchar(50), 
  "factor" decimal(12,2), 
  "name" text, 
  "operation" varchar(14), 
  "order" int
);
   

CREATE AGGREGATE PRODUCT(DOUBLE PRECISION) (
  SFUNC = float8mul,
  STYPE = FLOAT8
);
   
   
INSERT INTO pricing
    ("parameter", "value", "factor", "name", "operation", "order")
VALUES
    ('store_id', 'ML931', 1.02, 'commission', 'multiplication', 100),
    ('store_id', 'CA256', 1.05, 'commission', 'multiplication', 100),
    ('item_id', 'SK657', 2.00, 'cost_price', 'addition', 0),
    ('item_id', 'SK487', 2.00, 'cost_price', 'addition', 0)
   --, ('item_id', 'SK487', 0.98, 'discount_2percent', 'multiplication', 500)
;


with 
dbData as (
  SELECT *
  FROM pricing p
  WHERE 
   (p.parameter = 'store_id' and p.value = 'CA256')  
   OR (p.parameter = 'item_id' and p.value = 'SK487')
  ORDER BY p.order ASC
),
initialData as (
  SELECT
    'quantity'::text as parameter, 
    '1'::text as value, 
    1.00 as factor, 
    '_quantity'::text as name, 
    'multiplication'::text as operation, 
    1000 as "order"
),
mergedData AS (
  SELECT * FROM initialData 
  UNION
  SELECT * FROM dbData
)


SELECT parameter
  , value
  , operation
  , factor
  , name
  , CASE operation 
  WHEN 'multiplication' THEN PRODUCT(factor) OVER (ORDER BY p.order ASC)
  WHEN 'addition' THEN SUM(factor) OVER (ORDER BY p.order ASC)
  END as price
FROM mergedData p


```
