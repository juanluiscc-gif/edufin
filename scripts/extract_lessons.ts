
import { PrismaClient } from '@prisma/client';
import { Pool } from '@neondatabase/serverless';
import { PrismaNeon } from '@prisma/adapter-neon';
import { config } from 'dotenv';
import fs from 'fs';

// Load env
config({ path: '.env' });
config({ path: '.env.local' });

const connectionString = process.env.DATABASE_URL;
const pool = new Pool({ connectionString });
const adapter = new PrismaNeon(pool);
const prisma = new PrismaClient({ adapter });

async function main() {
  console.log('Fetching all lessons...');
  const lessons = await prisma.lesson.findMany({
    orderBy: { display_order: 'asc' }
  });
  
  console.log(`Found ${lessons.length} lessons.`);

  let output = "# LISTADO COMPLETO DE LECCIONES EN BASE DE DATOS\n\n";
  output += `Total encontradas: ${lessons.length}\n\n`;

  lessons.forEach(l => {
    output += `## [ID: ${l.id}] ${l.title}\n`;
    output += `**Descripción:** ${l.description}\n`;
    output += `**Nivel:** ${l.difficulty_level} | **Edad:** ${l.age_group} | **Orden:** ${l.display_order}\n\n`;
    output += "### Contenido:\n";
    output += "```markdown\n";
    output += l.content;
    output += "\n```\n";
    output += "---\n\n";
  });

  fs.writeFileSync('ALL_LESSONS_DUMP.md', output);
  console.log('Done! Wrote to ALL_LESSONS_DUMP.md');
}

main()
  .catch((e) => console.error(e))
  .finally(() => prisma.$disconnect());
