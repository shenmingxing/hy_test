
#Api
make -C  goserver/hygames/app/api/hall/


#mq
make -C  goserver/hygames/app/mq/record/
make -C  goserver/hygames/app/mq/usercenter/


#rpc
make -C  goserver/hygames/app/rpc/act
make -C  goserver/hygames/app/rpc/usercenter
make -C  goserver/hygames/app/rpc/game
make -C  goserver/hygames/app/rpc/datacenter

#task
make -C  goserver/hygames/app/task/record
make -C  goserver/hygames/app/task/dbcreator/


#admin
make -C goserver/hyadmin/app/api/admin
make -C goserver/hyadmin/app/rpc/admin
make -C goserver/hyadmin/app/rpc/stat
make -C goserver/hyadmin/app/task/admin


\cp -rf goserver/hygames/app/api/hall/etc/hall-api-local.yaml cmd/bin/etc
\cp -rf	goserver/hygames/app/mq/record/etc/record-mq-local.yaml cmd/bin/etc
\cp -rf	goserver/hygames/app/mq/usercenter/etc/usercenter-mq-local.yaml  cmd/bin/etc/
\cp -rf	goserver/hygames/app/rpc/act/etc/act-rpc-local.yaml  cmd/bin/etc/
\cp -rf	goserver/hygames/app/rpc/usercenter/etc/usercenter-rpc-local.yaml  cmd/bin/etc/
\cp -rf	goserver/hygames/app/rpc/game/etc/game-rpc-local.yaml  cmd/bin/etc/
\cp -rf	goserver/hygames/app/rpc/datacenter/etc/datacenter-rpc-local.yaml cmd/bin/etc/
\cp -rf	goserver/hygames/app/task/record/etc/record-task-local.yaml cmd/bin/etc/
\cp -rf	goserver/hygames/app/task/dbcreator/etc/dbcreator-task-local.yaml  cmd/bin/etc/
\cp -rf	goserver/hyadmin/app/api/admin/etc/admin-api-local.yaml  cmd/bin/etc/
\cp -rf	goserver/hyadmin/app/rpc/admin/etc/admin-rpc-local.yaml  cmd/bin/etc/
\cp -rf	goserver/hyadmin/app/rpc/stat/etc/stat-rpc-local.yaml cmd/bin/etc/
\cp -rf	goserver/hyadmin/app/task/admin/etc/admin-task-local.yaml cmd/bin/etc/



supervisorctl restart all