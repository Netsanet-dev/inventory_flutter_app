enum AppTheme { system, light, dark }

enum LanguageOption { english, amharic }

// ignore: constant_identifier_names
enum Sizes { XS, S, M, L, XL, XXL, XXXL, other }

enum SwapReason { size, color, brand, other }

enum DisposalMethod { recycled, destroyed, donated, soldForScrap, other }

enum ItemCondition { newCondition, used, refurbished, defective, other }

enum DisposalSortField {
  disposalDate,
  itemName,
  totalOriginalItemCost,
  reason,
  createdAt,
  updatedAt,
}

enum SortOrder { ascending, descending }

enum SwapSortField { swapDate, customerName, priceDifference, createdAt }

enum RentalSortField {
  startDate,
  endDate,
  rentalFee,
  customerId,
  createdAt,
  updatedAt,
}

enum ItemColors {
  red,
  blue,
  yellow,
  black,
  white,
  green,
  orange,
  brown,
  grey,
  pink,
  purple,
  silver,
  gold,
  kaki,
  other,
}

enum PurchaseStatus {
  draft, // Purchase order created but not finalized

  ordered, // Purchase order sent to vendor

  received, // Goods received from vendor

  paid, // Payment made for the purchase

  cancelled, // Purchase order cancelled before completion

  returned, // Items returned to vendor after receipt

  completed, // Purchase process fully completed
}

enum AccountType {
  asset, // Represents assets owned by the business

  contraAsset, // Contra accounts reducing asset values (e.g., accumulated depreciation)

  liability, // Obligations owed by the business

  equity, // Owner’s interest in the business

  revenue, // Income from business operations

  income, // Other income not from primary operations (e.g., investment income)

  expense, // Costs incurred in business operations
}

enum PaymentMethod {
  cash, // Payment made in physical currency

  bankTransfer, // Payment via wire or ACH transfer

  check, // Payment by written check

  barter, // Payment through exchange of goods/services

  credit, // Credit

  none,
}

enum RentalStatus {
  active, // Rental agreement currently in effect

  expired, // Rental agreement has ended

  pending, // Rental agreement awaiting confirmation

  cancelled, // Rental agreement terminated before start

  overdue, // Rental payment or return is past due

  returned, // Rented item (e.g., safety shoes) returned

  completed,

  scheduled,
}

enum NormalBalance { debit, credit }

enum PaymentStatus {
  pending, // Transaction or process awaiting completion

  completed, // Transaction or process fully executed

  cancelled, // Transaction or process terminated

  onHold, // Transaction or process paused

  failed, // Transaction or process did not succeed

  refunded, // Transaction reversed with funds returned

  partiallyPaid,
}

enum DisposalReason {
  damaged, // Asset is broken or unusable (e.g., torn safety shoes)

  stolen, // Asset was lost due to theft

  expired, // Asset reached end of usable life (e.g., expired chemicals)

  obsolete, // Asset is outdated or no longer functional (e.g., old machinery)

  sold, // Asset was sold (e.g., old equipment sold to another firm)

  donated, // Asset was given away for no compensation (e.g., donated shoes)

  scrapped, // Asset was dismantled or recycled (e.g., scrapped tools)

  lost, // Asset was misplaced and unrecoverable

  regulatory, // Asset disposed due to legal or compliance requirements

  other, // Miscellaneous reasons not covered above
}

enum TransactionType { sale, purchase, rental, swap, disposal }

enum TaxType {
  salesTax, // Tax on sales of goods/services

  vat, // Value-added tax

  incomeTax, // Tax on business income

  propertyTax, // Tax on owned property

  payrollTax, // Taxes withheld from employee wages

  exciseTax, // Tax on specific goods (e.g., fuel)
}

enum AccountStatus {
  active, // Account is open and usable

  inactive, // Account is not currently in use

  closed, // Account is permanently closed

  frozen, // Account is restricted from transactions

  delinquent, // Account has overdue obligations
}

enum Currency {
  birr, // Ethiopian Birr

  usd, // Dollar

  other, // Other currencies not listed
}

enum CustomerType {
  individual, // Retail customers purchasing for personal use

  corporate, // Businesses purchasing for operational use

  government, // Government entities as customers

  wholesale, // Customers buying in bulk for resale

  other, // Miscellaneous customer types
}

enum ExpenseCategory {
  employeeExpense,
  guardExpense,
  houseRent,
  food,
  transportation,
  goodsTransport,
  festal,
  waste,
  packaging,
  commission,
  militia,
  warehouse,
  other,
}

enum AccountCategory {
  // === General ===
  custom, // Custom user-defined accounts
  // === Assets ===
  cash, // Cash on hand and in bank accounts

  pettyCash, // Small cash amounts for minor expenses

  accountsReceivable, // Amounts owed by customers

  allowanceForDoubtfulAccounts, // Contra-asset for estimated uncollectible receivables

  inventory, // Goods held for sale or production (e.g., safety shoes)

  prepaidExpense, // Expenses paid in advance (e.g., insurance)

  prepaidInsurance, // Insurance premiums paid in advance

  investments, // Stocks, bonds, or other investments

  equipment, // Tangible assets used in operations (e.g., shop tools)

  accumulatedDepreciation, // Contra-asset for equipment depreciation

  buildings, // Owned buildings used in operations (e.g., shop premises)

  land, // Real estate not used in operations

  intangibleAssets, // Patents, trademarks, goodwill

  assetDisposal, // Assets sold or disposed of (e.g., old safety shoes)
  // === Liabilities ===
  accountsPayable, // Amounts owed to suppliers

  accruedLiabilities, // Expenses incurred but not yet paid

  loansPayable, // Long-term loans

  shortTermDebt, // Debt due within one year

  unearnedRevenue, // Revenue received before services/goods delivered

  payrollLiabilities, // Wages, taxes, benefits owed to employees

  salesTaxPayable, // Sales tax collected to be remitted

  incomeTaxPayable, // Income taxes owed

  taxesPayable, // Other taxes owed (e.g., property taxes)

  interestPayable, // Interest accrued on loans or debt

  depositLiability, // Customer deposits for future goods/services (e.g., shoe orders)

  bondsPayable, // Long-term debt from issued bonds
  // === Equity ===
  ownerEquity, // Owner’s investment in the business

  capitalStock, // Shares issued to shareholders

  retainedEarnings, // Accumulated profits not distributed

  dividends, // Distributions to shareholders

  treasuryStock, // Company’s own shares repurchased
  // === Revenue ===
  salesRevenue, // Revenue from goods sold (e.g., safety shoes)

  serviceRevenue, // Revenue from services provided

  rentalIncome, // Income from leasing property
  rentIncome, // Income from renting items (e.g., safety shoes)

  interestIncome, // Income from investments or bank accounts

  generalRevenue, // Catch-all for other revenue

  otherIncome, // Non-operating income (e.g., sale of assets)

  swapIncome, // Income from swapping/bartering items (e.g., trading shoes)

  disposalGain, // Gain from disposing assets

  salesReturns, // Contra-revenue for returned goods (e.g., defective shoes)

  salesDiscounts, // Contra-revenue for discounts given to customers
  // === Expenses ===
  costOfGoodsSold, // Direct costs of goods sold (e.g., shoe production)

  salaryExpense, // Employee wages and salaries

  rentExpense, // Rent for facilities (e.g., shop rent)

  utilitiesExpense, // Electricity, water, internet

  depreciationExpense, // Depreciation of fixed assets

  insuranceExpense, // Insurance premiums

  suppliesExpense, // Office or operational supplies

  advertisingExpense, // Marketing and promotional costs

  repairsAndMaintenance, // Equipment or facility repairs

  shippingExpense, // Shipping costs for inventory (e █

  generalExpense, // Catch-all for other expenses

  interestExpense, // Interest on loans or debt

  taxExpense, // Income or other taxes (non-sales)

  travelExpense, // Business travel costs

  professionalFees, // Legal, accounting, or consulting fees

  badDebtExpense, // Uncollectible accounts receivable

  purchaseReturns, // Contra-expense for returned purchases

  purchaseExpense, // General purchase costs (e.g., procurement fees)

  swapLoss, // Loss from swapping/bartering items (e.g., uneven trades)

  disposalExpense, // Expense when disposing assets (e.g., disposal fees)

  salesReturnExpense, // Costs related to sales returns (e.g., restocking)
}

enum ReportType {
  balanceSheet, // Financial position at a specific date

  incomeStatement, // Profit and loss over a period

  cashFlowStatement, // Cash inflows and outflows over a period

  trialBalance, // Summary of all accounts and balances

  generalLedger, // Detailed transactions for each account

  accountsReceivable, // Outstanding customer invoices

  accountsPayable, // Outstanding supplier bills

  inventoryReport, // Inventory levels and valuation

  salesReport, // Sales performance metrics

  purchaseReport, // Purchase activity and costs

  expenseReport, // Detailed expenses incurred

  taxReport, // Tax liabilities and payments
}

enum ReportFormat {
  pdf, // Portable Document Format

  excel, // Microsoft Excel format

  csv, // Comma-Separated Values format

  html, // HyperText Markup Language format

  json, // JavaScript Object Notation format
}

enum ReportPeriod {
  daily, // Daily report

  weekly, // Weekly report

  monthly, // Monthly report

  quarterly, // Quarterly report

  annually, // Annual report
}

enum ReportStatus {
  draft, // Report is in draft state

  finalized, // Report is completed and finalized

  archived, // Report is archived for future reference

  deleted, // Report is deleted and no longer available
}

enum ReportCategory {
  financial, // Financial reports (e.g., balance sheet, income statement)

  operational, // Operational reports (e.g., inventory, sales)

  compliance, // Compliance reports (e.g., tax, regulatory)

  performance, // Performance reports (e.g., KPIs, metrics)

  custom, // User-defined custom reports
}