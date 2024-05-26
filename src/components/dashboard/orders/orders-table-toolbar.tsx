'use client';

import { Cross2Icon } from '@radix-ui/react-icons';
import { SortingState, Table } from '@tanstack/react-table';

import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import OrdersTableViewOptions from './orders-table-view-options';

import { paymentStatuses, orderStatuses, paymentTypes } from './data/data';
import OrdersTableFacetedFilter from './orders-table-faceted-filter';

interface DataTableToolbarProps<TData> {
  table: Table<TData>;
  sorting: SortingState;
}

export default function OrdersTableToolbar<TData>({
  table,
  sorting,
}: DataTableToolbarProps<TData>) {
  const isFiltered = table.getState().columnFilters.length > 0;
  const isSorted = sorting?.length > 0;

  return (
    <div className='flex items-center justify-between'>
      <div className='flex flex-1 items-center gap-2 flex-wrap'>
        <Input
          placeholder='Filter Orders'
          value={(table.getColumn('name')?.getFilterValue() as string) ?? ''}
          onChange={(event) =>
            table.getColumn('name')?.setFilterValue(event.target.value)
          }
          className='h-8 w-[150px] lg:w-[250px]'
        />
        {table.getColumn('orderStatus') && (
          <OrdersTableFacetedFilter
            column={table.getColumn('orderStatus')}
            title='Order Status'
            options={orderStatuses}
          />
        )}
        {table.getColumn('paymentType') && (
          <OrdersTableFacetedFilter
            column={table.getColumn('paymentType')}
            title='Payment Type'
            options={paymentTypes}
          />
        )}
        {table.getColumn('paymentStatus') && (
          <OrdersTableFacetedFilter
            column={table.getColumn('paymentStatus')}
            title='Payment Status'
            options={paymentStatuses}
          />
        )}
        {isFiltered && (
          <Button
            variant='ghost'
            onClick={() => table.resetColumnFilters()}
            className='h-8 px-2 lg:px-3'>
            Reset Filter
            <Cross2Icon className='ml-2 h-4 w-4' />
          </Button>
        )}
        {isSorted && (
          <Button
            variant='ghost'
            onClick={() => table.resetSorting()}
            className='h-8 px-2 lg:px-3'>
            Reset Sorting
            <Cross2Icon className='ml-2 h-4 w-4' />
          </Button>
        )}
      </div>
      <OrdersTableViewOptions table={table} />
    </div>
  );
}
