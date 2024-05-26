import { promises as fs } from 'fs';
import path from 'path';
import { Metadata } from 'next';
import { z } from 'zod';

import { columns } from '@/components/dashboard/orders/columns';
import { DataTable } from '@/components/dashboard/orders/data-table';
import { taskSchema } from '@/components/dashboard/orders/data/schema';
import {
  Card,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';

export const metadata: Metadata = {
  title: 'Tasks',
  description: 'A task and issue tracker build using Tanstack Table.',
};

// Simulate a database read for tasks.
async function getTasks() {
  const data = await fs.readFile(
    path.join(process.cwd(), 'src/app/dashboard/orders/data/tasks.json')
  );

  const tasks = JSON.parse(data.toString());

  return z.array(taskSchema).parse(tasks);
}

export default async function DashboardOrdersPage() {
  const tasks = await getTasks();

  return (
    <>
      <div className='h-full flex-1 flex-col space-y-8 py-8 flex'>
        <Card className='p-8 pt-2'>
          <CardHeader className='px-0'>
            <CardTitle>Orders</CardTitle>
            <CardDescription>
              Here&apos;s a list of active orders!
            </CardDescription>
          </CardHeader>
          <DataTable data={tasks} columns={columns} />
        </Card>
      </div>
    </>
  );
}
