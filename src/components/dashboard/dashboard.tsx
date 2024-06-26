'use client';

import { usePathname } from 'next/navigation';

import Link from 'next/link';
import {
  Home,
  LineChart,
  Package,
  Package2,
  Settings,
  ShoppingCart,
  Store,
  Users2,
} from 'lucide-react';

import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from '@/components/ui/tooltip';

export function Dashboard({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();

  return (
    <div className='flex min-h-[calc(100vh_-_56px)] w-full flex-col'>
      <aside className='fixed inset-y-0 left-0 z-10 hidden w-14 flex-col border-r bg-background sm:flex'>
        <nav className='flex flex-col items-center gap-4 px-2 py-4'>
          <Link
            href='#'
            className='group flex h-9 w-9 shrink-0 items-center justify-center gap-2 rounded-full bg-primary text-lg font-semibold text-primary-foreground md:h-8 md:w-8 md:text-base'>
            <Package2 className='h-4 w-4 transition-all group-hover:scale-110' />
            <span className='sr-only'>Acme Inc</span>
          </Link>
          <TooltipProvider>
            <Tooltip>
              <TooltipTrigger asChild>
                <Link
                  href='/dashboard'
                  className={`group flex h-9 w-9 items-center justify-center rounded-lg text-accent-foreground transition-colors hover:text-foreground md:h-8 md:w-8 ${
                    pathname === '/dashboard' && 'bg-accent'
                  }`}>
                  <Home className='h-5 w-5  transition-all group-hover:scale-110' />
                  <span className='sr-only'>Dashboard</span>
                </Link>
              </TooltipTrigger>
              <TooltipContent side='right'>Dashboard</TooltipContent>
            </Tooltip>
            <Tooltip>
              <TooltipTrigger asChild>
                <Link
                  href='/dashboard/stores'
                  className={`group flex h-9 w-9 items-center justify-center rounded-lg text-accent-foreground transition-colors hover:text-foreground md:h-8 md:w-8 ${
                    pathname === '/dashboard/stores' && 'bg-accent'
                  }`}>
                  <Store className='h-5 w-5 transition-all group-hover:scale-110' />
                  <span className='sr-only'>Stores</span>
                </Link>
              </TooltipTrigger>
              <TooltipContent side='right'>Stores</TooltipContent>
            </Tooltip>
            <Tooltip>
              <TooltipTrigger asChild>
                <Link
                  href='/dashboard/orders'
                  className={`group flex h-9 w-9 items-center justify-center rounded-lg text-accent-foreground transition-colors hover:text-foreground md:h-8 md:w-8 ${
                    pathname === '/dashboard/orders' && 'bg-accent'
                  }`}>
                  <ShoppingCart className='h-5 w-5 transition-all group-hover:scale-110' />
                  <span className='sr-only'>Orders</span>
                </Link>
              </TooltipTrigger>
              <TooltipContent side='right'>Orders</TooltipContent>
            </Tooltip>
            <Tooltip>
              <TooltipTrigger asChild>
                <Link
                  href='/dashboard/products'
                  className={`group flex h-9 w-9 items-center justify-center rounded-lg text-accent-foreground transition-colors hover:text-foreground md:h-8 md:w-8 ${
                    pathname === '/dashboard/products' && 'bg-accent'
                  }`}>
                  <Package className='h-5 w-5 transition-all group-hover:scale-110' />
                  <span className='sr-only'>Products</span>
                </Link>
              </TooltipTrigger>
              <TooltipContent side='right'>Products</TooltipContent>
            </Tooltip>
            {/* <Tooltip>
              <TooltipTrigger asChild>
                <Link
                  href='#'
                  className={`flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground transition-colors hover:text-foreground md:h-8 md:w-8`}>
                  <Users2 className='h-5 w-5' />
                  <span className='sr-only'>Customers</span>
                </Link>
              </TooltipTrigger>
              <TooltipContent side='right'>Customers</TooltipContent>
            </Tooltip>
            <Tooltip>
              <TooltipTrigger asChild>
                <Link
                  href='#'
                  className='flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground transition-colors hover:text-foreground md:h-8 md:w-8'>
                  <LineChart className='h-5 w-5' />
                  <span className='sr-only'>Analytics</span>
                </Link>
              </TooltipTrigger>
              <TooltipContent side='right'>Analytics</TooltipContent>
            </Tooltip> */}
          </TooltipProvider>
        </nav>
        <nav className='mt-auto flex flex-col items-center gap-4 px-2 py-4'>
          <TooltipProvider>
            <Tooltip>
              <TooltipTrigger asChild>
                <Link
                  href='#'
                  className='flex h-9 w-9 items-center justify-center rounded-lg text-muted-foreground transition-colors hover:text-foreground md:h-8 md:w-8'>
                  <Settings className='h-5 w-5' />
                  <span className='sr-only'>Settings</span>
                </Link>
              </TooltipTrigger>
              <TooltipContent side='right'>Settings</TooltipContent>
            </Tooltip>
          </TooltipProvider>
        </nav>
      </aside>
      <div className='flex flex-col sm:gap-4 sm:py-4 md:ml-8 hd:ml-0'>
        <div className='container'>{children}</div>
      </div>
    </div>
  );
}
