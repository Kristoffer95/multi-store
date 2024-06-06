create type "public"."role_types" as enum ('store_owner', 'store_admin', 'store_cashier', 'customer');

create table "public"."cart_products" (
    "id" uuid not null default gen_random_uuid(),
    "instance_id" bigint generated by default as identity not null,
    "cart_id" uuid not null default gen_random_uuid(),
    "product_id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."cart_products" enable row level security;

create table "public"."carts" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "instance_id" bigint not null,
    "profile_id" uuid not null default auth.uid()
);


alter table "public"."carts" enable row level security;

create table "public"."orders" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "instance_id" bigint generated by default as identity not null,
    "cart_id" uuid not null default gen_random_uuid()
);


alter table "public"."orders" enable row level security;

create table "public"."product_prices" (
    "id" uuid not null default gen_random_uuid(),
    "instance_id" bigint generated by default as identity not null,
    "amount" real,
    "created_at" timestamp with time zone not null default now(),
    "product_id" uuid not null default gen_random_uuid()
);


alter table "public"."product_prices" enable row level security;

create table "public"."products" (
    "id" uuid not null default gen_random_uuid(),
    "instance_id" bigint generated by default as identity not null,
    "store_id" uuid default gen_random_uuid(),
    "name" character varying not null,
    "size" character varying not null,
    "variant" character varying not null,
    "quantity" bigint not null default '1'::bigint,
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."products" enable row level security;

create table "public"."profiles" (
    "id" uuid not null default auth.uid(),
    "instance_id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "first_name" character varying not null,
    "last_name" character varying not null,
    "phone_number" character varying not null,
    "username" character varying not null
);


alter table "public"."profiles" enable row level security;

create table "public"."roles" (
    "id" uuid not null default gen_random_uuid(),
    "instance_id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "role" role_types default 'customer'::role_types
);


alter table "public"."roles" enable row level security;

create table "public"."store_profiles" (
    "id" uuid not null default gen_random_uuid(),
    "instance_id" bigint generated by default as identity not null,
    "profile_id" uuid not null,
    "store_id" uuid,
    "created_at" timestamp with time zone not null default now(),
    "role_id" uuid
);


alter table "public"."store_profiles" enable row level security;

create table "public"."stores" (
    "id" uuid not null default gen_random_uuid(),
    "instance_id" bigint generated by default as identity not null,
    "name" character varying not null,
    "address" character varying,
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."stores" enable row level security;

CREATE UNIQUE INDEX cart_products_pkey ON public.cart_products USING btree (id);

CREATE UNIQUE INDEX carts_pkey ON public.carts USING btree (id);

CREATE UNIQUE INDEX orders_cart_id_key ON public.orders USING btree (cart_id);

CREATE UNIQUE INDEX orders_pkey ON public.orders USING btree (id);

CREATE UNIQUE INDEX product_prices_pkey ON public.product_prices USING btree (id);

CREATE UNIQUE INDEX products_pkey ON public.products USING btree (id);

CREATE UNIQUE INDEX profiles_id_key ON public.profiles USING btree (id);

CREATE UNIQUE INDEX profiles_instance_id_key ON public.profiles USING btree (instance_id);

CREATE UNIQUE INDEX profiles_pkey ON public.profiles USING btree (id);

CREATE UNIQUE INDEX profiles_username_key ON public.profiles USING btree (username);

CREATE UNIQUE INDEX store_profile_roles_pkey ON public.roles USING btree (id);

CREATE UNIQUE INDEX store_profiles_pkey ON public.store_profiles USING btree (id);

CREATE UNIQUE INDEX stores_pkey ON public.stores USING btree (id);

alter table "public"."cart_products" add constraint "cart_products_pkey" PRIMARY KEY using index "cart_products_pkey";

alter table "public"."carts" add constraint "carts_pkey" PRIMARY KEY using index "carts_pkey";

alter table "public"."orders" add constraint "orders_pkey" PRIMARY KEY using index "orders_pkey";

alter table "public"."product_prices" add constraint "product_prices_pkey" PRIMARY KEY using index "product_prices_pkey";

alter table "public"."products" add constraint "products_pkey" PRIMARY KEY using index "products_pkey";

alter table "public"."profiles" add constraint "profiles_pkey" PRIMARY KEY using index "profiles_pkey";

alter table "public"."roles" add constraint "store_profile_roles_pkey" PRIMARY KEY using index "store_profile_roles_pkey";

alter table "public"."store_profiles" add constraint "store_profiles_pkey" PRIMARY KEY using index "store_profiles_pkey";

alter table "public"."stores" add constraint "stores_pkey" PRIMARY KEY using index "stores_pkey";

alter table "public"."cart_products" add constraint "cart_products_cart_id_fkey" FOREIGN KEY (cart_id) REFERENCES carts(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."cart_products" validate constraint "cart_products_cart_id_fkey";

alter table "public"."cart_products" add constraint "cart_products_product_id_fkey" FOREIGN KEY (product_id) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."cart_products" validate constraint "cart_products_product_id_fkey";

alter table "public"."carts" add constraint "carts_profile_id_fkey" FOREIGN KEY (profile_id) REFERENCES profiles(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."carts" validate constraint "carts_profile_id_fkey";

alter table "public"."orders" add constraint "orders_cart_id_fkey" FOREIGN KEY (cart_id) REFERENCES carts(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."orders" validate constraint "orders_cart_id_fkey";

alter table "public"."orders" add constraint "orders_cart_id_key" UNIQUE using index "orders_cart_id_key";

alter table "public"."product_prices" add constraint "product_prices_product_id_fkey" FOREIGN KEY (product_id) REFERENCES products(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."product_prices" validate constraint "product_prices_product_id_fkey";

alter table "public"."products" add constraint "products_store_id_fkey" FOREIGN KEY (store_id) REFERENCES stores(id) not valid;

alter table "public"."products" validate constraint "products_store_id_fkey";

alter table "public"."profiles" add constraint "profiles_id_fkey" FOREIGN KEY (id) REFERENCES auth.users(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."profiles" validate constraint "profiles_id_fkey";

alter table "public"."profiles" add constraint "profiles_id_key" UNIQUE using index "profiles_id_key";

alter table "public"."profiles" add constraint "profiles_instance_id_key" UNIQUE using index "profiles_instance_id_key";

alter table "public"."profiles" add constraint "profiles_username_key" UNIQUE using index "profiles_username_key";

alter table "public"."store_profiles" add constraint "store_profiles_profile_id_fkey" FOREIGN KEY (profile_id) REFERENCES profiles(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."store_profiles" validate constraint "store_profiles_profile_id_fkey";

alter table "public"."store_profiles" add constraint "store_profiles_role_id_fkey" FOREIGN KEY (role_id) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."store_profiles" validate constraint "store_profiles_role_id_fkey";

alter table "public"."store_profiles" add constraint "store_profiles_store_id_fkey" FOREIGN KEY (store_id) REFERENCES stores(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."store_profiles" validate constraint "store_profiles_store_id_fkey";

grant delete on table "public"."cart_products" to "anon";

grant insert on table "public"."cart_products" to "anon";

grant references on table "public"."cart_products" to "anon";

grant select on table "public"."cart_products" to "anon";

grant trigger on table "public"."cart_products" to "anon";

grant truncate on table "public"."cart_products" to "anon";

grant update on table "public"."cart_products" to "anon";

grant delete on table "public"."cart_products" to "authenticated";

grant insert on table "public"."cart_products" to "authenticated";

grant references on table "public"."cart_products" to "authenticated";

grant select on table "public"."cart_products" to "authenticated";

grant trigger on table "public"."cart_products" to "authenticated";

grant truncate on table "public"."cart_products" to "authenticated";

grant update on table "public"."cart_products" to "authenticated";

grant delete on table "public"."cart_products" to "service_role";

grant insert on table "public"."cart_products" to "service_role";

grant references on table "public"."cart_products" to "service_role";

grant select on table "public"."cart_products" to "service_role";

grant trigger on table "public"."cart_products" to "service_role";

grant truncate on table "public"."cart_products" to "service_role";

grant update on table "public"."cart_products" to "service_role";

grant delete on table "public"."carts" to "anon";

grant insert on table "public"."carts" to "anon";

grant references on table "public"."carts" to "anon";

grant select on table "public"."carts" to "anon";

grant trigger on table "public"."carts" to "anon";

grant truncate on table "public"."carts" to "anon";

grant update on table "public"."carts" to "anon";

grant delete on table "public"."carts" to "authenticated";

grant insert on table "public"."carts" to "authenticated";

grant references on table "public"."carts" to "authenticated";

grant select on table "public"."carts" to "authenticated";

grant trigger on table "public"."carts" to "authenticated";

grant truncate on table "public"."carts" to "authenticated";

grant update on table "public"."carts" to "authenticated";

grant delete on table "public"."carts" to "service_role";

grant insert on table "public"."carts" to "service_role";

grant references on table "public"."carts" to "service_role";

grant select on table "public"."carts" to "service_role";

grant trigger on table "public"."carts" to "service_role";

grant truncate on table "public"."carts" to "service_role";

grant update on table "public"."carts" to "service_role";

grant delete on table "public"."orders" to "anon";

grant insert on table "public"."orders" to "anon";

grant references on table "public"."orders" to "anon";

grant select on table "public"."orders" to "anon";

grant trigger on table "public"."orders" to "anon";

grant truncate on table "public"."orders" to "anon";

grant update on table "public"."orders" to "anon";

grant delete on table "public"."orders" to "authenticated";

grant insert on table "public"."orders" to "authenticated";

grant references on table "public"."orders" to "authenticated";

grant select on table "public"."orders" to "authenticated";

grant trigger on table "public"."orders" to "authenticated";

grant truncate on table "public"."orders" to "authenticated";

grant update on table "public"."orders" to "authenticated";

grant delete on table "public"."orders" to "service_role";

grant insert on table "public"."orders" to "service_role";

grant references on table "public"."orders" to "service_role";

grant select on table "public"."orders" to "service_role";

grant trigger on table "public"."orders" to "service_role";

grant truncate on table "public"."orders" to "service_role";

grant update on table "public"."orders" to "service_role";

grant delete on table "public"."product_prices" to "anon";

grant insert on table "public"."product_prices" to "anon";

grant references on table "public"."product_prices" to "anon";

grant select on table "public"."product_prices" to "anon";

grant trigger on table "public"."product_prices" to "anon";

grant truncate on table "public"."product_prices" to "anon";

grant update on table "public"."product_prices" to "anon";

grant delete on table "public"."product_prices" to "authenticated";

grant insert on table "public"."product_prices" to "authenticated";

grant references on table "public"."product_prices" to "authenticated";

grant select on table "public"."product_prices" to "authenticated";

grant trigger on table "public"."product_prices" to "authenticated";

grant truncate on table "public"."product_prices" to "authenticated";

grant update on table "public"."product_prices" to "authenticated";

grant delete on table "public"."product_prices" to "service_role";

grant insert on table "public"."product_prices" to "service_role";

grant references on table "public"."product_prices" to "service_role";

grant select on table "public"."product_prices" to "service_role";

grant trigger on table "public"."product_prices" to "service_role";

grant truncate on table "public"."product_prices" to "service_role";

grant update on table "public"."product_prices" to "service_role";

grant delete on table "public"."products" to "anon";

grant insert on table "public"."products" to "anon";

grant references on table "public"."products" to "anon";

grant select on table "public"."products" to "anon";

grant trigger on table "public"."products" to "anon";

grant truncate on table "public"."products" to "anon";

grant update on table "public"."products" to "anon";

grant delete on table "public"."products" to "authenticated";

grant insert on table "public"."products" to "authenticated";

grant references on table "public"."products" to "authenticated";

grant select on table "public"."products" to "authenticated";

grant trigger on table "public"."products" to "authenticated";

grant truncate on table "public"."products" to "authenticated";

grant update on table "public"."products" to "authenticated";

grant delete on table "public"."products" to "service_role";

grant insert on table "public"."products" to "service_role";

grant references on table "public"."products" to "service_role";

grant select on table "public"."products" to "service_role";

grant trigger on table "public"."products" to "service_role";

grant truncate on table "public"."products" to "service_role";

grant update on table "public"."products" to "service_role";

grant delete on table "public"."profiles" to "anon";

grant insert on table "public"."profiles" to "anon";

grant references on table "public"."profiles" to "anon";

grant select on table "public"."profiles" to "anon";

grant trigger on table "public"."profiles" to "anon";

grant truncate on table "public"."profiles" to "anon";

grant update on table "public"."profiles" to "anon";

grant delete on table "public"."profiles" to "authenticated";

grant insert on table "public"."profiles" to "authenticated";

grant references on table "public"."profiles" to "authenticated";

grant select on table "public"."profiles" to "authenticated";

grant trigger on table "public"."profiles" to "authenticated";

grant truncate on table "public"."profiles" to "authenticated";

grant update on table "public"."profiles" to "authenticated";

grant delete on table "public"."profiles" to "service_role";

grant insert on table "public"."profiles" to "service_role";

grant references on table "public"."profiles" to "service_role";

grant select on table "public"."profiles" to "service_role";

grant trigger on table "public"."profiles" to "service_role";

grant truncate on table "public"."profiles" to "service_role";

grant update on table "public"."profiles" to "service_role";

grant delete on table "public"."roles" to "anon";

grant insert on table "public"."roles" to "anon";

grant references on table "public"."roles" to "anon";

grant select on table "public"."roles" to "anon";

grant trigger on table "public"."roles" to "anon";

grant truncate on table "public"."roles" to "anon";

grant update on table "public"."roles" to "anon";

grant delete on table "public"."roles" to "authenticated";

grant insert on table "public"."roles" to "authenticated";

grant references on table "public"."roles" to "authenticated";

grant select on table "public"."roles" to "authenticated";

grant trigger on table "public"."roles" to "authenticated";

grant truncate on table "public"."roles" to "authenticated";

grant update on table "public"."roles" to "authenticated";

grant delete on table "public"."roles" to "service_role";

grant insert on table "public"."roles" to "service_role";

grant references on table "public"."roles" to "service_role";

grant select on table "public"."roles" to "service_role";

grant trigger on table "public"."roles" to "service_role";

grant truncate on table "public"."roles" to "service_role";

grant update on table "public"."roles" to "service_role";

grant delete on table "public"."store_profiles" to "anon";

grant insert on table "public"."store_profiles" to "anon";

grant references on table "public"."store_profiles" to "anon";

grant select on table "public"."store_profiles" to "anon";

grant trigger on table "public"."store_profiles" to "anon";

grant truncate on table "public"."store_profiles" to "anon";

grant update on table "public"."store_profiles" to "anon";

grant delete on table "public"."store_profiles" to "authenticated";

grant insert on table "public"."store_profiles" to "authenticated";

grant references on table "public"."store_profiles" to "authenticated";

grant select on table "public"."store_profiles" to "authenticated";

grant trigger on table "public"."store_profiles" to "authenticated";

grant truncate on table "public"."store_profiles" to "authenticated";

grant update on table "public"."store_profiles" to "authenticated";

grant delete on table "public"."store_profiles" to "service_role";

grant insert on table "public"."store_profiles" to "service_role";

grant references on table "public"."store_profiles" to "service_role";

grant select on table "public"."store_profiles" to "service_role";

grant trigger on table "public"."store_profiles" to "service_role";

grant truncate on table "public"."store_profiles" to "service_role";

grant update on table "public"."store_profiles" to "service_role";

grant delete on table "public"."stores" to "anon";

grant insert on table "public"."stores" to "anon";

grant references on table "public"."stores" to "anon";

grant select on table "public"."stores" to "anon";

grant trigger on table "public"."stores" to "anon";

grant truncate on table "public"."stores" to "anon";

grant update on table "public"."stores" to "anon";

grant delete on table "public"."stores" to "authenticated";

grant insert on table "public"."stores" to "authenticated";

grant references on table "public"."stores" to "authenticated";

grant select on table "public"."stores" to "authenticated";

grant trigger on table "public"."stores" to "authenticated";

grant truncate on table "public"."stores" to "authenticated";

grant update on table "public"."stores" to "authenticated";

grant delete on table "public"."stores" to "service_role";

grant insert on table "public"."stores" to "service_role";

grant references on table "public"."stores" to "service_role";

grant select on table "public"."stores" to "service_role";

grant trigger on table "public"."stores" to "service_role";

grant truncate on table "public"."stores" to "service_role";

grant update on table "public"."stores" to "service_role";

create policy "Enable read access for all users"
on "public"."products"
as permissive
for select
to authenticated
using (true);


create policy "Allow SELECT if profile belongs to store"
on "public"."profiles"
as permissive
for select
to authenticated
using ((EXISTS ( SELECT 1
   FROM (stores s
     JOIN store_profiles sp ON ((sp.store_id = s.id)))
  WHERE (sp.profile_id = auth.uid()))));


create policy "Allow SELECT if profile belongs to the authenticated user"
on "public"."profiles"
as permissive
for select
to authenticated
using ((auth.uid() = id));


create policy "Enable read access for all users"
on "public"."roles"
as permissive
for select
to public
using (true);


create policy "Enable read access for all users"
on "public"."store_profiles"
as permissive
for select
to authenticated
using (true);


create policy "Enable read access for all users"
on "public"."stores"
as permissive
for select
to public
using (true);


