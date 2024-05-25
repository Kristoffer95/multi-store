import { auth } from '@/auth';
import { ThemeToggleButton } from './theme-toggle-button';
import Link from 'next/link';

async function Header() {
  const session = await auth();

  return (
    <div className='py-2 md:ml-8 hd:ml-0'>
      <div className='container'>
        <div className='flex items-center justify-between'>
          <div>
            <Link className='text-sm font-medium' href='/'>
              Home
            </Link>
          </div>

          {/* right section */}
          <div className='flex items-center gap-5'>
            <Link className='text-sm font-medium' href='/dashboard'>
              Dashboard
            </Link>
            <Link className='text-sm font-medium' href='/profile'>
              Profile
            </Link>
            {!session && (
              <Link className='text-sm font-medium' href='/api/auth/signin'>
                Login
              </Link>
            )}
            <ThemeToggleButton />
          </div>
        </div>
      </div>
    </div>
  );
}

export default Header;
