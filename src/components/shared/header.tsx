import { signOutAction } from '@/actions/auth';
import LogoutButton from './logout-button';
import { ThemeToggleButton } from './theme-toggle-button';
import Link from 'next/link';
import { getUserAction } from '@/actions/user';

async function Header() {
  const user = await getUserAction();

  return (
    <div className='py-2 md:ml-8 bg-background'>
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

            {user && Object.keys(user).length > 0 ? (
              <LogoutButton
                signOut={async () => {
                  'use server';
                  await signOutAction();
                }}
              />
            ) : (
              <Link className='text-sm font-medium' href='/login'>
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
