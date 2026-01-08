export const FIRST_NAMES = [
  'Ana', 'Sofía', 'María', 'Carmen', 'Daniela', 'Laura', 'Isabel', 'Valentina', 'Camila', 'Lucía',
  'Luis', 'Pedro', 'Carlos', 'Roberto', 'Martín', 'Juan', 'Miguel', 'José', 'David', 'Jorge'
];

export const LAST_NAMES = [
  'López', 'Ramírez', 'Martínez', 'González', 'Morales', 'Díaz', 'Rodríguez', 'Sánchez', 'Rojas', 'Pérez',
  'García', 'Hernández', 'Flores', 'Torres', 'Vargas', 'Castillo', 'Romero', 'Silva', 'Mendoza', 'Cruz'
];

export const AVATARS_CLIENT = ['👨', '👨‍🦱', '👨‍🦰', '👱‍♂️', '👩', '👩‍🦱', '👩‍🦰', '👱‍♀️', '👵', '👴'];
export const AVATARS_SUPPLIER = ['👨‍💼', '👩‍💼', '🧑‍💼', '👨‍💻', '👩‍💻'];

export function getRandomName(): string {
  const first = FIRST_NAMES[Math.floor(Math.random() * FIRST_NAMES.length)];
  const last = LAST_NAMES[Math.floor(Math.random() * LAST_NAMES.length)];
  return `${first} ${last}`;
}

export function getRandomAvatar(type: 'client' | 'supplier' | 'government'): string {
  const list = type === 'client' ? AVATARS_CLIENT : AVATARS_SUPPLIER;
  return list[Math.floor(Math.random() * list.length)];
}
