# WHAT     使用该变量 指定单个服务，如 make start WHAT=db
# VERSION  使用该变量 指定项目的版本

compose_dir="compose/"
compose_suffix=".compose.yaml"
project_name="docker-service"
compose_file=$(compose_dir)$(WHAT)$(compose_suffix)

.PHONY: run
run:
	@docker compose -p $(project_name) -f $(compose_file) up $(WHAT) -d

.PHONY: stop
stop:
	@docker compose -p $(project_name) -f $(compose_file) stop $(WHAT)

.PHONY: upgrade
upgrade:
	@docker compose -p $(project_name) -f $(compose_file) up $(WHAT) -d --force-recreate

.PHONY: remove
remove:
	@docker compose -p $(project_name) -f $(compose_file) kill $(WHAT)
	@docker compose -p $(project_name) -f $(compose_file) rm $(WHAT) --force

clean:
	@docker compose -p $(project_name) down