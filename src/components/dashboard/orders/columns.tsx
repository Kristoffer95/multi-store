'use client';

import { ColumnDef } from '@tanstack/react-table';

import { Badge } from '@/components/ui/badge';
import { Checkbox } from '@/components/ui/checkbox';

// import { labels, priorities, statuses } from './data/data';
import { Product } from './data/schema';
import OrdersTableColumnHeader from './orders-table-column-header';
import OrdersTableRowActions from './orders-table-row-actions';

export const columns: ColumnDef<Product>[] = [
  {
    id: 'select',
    header: ({ table }) => (
      <Checkbox
        checked={
          table.getIsAllPageRowsSelected() ||
          (table.getIsSomePageRowsSelected() && 'indeterminate')
        }
        onCheckedChange={(value) => table.toggleAllPageRowsSelected(!!value)}
        aria-label='Select all'
        className='translate-y-[2px]'
      />
    ),
    cell: ({ row }) => (
      <Checkbox
        checked={row.getIsSelected()}
        onCheckedChange={(value) => row.toggleSelected(!!value)}
        aria-label='Select row'
        className='translate-y-[2px]'
      />
    ),
    enableSorting: false,
    enableHiding: false,
  },
  {
    accessorKey: 'id',
    header: ({ column }) => (
      <OrdersTableColumnHeader column={column} title='Order ID' />
    ),
    cell: ({ row }) => <div className='w-[80px]'>{row.getValue('id')}</div>,
    // enableSorting: false,
    // enableHiding: false,
  },
  {
    accessorKey: 'name',
    header: ({ column }) => (
      <OrdersTableColumnHeader column={column} title='Name' />
    ),
    cell: ({ row }) => {
      // const label = labels.find((label) => label.value === row.original.label);

      return (
        <div className='flex space-x-2'>
          Product Name
          {/* {label && <Badge variant='outline'>{label.label}</Badge>} */}
          {/* <span className='max-w-[500px] truncate font-medium'>
            {row.getValue('title')}
          </span> */}
        </div>
      );
    },
  },
  {
    accessorKey: 'orderTime',
    header: ({ column }) => (
      <OrdersTableColumnHeader column={column} title='Order TIme' />
    ),
    cell: ({ row }) => {
      return (
        <div className='flex w-[100px] items-center'>
          {row.getValue('orderTime')}
        </div>
      );
    },
    filterFn: (row, id, value) => {
      return value.includes(row.getValue(id));
    },
  },
  {
    accessorKey: 'orderStatus',
    header: ({ column }) => (
      <OrdersTableColumnHeader column={column} title='Order Status' />
    ),
    cell: ({ row }) => {
      const status: 'in progress' | 'done' | 'cancelled' =
        row.getValue('orderStatus');

      return (
        <div className='flex items-center'>
          {status === 'in progress' && (
            <Badge variant='default'>In Progress</Badge>
          )}

          {status === 'done' && <Badge variant='outline'>Done</Badge>}

          {status === 'cancelled' && (
            <Badge variant='destructive'>Cancelled</Badge>
          )}
        </div>
      );
    },
    filterFn: (row, id, value) => {
      return value.includes(row.getValue(id));
    },
  },
  {
    accessorKey: 'paymentType',
    header: ({ column }) => (
      <OrdersTableColumnHeader column={column} title='Payment Type' />
    ),
    cell: ({ row }) => {
      return (
        <div className='flex items-center'>{row.getValue('paymentType')}</div>
      );
    },
    filterFn: (row, id, value) => {
      return value.includes(row.getValue(id));
    },
  },
  {
    accessorKey: 'paymentStatus',
    header: ({ column }) => (
      <OrdersTableColumnHeader column={column} title='Payment Status' />
    ),
    cell: ({ row }) => {
      return (
        <div className='flex items-center'>{row.getValue('paymentStatus')}</div>
      );
    },
    filterFn: (row, id, value) => {
      return value.includes(row.getValue(id));
    },
  },
  {
    id: 'actions',
    cell: ({ row }) => <OrdersTableRowActions row={row} />,
  },
];
