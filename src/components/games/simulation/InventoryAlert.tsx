'use client';

import { motion, AnimatePresence } from 'framer-motion';

interface InventoryAlertProps {
  inventory: number;
  onOpenSupplierDialog: () => void;
  onDismiss: () => void;
}

export default function InventoryAlert({ inventory, onOpenSupplierDialog, onDismiss }: InventoryAlertProps) {
  return (
    <AnimatePresence>
      <motion.div
        initial={{ x: 300, opacity: 0 }}
        animate={{ x: 0, opacity: 1 }}
        exit={{ x: 300, opacity: 0 }}
        className="fixed top-20 right-4 z-50 bg-yellow-100 dark:bg-yellow-900 border-2 border-yellow-500 rounded-lg shadow-xl p-4 max-w-sm"
      >
        <div className="flex items-start space-x-3">
          <div className="text-4xl">⚠️</div>
          <div className="flex-1">
            <h4 className="font-bold text-yellow-900 dark:text-yellow-100 mb-1">
              Inventario Bajo
            </h4>
            <p className="text-sm text-yellow-800 dark:text-yellow-200 mb-3">
              Solo te quedan {inventory} unidad{inventory !== 1 ? 'es' : ''}. Considera hacer un pedido a tu proveedor.
            </p>
            <div className="flex space-x-2">
              <button
                onClick={onOpenSupplierDialog}
                className="bg-yellow-600 hover:bg-yellow-700 text-white text-sm font-semibold px-3 py-1.5 rounded transition-colors"
              >
                Hacer pedido
              </button>
              <button
                onClick={onDismiss}
                className="bg-gray-300 hover:bg-gray-400 dark:bg-gray-700 dark:hover:bg-gray-600 text-gray-800 dark:text-gray-200 text-sm font-semibold px-3 py-1.5 rounded transition-colors"
              >
                Ignorar
              </button>
            </div>
          </div>
        </div>
      </motion.div>
    </AnimatePresence>
  );
}
