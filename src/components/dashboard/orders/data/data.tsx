import {
  ArrowDownIcon,
  ArrowRightIcon,
  ArrowUpIcon,
  CheckCircledIcon,
  CircleIcon,
  CrossCircledIcon,
  PersonIcon,
  QuestionMarkCircledIcon,
  StopwatchIcon,
} from '@radix-ui/react-icons';
import { Bike, CircleCheckBig, CircleX, Wifi } from 'lucide-react';

export const labels = [
  {
    value: 'bug',
    label: 'Bug',
  },
  {
    value: 'feature',
    label: 'Feature',
  },
  {
    value: 'documentation',
    label: 'Documentation',
  },
];

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
    icon: PersonIcon,
  },
];
