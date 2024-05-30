# dev
dev:
	npm run dev

dev-https:
	npm run dev:https

prod-start:
	npm run build && npm run start

# docker
up-build:
# docker-compose --env-file .env.local up -d --build
	docker-compose --env-file .env up -d --build

up:
# docker-compose --env-file .env.local up -d
	docker-compose --env-file .env up -d

down:
# docker-compose --env-file .env.local down
	docker-compose --env-file .env down

# storyblok
sb-generate-types:
	npm run storyblok:generate-types

shadcn-add:
	npx shadcn-ui@latest add


# Supabase
generate-supatypes:
	npm run supabase:generate-types

.PHONY: supabase-migrate

# Define the supabase-migrate target with a parameter check
supabase-migrate:
ifndef name
	$(error name is not defined. Usage: make supabase-migrate name=migration_name_here)
endif
	@echo "Running migration with name: $(name)"
	supabase db diff --use-migra -f $(name)