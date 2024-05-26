import {
  CheckCircledIcon,
  CrossCircledIcon,
  StopwatchIcon,
} from '@radix-ui/react-icons';
import { CircleCheckBig, CircleDollarSign, CircleX, Wifi } from 'lucide-react';

export const orderStatuses = [
  {
    value: 'in progress',
    label: 'In Progress',
    icon: StopwatchIcon,
  },
  {
    value: 'done',
    label: 'Done',
    icon: CheckCircledIcon,
  },
  {
    value: 'cancelled',
    label: 'Cancelled',
    icon: CrossCircledIcon,
  },
];

export const paymentStatuses = [
  {
    label: 'Paid',
    value: 'paid',
    icon: CircleCheckBig,
  },
  {
    label: 'Unpaid',
    value: 'unpaid',
    icon: CircleX,
  },
];

export const paymentTypes = [
  {
    label: 'Online',
    value: 'online',
    icon: Wifi,
  },
  {
    label: 'Cash',
    value: 'cash',
    icon: CircleDollarSign,
  },
];
