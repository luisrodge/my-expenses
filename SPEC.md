# Project Specifications

## Overview

A simple mobile that allows a user to take a picture of a receipt and have it analyzed and have the relevant data extracted and persisted. The persisted data can then be presented to the user in a specific screen for better monthly tracking of expenses.

## Specifications

### App (React Native TS)

- Camera screen
  - Ideally, we’d want to have offline support in the event that a user receives a receipt while having no internet access.
- Camera roll picker screen
- Receipts screen (Home)
- Receipt details screen

### API (Lambda Functions)

- POST /receipts
  - Upload input expense document (receipt images) and AnalyzeExpense PrettyPrinter outputs to S3 bucket (maybe?)
    Queue up a background job to use AnalyzeExpense API to analyse and extract the relevant receipt data
    Finally, insert the extracted receipt data into DB
- GET /receipts
- GET /receipts/{id}
- DELETE receipts/{id}

### Relevant extracted data:

- Vendor name
- Total
- Subtotal
- Individual line items [EXPENSE_ROW]
- Dates
- Tax
- IDs
- Address
