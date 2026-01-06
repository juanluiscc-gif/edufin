'use client';

import { motion, AnimatePresence } from 'framer-motion';
import { SUPPLIER_ORDERS } from '@/lib/simulation/inventoryManager';

interface SupplierDialogProps {
  isOpen: boolean;
  currentBalance: number;
  onClose: () => void;
  onOrder: (quantity: 10 | 50 | 100) => void;
}

export default function SupplierDialog({ isOpen, currentBalance, onClose, onOrder }: SupplierDialogProps) {
  if (!isOpen) return null;

  const canAfford = (cost: number) => currentBalance >= cost;

  return (
    <AnimatePresence>
      <motion.div
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        exit={{ opacity: 0 }}
        className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4"
        onClick={onClose}
      >
        <motion.div
          initial={{ scale: 0.9, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          exit={{ scale: 0.9, opacity: 0 }}
          onClick={(e) => e.stopPropagation()}
          className="bg-white dark:bg-gray-800 rounded-lg shadow-2xl max-w-md w-full p-6"
        >
          <div className="flex items-center justify-between mb-4">
            <h3 className="text-2xl font-bold text-gray-900 dark:text-gray-100">
              📦 Pedido a Proveedor
            </h3>
            <button
              onClick={onClose}
              className="text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200 text-2xl"
            >
              ×
            </button>
          </div>

          <p className="text-gray-600 dark:text-gray-400 mb-4">
            Balance actual: <span className="font-bold text-green-600">${currentBalance}</span>
          </p>

          <div className="space-y-3">
            {SUPPLIER_ORDERS.map((order) => {
              const affordable = canAfford(order.cost);
              const pricePerUnit = (order.cost / order.quantity).toFixed(2);

              return (
                <button
                  key={order.quantity}
                  onClick={() => {
                    if (affordable) {
                      onOrder(order.quantity);
                    }
                  }}
                  disabled={!affordable}
                  className={`w-full p-4 rounded-lg border-2 text-left transition-all ${
                    affordable
                      ? 'border-blue-500 hover:bg-blue-50 dark:hover:bg-blue-900 cursor-pointer'
                      : 'border-gray-300 dark:border-gray-600 opacity-50 cursor-not-allowed'
                  }`}
                >
                  <div className="flex justify-between items-start mb-2">
                    <div>
                      <p className="font-bold text-lg text-gray-900 dark:text-gray-100">
                        {order.name}
                      </p>
                      <p className="text-sm text-gray-600 dark:text-gray-400">
                        ${pricePerUnit} por unidad
                      </p>
                    </div>
                    <div className="text-right">
                      <p className="text-2xl font-bold text-blue-600 dark:text-blue-400">
                        ${order.cost}
                      </p>
                    </div>
                  </div>

                  {!affordable && (
                    <p className="text-sm text-red-600 dark:text-red-400 font-semibold">
                      ⚠️ No tienes suficiente dinero
                    </p>
                  )}

                  {affordable && (
                    <p className="text-sm text-green-600 dark:text-green-400 font-semibold">
                      ✓ Disponible
                    </p>
                  )}
                </button>
              );
            })}
          </div>

          <button
            onClick={onClose}
            className="w-full mt-4 bg-gray-300 hover:bg-gray-400 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 font-bold py-2 px-4 rounded transition-colors"
          >
            Cancelar
          </button>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  );
}
