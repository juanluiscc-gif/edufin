/**
 * Inventory Manager for Scenario-Simulation Game
 * Handles inventory tracking, alerts, and supplier orders
 */

export type InventoryLevel = 'high' | 'medium' | 'low';

export interface SupplierOrder {
  quantity: 10 | 50 | 100;
  cost: number;
  name: string;
}

export const SUPPLIER_ORDERS: SupplierOrder[] = [
  { quantity: 10, cost: 100, name: '10 unidades' },
  { quantity: 50, cost: 150, name: '50 unidades' },
  { quantity: 100, cost: 200, name: '100 unidades' },
];

/**
 * Check inventory level
 */
export function checkInventoryLevel(quantity: number): InventoryLevel {
  if (quantity > 10) return 'high';
  if (quantity >= 3) return 'medium';
  return 'low';
}

/**
 * Should show low inventory alert
 */
export function shouldShowAlert(quantity: number): boolean {
  return quantity <= 2;
}

/**
 * Get cost for supplier order
 */
export function getOrderCost(quantity: 10 | 50 | 100): number {
  const order = SUPPLIER_ORDERS.find((o) => o.quantity === quantity);
  return order?.cost || 0;
}

/**
 * Can afford supplier order
 */
export function canAffordOrder(balance: number, quantity: 10 | 50 | 100): boolean {
  const cost = getOrderCost(quantity);
  return balance >= cost;
}

/**
 * Process supplier order
 */
export function processOrder(
  currentBalance: number,
  currentInventory: number,
  orderQuantity: 10 | 50 | 100
): {
  success: boolean;
  newBalance: number;
  newInventory: number;
  message: string;
} {
  const cost = getOrderCost(orderQuantity);

  if (!canAffordOrder(currentBalance, orderQuantity)) {
    return {
      success: false,
      newBalance: currentBalance,
      newInventory: currentInventory,
      message: `No tienes suficiente dinero. Necesitas $${cost}`,
    };
  }

  return {
    success: true,
    newBalance: currentBalance - cost,
    newInventory: currentInventory + orderQuantity,
    message: `Pedido de ${orderQuantity} unidades realizado. -$${cost}`,
  };
}

/**
 * Calculate profit per unit sold (varies by level)
 */
export function getProfitPerUnit(level: number): number {
  switch (level) {
    case 1:
      return 20; // $20 profit per sale
    case 2:
      return 25;
    case 3:
      return 30;
    case 4:
      return 35;
    default:
      return 20;
  }
}

/**
 * Process a sale
 */
export function processSale(
  currentBalance: number,
  currentInventory: number,
  quantity: number,
  profitPerUnit: number
): {
  success: boolean;
  newBalance: number;
  newInventory: number;
  profit: number;
  message: string;
} {
  if (currentInventory < quantity) {
    return {
      success: false,
      newBalance: currentBalance,
      newInventory: currentInventory,
      profit: 0,
      message: 'No tienes suficiente inventario',
    };
  }

  const profit = quantity * profitPerUnit;

  return {
    success: true,
    newBalance: currentBalance + profit,
    newInventory: currentInventory - quantity,
    profit,
    message: `Venta exitosa: ${quantity} unidad(es). +$${profit}`,
  };
}
